import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.Vector;

import net.sf.javabdd.BDD;
import net.sf.javabdd.BDDFactory;

public class Action {
	private String name;
	private BDD precondition;
	private BDD effect;
	
	/*For PropPlan Regression */
	private BDD change = null;
	private Vector<String> changeSet;
	private Vector<Integer> changeSetInt;
	//private Hashtable<Integer, Integer> changeSetHash = new Hashtable<Integer, Integer>();
	
	/*For Ritanen's regression */
	private Vector<BDD> effectVec = new Vector<BDD>();
	Hashtable<Integer,BDD> epcPTable = new Hashtable<Integer, BDD>();
	Hashtable<Integer,BDD> epcnotPTable = new Hashtable<Integer, BDD>();
	Hashtable<Integer,String> varTable;
	Hashtable<String,Integer> varTable2;
	//long timeEpc = 0;
	
	/*** Constructor ***/
	public Action(String actionName, String preCond, String eff, BDDCreator cre, String pType) {
		//System.out.println(actionName);
		//System.out.println(preCond);
		//System.out.println(eff);
		
		varTable = cre.getVarTable2();
		varTable2 = cre.getVarTable();

		name = actionName;
		
		//System.out.println("precond " + preCond);
		precondition = cre.createAndBdd(preCond);
		//precondition.printSet();
		//System.out.println("precondition: " + precondition);
		
		effect = cre.createAndBdd(eff);
		changeSet = createChangeSet(eff);
		//precondition.printSet();
		//effect.printSet();
		
		if(pType.equals("ritanen")) { //computes epc
			effectVec = cre.createBddVector(eff);
			fillEpcTable();		
		} else if(pType.equals("propplan")) { //compute change set	
			for(String s : changeSet) {
				if(change == null) {
					change = cre.createAndBdd(s);
				} else {
					change.andWith(cre.createAndBdd(s));
				}
			}
		}
	}
	
	/**Creates the change set which is the union of all propositions involved in the effect list, without negation**/
	public Vector<String> createChangeSet(String eff){
		StringTokenizer tknEff = new StringTokenizer(eff, ",");
		int effNum = tknEff.countTokens();
		String tknPiece;
		
		Vector<String> changeSet = new Vector<String>(effNum);
		
		/* Adding the effect propositions in the change set*/
		for(int i = 0; i < effNum; i++) {
			tknPiece = tknEff.nextToken();
			if(tknPiece.startsWith("~")){
				tknPiece = tknPiece.substring(1); // deletes the signal ~
			}
			if(changeSet.contains(tknPiece) == false){
				changeSet.add(tknPiece);
			}	
		}
		
		return changeSet;
	}
	
	
	public Vector<Integer> createChangeSetInt(Vector<String> changeSet){
		Vector<Integer> changeSetInt = new Vector<Integer>();
		Integer elementInt;
		for (String str : changeSet) {
			elementInt = varTable2.get(str);
			changeSetInt.add(elementInt);
		}
		return changeSetInt;		
	}
	
	/* The condition (E) is defined for each action and proposition */
	public void fillEpcTable(){
		BDDFactory factory = precondition.getFactory();
		BDD epcP;
		BDD epcNotP;
		BDD prop;
		BDD negprop;	
		
		/*For each propositional value, computes the EPC.*/
		for(int i = 0; i < varTable.size(); i++){		
			//BDD for proposition
			prop = factory.ithVar(i);
			//BDD for negation of the proposition
			negprop = factory.nithVar(i);
		
			epcP = epc(prop);
			epcNotP = epc(negprop);
			
			epcPTable.put(i, epcP); //Table with trueBdd (<>) or falseBdd ("")
			epcnotPTable.put(i,epcNotP);
		}
	}
		
	public Hashtable<Integer, BDD> getEpcnotPTable() {
		return epcnotPTable;
	}
	
	public Hashtable<Integer, BDD> getEpcPTable() {
		return epcPTable;
	}
		
	/*  EPC_literal for an action effect. 
	 *  Verifies if the effect is a literal or if the effect is a conjunction. */
	public BDD epc(BDD literal){
		Vector<BDD> effectVec = this.effectVec;
		if(effectVec.size() == 1){
			return epc(literal,effectVec.firstElement());
		}else{
			return epc(literal, effectVec);
		}
	}
		
	/* EPC_literal(effect) when the effect is a literal */
	public BDD epc(BDD literal, BDD effect){	
		BDD trueBdd = effect.getFactory().one(); //bdd_true <>
		BDD falseBdd = effect.getFactory().zero(); //bdd_false ""
		
		if(literal.equals(effect)){
			return trueBdd;
		}else{
			return falseBdd;
		}
	}		
	
	/* EPC_literal(effect) when the effect is a conjunction */
	public BDD epc(BDD literal, Vector<BDD> effect){
		BDD result = null;
		for (BDD e : effect) {
			if(result == null){
				result = epc(literal,e);
			}
			else{
				result.orWith(epc(literal,e));
			}
		}
		return result;	
	}
		
	public String getName() {
		return name;
	}
	
	public BDD getChange() {
		return change;
	}
	
	public BDD getPrecondition() {
		return precondition;
	}
	
	public BDD getEffect() {
		return effect;
	}
	
	public Vector<BDD> getEffectVec() {
		return effectVec;
	}
	
	public Vector<Integer> getChangeSetInt() {
		return changeSetInt;
	}
}