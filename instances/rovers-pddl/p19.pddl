
(define (problem roverprob8327)
        (:domain rover)
        (:objects general - lander colour - mode high_res - mode low_res - mode
         rover0 - rover rover1 - rover rover2 - rover rover3 - rover rover4 -
         rover rover5 - rover rover0store - store rover1store - store
         rover2store - store rover3store - store rover4store - store
         rover5store - store waypoint0 - waypoint waypoint1 - waypoint
         waypoint2 - waypoint waypoint3 - waypoint waypoint4 - waypoint
         waypoint5 - waypoint waypoint6 - waypoint waypoint7 - waypoint
         waypoint8 - waypoint waypoint9 - waypoint waypoint10 - waypoint
         waypoint11 - waypoint waypoint12 - waypoint waypoint13 - waypoint
         waypoint14 - waypoint waypoint15 - waypoint waypoint16 - waypoint
         waypoint17 - waypoint waypoint18 - waypoint waypoint19 - waypoint
         camera0 - camera camera1 - camera camera2 - camera camera3 - camera
         camera4 - camera camera5 - camera camera6 - camera objective0 -
         objective objective1 - objective objective2 - objective objective3 -
         objective objective4 - objective objective5 - objective objective6 -
         objective objective7 - objective)
        (:init (visible waypoint0 waypoint6) (visible waypoint6 waypoint0)
         (visible waypoint0 waypoint7) (visible waypoint7 waypoint0)
         (visible waypoint0 waypoint18) (visible waypoint18 waypoint0)
         (visible waypoint1 waypoint11) (visible waypoint11 waypoint1)
         (visible waypoint2 waypoint0) (visible waypoint0 waypoint2)
         (visible waypoint2 waypoint5) (visible waypoint5 waypoint2)
         (visible waypoint2 waypoint7) (visible waypoint7 waypoint2)
         (visible waypoint2 waypoint10) (visible waypoint10 waypoint2)
         (visible waypoint2 waypoint18) (visible waypoint18 waypoint2)
         (visible waypoint2 waypoint19) (visible waypoint19 waypoint2)
         (visible waypoint3 waypoint2) (visible waypoint2 waypoint3)
         (visible waypoint3 waypoint9) (visible waypoint9 waypoint3)
         (visible waypoint3 waypoint10) (visible waypoint10 waypoint3)
         (visible waypoint3 waypoint14) (visible waypoint14 waypoint3)
         (visible waypoint4 waypoint1) (visible waypoint1 waypoint4)
         (visible waypoint4 waypoint2) (visible waypoint2 waypoint4)
         (visible waypoint4 waypoint3) (visible waypoint3 waypoint4)
         (visible waypoint4 waypoint9) (visible waypoint9 waypoint4)
         (visible waypoint4 waypoint12) (visible waypoint12 waypoint4)
         (visible waypoint4 waypoint17) (visible waypoint17 waypoint4)
         (visible waypoint5 waypoint0) (visible waypoint0 waypoint5)
         (visible waypoint5 waypoint3) (visible waypoint3 waypoint5)
         (visible waypoint5 waypoint13) (visible waypoint13 waypoint5)
         (visible waypoint5 waypoint15) (visible waypoint15 waypoint5)
         (visible waypoint5 waypoint16) (visible waypoint16 waypoint5)
         (visible waypoint5 waypoint17) (visible waypoint17 waypoint5)
         (visible waypoint5 waypoint19) (visible waypoint19 waypoint5)
         (visible waypoint6 waypoint1) (visible waypoint1 waypoint6)
         (visible waypoint6 waypoint8) (visible waypoint8 waypoint6)
         (visible waypoint6 waypoint16) (visible waypoint16 waypoint6)
         (visible waypoint6 waypoint19) (visible waypoint19 waypoint6)
         (visible waypoint7 waypoint3) (visible waypoint3 waypoint7)
         (visible waypoint7 waypoint4) (visible waypoint4 waypoint7)
         (visible waypoint7 waypoint8) (visible waypoint8 waypoint7)
         (visible waypoint7 waypoint9) (visible waypoint9 waypoint7)
         (visible waypoint7 waypoint13) (visible waypoint13 waypoint7)
         (visible waypoint8 waypoint2) (visible waypoint2 waypoint8)
         (visible waypoint8 waypoint14) (visible waypoint14 waypoint8)
         (visible waypoint8 waypoint18) (visible waypoint18 waypoint8)
         (visible waypoint9 waypoint0) (visible waypoint0 waypoint9)
         (visible waypoint9 waypoint1) (visible waypoint1 waypoint9)
         (visible waypoint9 waypoint2) (visible waypoint2 waypoint9)
         (visible waypoint9 waypoint10) (visible waypoint10 waypoint9)
         (visible waypoint10 waypoint4) (visible waypoint4 waypoint10)
         (visible waypoint10 waypoint12) (visible waypoint12 waypoint10)
         (visible waypoint10 waypoint14) (visible waypoint14 waypoint10)
         (visible waypoint11 waypoint5) (visible waypoint5 waypoint11)
         (visible waypoint11 waypoint7) (visible waypoint7 waypoint11)
         (visible waypoint11 waypoint8) (visible waypoint8 waypoint11)
         (visible waypoint11 waypoint9) (visible waypoint9 waypoint11)
         (visible waypoint11 waypoint17) (visible waypoint17 waypoint11)
         (visible waypoint11 waypoint19) (visible waypoint19 waypoint11)
         (visible waypoint12 waypoint1) (visible waypoint1 waypoint12)
         (visible waypoint12 waypoint5) (visible waypoint5 waypoint12)
         (visible waypoint12 waypoint7) (visible waypoint7 waypoint12)
         (visible waypoint12 waypoint9) (visible waypoint9 waypoint12)
         (visible waypoint12 waypoint15) (visible waypoint15 waypoint12)
         (visible waypoint12 waypoint16) (visible waypoint16 waypoint12)
         (visible waypoint13 waypoint0) (visible waypoint0 waypoint13)
         (visible waypoint13 waypoint6) (visible waypoint6 waypoint13)
         (visible waypoint14 waypoint11) (visible waypoint11 waypoint14)
         (visible waypoint14 waypoint12) (visible waypoint12 waypoint14)
         (visible waypoint14 waypoint19) (visible waypoint19 waypoint14)
         (visible waypoint15 waypoint6) (visible waypoint6 waypoint15)
         (visible waypoint15 waypoint11) (visible waypoint11 waypoint15)
         (visible waypoint16 waypoint1) (visible waypoint1 waypoint16)
         (visible waypoint16 waypoint11) (visible waypoint11 waypoint16)
         (visible waypoint16 waypoint13) (visible waypoint13 waypoint16)
         (visible waypoint16 waypoint18) (visible waypoint18 waypoint16)
         (visible waypoint17 waypoint2) (visible waypoint2 waypoint17)
         (visible waypoint17 waypoint3) (visible waypoint3 waypoint17)
         (visible waypoint17 waypoint14) (visible waypoint14 waypoint17)
         (visible waypoint18 waypoint7) (visible waypoint7 waypoint18)
         (visible waypoint18 waypoint10) (visible waypoint10 waypoint18)
         (visible waypoint18 waypoint17) (visible waypoint17 waypoint18)
         (visible waypoint19 waypoint0) (visible waypoint0 waypoint19)
         (visible waypoint19 waypoint12) (visible waypoint12 waypoint19)
         (visible waypoint19 waypoint13) (visible waypoint13 waypoint19)
         (at_soil_sample waypoint3) (at_rock_sample waypoint3)
         (at_rock_sample waypoint4) (at_soil_sample waypoint5)
         (at_rock_sample waypoint6) (at_soil_sample waypoint8)
         (at_rock_sample waypoint9) (at_soil_sample waypoint11)
         (at_soil_sample waypoint12) (at_soil_sample waypoint14)
         (at_soil_sample waypoint15) (at_soil_sample waypoint16)
         (at_soil_sample waypoint17) (at_rock_sample waypoint17)
         (at_soil_sample waypoint18) (at_rock_sample waypoint19)
         (at_lander general waypoint6) (channel_free general)
         (at rover0 waypoint2) (available rover0) (store_of rover0store rover0)
         (empty rover0store) (equipped_for_imaging rover0)
         (can_traverse rover0 waypoint2 waypoint0)
         (can_traverse rover0 waypoint0 waypoint2)
         (can_traverse rover0 waypoint2 waypoint4)
         (can_traverse rover0 waypoint4 waypoint2)
         (can_traverse rover0 waypoint2 waypoint5)
         (can_traverse rover0 waypoint5 waypoint2)
         (can_traverse rover0 waypoint2 waypoint7)
         (can_traverse rover0 waypoint7 waypoint2)
         (can_traverse rover0 waypoint2 waypoint9)
         (can_traverse rover0 waypoint9 waypoint2)
         (can_traverse rover0 waypoint2 waypoint18)
         (can_traverse rover0 waypoint18 waypoint2)
         (can_traverse rover0 waypoint0 waypoint6)
         (can_traverse rover0 waypoint6 waypoint0)
         (can_traverse rover0 waypoint0 waypoint13)
         (can_traverse rover0 waypoint13 waypoint0)
         (can_traverse rover0 waypoint0 waypoint19)
         (can_traverse rover0 waypoint19 waypoint0)
         (can_traverse rover0 waypoint4 waypoint1)
         (can_traverse rover0 waypoint1 waypoint4)
         (can_traverse rover0 waypoint4 waypoint3)
         (can_traverse rover0 waypoint3 waypoint4)
         (can_traverse rover0 waypoint4 waypoint12)
         (can_traverse rover0 waypoint12 waypoint4)
         (can_traverse rover0 waypoint4 waypoint17)
         (can_traverse rover0 waypoint17 waypoint4)
         (can_traverse rover0 waypoint5 waypoint11)
         (can_traverse rover0 waypoint11 waypoint5)
         (can_traverse rover0 waypoint5 waypoint15)
         (can_traverse rover0 waypoint15 waypoint5)
         (can_traverse rover0 waypoint9 waypoint10)
         (can_traverse rover0 waypoint10 waypoint9)
         (can_traverse rover0 waypoint18 waypoint8)
         (can_traverse rover0 waypoint8 waypoint18)
         (can_traverse rover0 waypoint6 waypoint16)
         (can_traverse rover0 waypoint16 waypoint6)
         (can_traverse rover0 waypoint3 waypoint14)
         (can_traverse rover0 waypoint14 waypoint3) (at rover1 waypoint6)
         (available rover1) (store_of rover1store rover1) (empty rover1store)
         (equipped_for_imaging rover1)
         (can_traverse rover1 waypoint6 waypoint0)
         (can_traverse rover1 waypoint0 waypoint6)
         (can_traverse rover1 waypoint6 waypoint8)
         (can_traverse rover1 waypoint8 waypoint6)
         (can_traverse rover1 waypoint6 waypoint13)
         (can_traverse rover1 waypoint13 waypoint6)
         (can_traverse rover1 waypoint6 waypoint15)
         (can_traverse rover1 waypoint15 waypoint6)
         (can_traverse rover1 waypoint6 waypoint16)
         (can_traverse rover1 waypoint16 waypoint6)
         (can_traverse rover1 waypoint6 waypoint19)
         (can_traverse rover1 waypoint19 waypoint6)
         (can_traverse rover1 waypoint0 waypoint2)
         (can_traverse rover1 waypoint2 waypoint0)
         (can_traverse rover1 waypoint0 waypoint5)
         (can_traverse rover1 waypoint5 waypoint0)
         (can_traverse rover1 waypoint0 waypoint18)
         (can_traverse rover1 waypoint18 waypoint0)
         (can_traverse rover1 waypoint8 waypoint11)
         (can_traverse rover1 waypoint11 waypoint8)
         (can_traverse rover1 waypoint13 waypoint7)
         (can_traverse rover1 waypoint7 waypoint13)
         (can_traverse rover1 waypoint15 waypoint12)
         (can_traverse rover1 waypoint12 waypoint15)
         (can_traverse rover1 waypoint16 waypoint1)
         (can_traverse rover1 waypoint1 waypoint16)
         (can_traverse rover1 waypoint2 waypoint3)
         (can_traverse rover1 waypoint3 waypoint2)
         (can_traverse rover1 waypoint2 waypoint4)
         (can_traverse rover1 waypoint4 waypoint2)
         (can_traverse rover1 waypoint2 waypoint9)
         (can_traverse rover1 waypoint9 waypoint2)
         (can_traverse rover1 waypoint2 waypoint10)
         (can_traverse rover1 waypoint10 waypoint2)
         (can_traverse rover1 waypoint5 waypoint17)
         (can_traverse rover1 waypoint17 waypoint5)
         (can_traverse rover1 waypoint11 waypoint14)
         (can_traverse rover1 waypoint14 waypoint11) (at rover2 waypoint13)
         (available rover2) (store_of rover2store rover2) (empty rover2store)
         (equipped_for_soil_analysis rover2) (equipped_for_imaging rover2)
         (can_traverse rover2 waypoint13 waypoint0)
         (can_traverse rover2 waypoint0 waypoint13)
         (can_traverse rover2 waypoint13 waypoint6)
         (can_traverse rover2 waypoint6 waypoint13)
         (can_traverse rover2 waypoint13 waypoint7)
         (can_traverse rover2 waypoint7 waypoint13)
         (can_traverse rover2 waypoint13 waypoint16)
         (can_traverse rover2 waypoint16 waypoint13)
         (can_traverse rover2 waypoint13 waypoint19)
         (can_traverse rover2 waypoint19 waypoint13)
         (can_traverse rover2 waypoint0 waypoint5)
         (can_traverse rover2 waypoint5 waypoint0)
         (can_traverse rover2 waypoint0 waypoint9)
         (can_traverse rover2 waypoint9 waypoint0)
         (can_traverse rover2 waypoint0 waypoint18)
         (can_traverse rover2 waypoint18 waypoint0)
         (can_traverse rover2 waypoint6 waypoint8)
         (can_traverse rover2 waypoint8 waypoint6)
         (can_traverse rover2 waypoint6 waypoint15)
         (can_traverse rover2 waypoint15 waypoint6)
         (can_traverse rover2 waypoint7 waypoint2)
         (can_traverse rover2 waypoint2 waypoint7)
         (can_traverse rover2 waypoint7 waypoint4)
         (can_traverse rover2 waypoint4 waypoint7)
         (can_traverse rover2 waypoint7 waypoint12)
         (can_traverse rover2 waypoint12 waypoint7)
         (can_traverse rover2 waypoint16 waypoint1)
         (can_traverse rover2 waypoint1 waypoint16)
         (can_traverse rover2 waypoint16 waypoint11)
         (can_traverse rover2 waypoint11 waypoint16)
         (can_traverse rover2 waypoint19 waypoint14)
         (can_traverse rover2 waypoint14 waypoint19)
         (can_traverse rover2 waypoint5 waypoint3)
         (can_traverse rover2 waypoint3 waypoint5)
         (can_traverse rover2 waypoint9 waypoint10)
         (can_traverse rover2 waypoint10 waypoint9)
         (can_traverse rover2 waypoint18 waypoint17)
         (can_traverse rover2 waypoint17 waypoint18) (at rover3 waypoint11)
         (available rover3) (store_of rover3store rover3) (empty rover3store)
         (equipped_for_soil_analysis rover3)
         (equipped_for_rock_analysis rover3) (equipped_for_imaging rover3)
         (can_traverse rover3 waypoint11 waypoint1)
         (can_traverse rover3 waypoint1 waypoint11)
         (can_traverse rover3 waypoint11 waypoint7)
         (can_traverse rover3 waypoint7 waypoint11)
         (can_traverse rover3 waypoint11 waypoint9)
         (can_traverse rover3 waypoint9 waypoint11)
         (can_traverse rover3 waypoint11 waypoint14)
         (can_traverse rover3 waypoint14 waypoint11)
         (can_traverse rover3 waypoint11 waypoint16)
         (can_traverse rover3 waypoint16 waypoint11)
         (can_traverse rover3 waypoint11 waypoint17)
         (can_traverse rover3 waypoint17 waypoint11)
         (can_traverse rover3 waypoint1 waypoint4)
         (can_traverse rover3 waypoint4 waypoint1)
         (can_traverse rover3 waypoint7 waypoint2)
         (can_traverse rover3 waypoint2 waypoint7)
         (can_traverse rover3 waypoint7 waypoint3)
         (can_traverse rover3 waypoint3 waypoint7)
         (can_traverse rover3 waypoint7 waypoint12)
         (can_traverse rover3 waypoint12 waypoint7)
         (can_traverse rover3 waypoint7 waypoint13)
         (can_traverse rover3 waypoint13 waypoint7)
         (can_traverse rover3 waypoint7 waypoint18)
         (can_traverse rover3 waypoint18 waypoint7)
         (can_traverse rover3 waypoint9 waypoint0)
         (can_traverse rover3 waypoint0 waypoint9)
         (can_traverse rover3 waypoint14 waypoint8)
         (can_traverse rover3 waypoint8 waypoint14)
         (can_traverse rover3 waypoint14 waypoint10)
         (can_traverse rover3 waypoint10 waypoint14)
         (can_traverse rover3 waypoint16 waypoint5)
         (can_traverse rover3 waypoint5 waypoint16)
         (can_traverse rover3 waypoint16 waypoint6)
         (can_traverse rover3 waypoint6 waypoint16)
         (can_traverse rover3 waypoint2 waypoint19)
         (can_traverse rover3 waypoint19 waypoint2)
         (can_traverse rover3 waypoint12 waypoint15)
         (can_traverse rover3 waypoint15 waypoint12) (at rover4 waypoint0)
         (available rover4) (store_of rover4store rover4) (empty rover4store)
         (equipped_for_soil_analysis rover4)
         (equipped_for_rock_analysis rover4) (equipped_for_imaging rover4)
         (can_traverse rover4 waypoint0 waypoint2)
         (can_traverse rover4 waypoint2 waypoint0)
         (can_traverse rover4 waypoint0 waypoint5)
         (can_traverse rover4 waypoint5 waypoint0)
         (can_traverse rover4 waypoint0 waypoint6)
         (can_traverse rover4 waypoint6 waypoint0)
         (can_traverse rover4 waypoint0 waypoint18)
         (can_traverse rover4 waypoint18 waypoint0)
         (can_traverse rover4 waypoint2 waypoint3)
         (can_traverse rover4 waypoint3 waypoint2)
         (can_traverse rover4 waypoint2 waypoint7)
         (can_traverse rover4 waypoint7 waypoint2)
         (can_traverse rover4 waypoint2 waypoint8)
         (can_traverse rover4 waypoint8 waypoint2)
         (can_traverse rover4 waypoint2 waypoint17)
         (can_traverse rover4 waypoint17 waypoint2)
         (can_traverse rover4 waypoint2 waypoint19)
         (can_traverse rover4 waypoint19 waypoint2)
         (can_traverse rover4 waypoint5 waypoint11)
         (can_traverse rover4 waypoint11 waypoint5)
         (can_traverse rover4 waypoint5 waypoint12)
         (can_traverse rover4 waypoint12 waypoint5)
         (can_traverse rover4 waypoint5 waypoint15)
         (can_traverse rover4 waypoint15 waypoint5)
         (can_traverse rover4 waypoint5 waypoint16)
         (can_traverse rover4 waypoint16 waypoint5)
         (can_traverse rover4 waypoint6 waypoint1)
         (can_traverse rover4 waypoint1 waypoint6)
         (can_traverse rover4 waypoint6 waypoint13)
         (can_traverse rover4 waypoint13 waypoint6)
         (can_traverse rover4 waypoint18 waypoint10)
         (can_traverse rover4 waypoint10 waypoint18)
         (can_traverse rover4 waypoint3 waypoint4)
         (can_traverse rover4 waypoint4 waypoint3)
         (can_traverse rover4 waypoint3 waypoint9)
         (can_traverse rover4 waypoint9 waypoint3)
         (can_traverse rover4 waypoint8 waypoint14)
         (can_traverse rover4 waypoint14 waypoint8) (at rover5 waypoint12)
         (available rover5) (store_of rover5store rover5) (empty rover5store)
         (equipped_for_soil_analysis rover5)
         (equipped_for_rock_analysis rover5) (equipped_for_imaging rover5)
         (can_traverse rover5 waypoint12 waypoint1)
         (can_traverse rover5 waypoint1 waypoint12)
         (can_traverse rover5 waypoint12 waypoint4)
         (can_traverse rover5 waypoint4 waypoint12)
         (can_traverse rover5 waypoint12 waypoint5)
         (can_traverse rover5 waypoint5 waypoint12)
         (can_traverse rover5 waypoint12 waypoint7)
         (can_traverse rover5 waypoint7 waypoint12)
         (can_traverse rover5 waypoint12 waypoint9)
         (can_traverse rover5 waypoint9 waypoint12)
         (can_traverse rover5 waypoint12 waypoint10)
         (can_traverse rover5 waypoint10 waypoint12)
         (can_traverse rover5 waypoint12 waypoint14)
         (can_traverse rover5 waypoint14 waypoint12)
         (can_traverse rover5 waypoint12 waypoint15)
         (can_traverse rover5 waypoint15 waypoint12)
         (can_traverse rover5 waypoint12 waypoint16)
         (can_traverse rover5 waypoint16 waypoint12)
         (can_traverse rover5 waypoint1 waypoint6)
         (can_traverse rover5 waypoint6 waypoint1)
         (can_traverse rover5 waypoint1 waypoint11)
         (can_traverse rover5 waypoint11 waypoint1)
         (can_traverse rover5 waypoint4 waypoint3)
         (can_traverse rover5 waypoint3 waypoint4)
         (can_traverse rover5 waypoint4 waypoint17)
         (can_traverse rover5 waypoint17 waypoint4)
         (can_traverse rover5 waypoint5 waypoint0)
         (can_traverse rover5 waypoint0 waypoint5)
         (can_traverse rover5 waypoint5 waypoint13)
         (can_traverse rover5 waypoint13 waypoint5)
         (can_traverse rover5 waypoint5 waypoint19)
         (can_traverse rover5 waypoint19 waypoint5)
         (can_traverse rover5 waypoint7 waypoint2)
         (can_traverse rover5 waypoint2 waypoint7)
         (can_traverse rover5 waypoint7 waypoint8)
         (can_traverse rover5 waypoint8 waypoint7)
         (can_traverse rover5 waypoint7 waypoint18)
         (can_traverse rover5 waypoint18 waypoint7) (on_board camera0 rover2)
         (calibration_target camera0 objective0) (supports camera0 colour)
         (supports camera0 high_res) (supports camera0 low_res)
         (on_board camera1 rover1) (calibration_target camera1 objective1)
         (supports camera1 high_res) (on_board camera2 rover1)
         (calibration_target camera2 objective0) (supports camera2 high_res)
         (supports camera2 low_res) (on_board camera3 rover0)
         (calibration_target camera3 objective5) (supports camera3 high_res)
         (on_board camera4 rover4) (calibration_target camera4 objective2)
         (supports camera4 colour) (supports camera4 low_res)
         (on_board camera5 rover3) (calibration_target camera5 objective0)
         (supports camera5 colour) (supports camera5 low_res)
         (on_board camera6 rover5) (calibration_target camera6 objective6)
         (supports camera6 colour) (supports camera6 high_res)
         (supports camera6 low_res) (visible_from objective0 waypoint0)
         (visible_from objective0 waypoint1)
         (visible_from objective0 waypoint2)
         (visible_from objective0 waypoint3)
         (visible_from objective0 waypoint4)
         (visible_from objective0 waypoint5)
         (visible_from objective0 waypoint6)
         (visible_from objective0 waypoint7)
         (visible_from objective0 waypoint8)
         (visible_from objective0 waypoint9)
         (visible_from objective0 waypoint10)
         (visible_from objective0 waypoint11)
         (visible_from objective0 waypoint12)
         (visible_from objective0 waypoint13)
         (visible_from objective0 waypoint14)
         (visible_from objective0 waypoint15)
         (visible_from objective1 waypoint0)
         (visible_from objective2 waypoint0)
         (visible_from objective2 waypoint1)
         (visible_from objective2 waypoint2)
         (visible_from objective2 waypoint3)
         (visible_from objective2 waypoint4)
         (visible_from objective2 waypoint5)
         (visible_from objective2 waypoint6)
         (visible_from objective2 waypoint7)
         (visible_from objective2 waypoint8)
         (visible_from objective2 waypoint9)
         (visible_from objective2 waypoint10)
         (visible_from objective3 waypoint0)
         (visible_from objective3 waypoint1)
         (visible_from objective3 waypoint2)
         (visible_from objective3 waypoint3)
         (visible_from objective3 waypoint4)
         (visible_from objective3 waypoint5)
         (visible_from objective3 waypoint6)
         (visible_from objective3 waypoint7)
         (visible_from objective3 waypoint8)
         (visible_from objective4 waypoint0)
         (visible_from objective4 waypoint1)
         (visible_from objective4 waypoint2)
         (visible_from objective4 waypoint3)
         (visible_from objective4 waypoint4)
         (visible_from objective4 waypoint5)
         (visible_from objective4 waypoint6)
         (visible_from objective4 waypoint7)
         (visible_from objective4 waypoint8)
         (visible_from objective4 waypoint9)
         (visible_from objective4 waypoint10)
         (visible_from objective4 waypoint11)
         (visible_from objective4 waypoint12)
         (visible_from objective4 waypoint13)
         (visible_from objective4 waypoint14)
         (visible_from objective4 waypoint15)
         (visible_from objective4 waypoint16)
         (visible_from objective4 waypoint17)
         (visible_from objective4 waypoint18)
         (visible_from objective5 waypoint0)
         (visible_from objective5 waypoint1)
         (visible_from objective5 waypoint2)
         (visible_from objective5 waypoint3)
         (visible_from objective5 waypoint4)
         (visible_from objective5 waypoint5)
         (visible_from objective5 waypoint6)
         (visible_from objective5 waypoint7)
         (visible_from objective5 waypoint8)
         (visible_from objective5 waypoint9)
         (visible_from objective5 waypoint10)
         (visible_from objective5 waypoint11)
         (visible_from objective5 waypoint12)
         (visible_from objective5 waypoint13)
         (visible_from objective6 waypoint0)
         (visible_from objective6 waypoint1)
         (visible_from objective6 waypoint2)
         (visible_from objective6 waypoint3)
         (visible_from objective6 waypoint4)
         (visible_from objective6 waypoint5)
         (visible_from objective6 waypoint6)
         (visible_from objective6 waypoint7)
         (visible_from objective6 waypoint8)
         (visible_from objective6 waypoint9)
         (visible_from objective7 waypoint0)
         (visible_from objective7 waypoint1)
         (visible_from objective7 waypoint2)
         (visible_from objective7 waypoint3)
         (visible_from objective7 waypoint4)
         (visible_from objective7 waypoint5)
         (visible_from objective7 waypoint6)
         (visible_from objective7 waypoint7)
         (visible_from objective7 waypoint8)
         (visible_from objective7 waypoint9)
         (visible_from objective7 waypoint10)
         (visible_from objective7 waypoint11)
         (visible_from objective7 waypoint12)
         (visible_from objective7 waypoint13)
         (visible_from objective7 waypoint14))
        (:goal
         (and (communicated_soil_data waypoint18)
              (communicated_soil_data waypoint8)
              (communicated_soil_data waypoint5)
              (communicated_rock_data waypoint17)
              (communicated_rock_data waypoint6)
              (communicated_rock_data waypoint9)
              (communicated_rock_data waypoint19)
              (communicated_rock_data waypoint3)
              (communicated_rock_data waypoint4)
              (communicated_image_data objective7 low_res)
              (communicated_image_data objective4 high_res)
              (communicated_image_data objective0 colour)
              (communicated_image_data objective6 low_res)
              (communicated_image_data objective7 colour)
              (communicated_image_data objective2 low_res)
              (communicated_image_data objective0 high_res)
              (communicated_image_data objective5 colour)))
        (:constraints
         (and (preference a0 (always (at rover2 waypoint13)))
              (preference a1 (always (at rover1 waypoint6)))
              (preference a2 (always (at rover0 waypoint2)))
              (preference a3 (always (empty rover2store)))
              (preference e0 (sometime (at rover5 waypoint19)))
              (preference e1 (sometime (at rover5 waypoint5)))
              (preference e2 (sometime (at rover5 waypoint15)))
              (preference e3 (sometime (at rover5 waypoint9)))
              (preference e4 (sometime (at rover5 waypoint11)))
              (preference e5 (sometime (at rover5 waypoint6)))
              (preference e6 (sometime (at rover5 waypoint3)))
              (preference e7 (sometime (at rover4 waypoint19)))
              (preference e8 (sometime (at rover4 waypoint18)))
              (preference e9 (sometime (at rover4 waypoint17)))
              (preference e10 (sometime (at rover4 waypoint5)))
              (preference e11 (sometime (at rover4 waypoint15)))
              (preference e12 (sometime (at rover4 waypoint8)))
              (preference e13 (sometime (at rover4 waypoint13)))
              (preference e14 (sometime (at rover4 waypoint6)))
              (preference e15 (sometime (at rover4 waypoint3)))
              (preference e16 (sometime (at rover3 waypoint19)))
              (preference e17 (sometime (at rover3 waypoint2)))
              (preference e18 (sometime (at rover3 waypoint7)))
              (preference e19 (sometime (at rover3 waypoint17)))
              (preference e20 (sometime (at rover3 waypoint8)))
              (preference e21 (sometime (at rover3 waypoint13)))
              (preference e22 (sometime (at rover3 waypoint9)))
              (preference e23 (sometime (at rover3 waypoint1)))
              (preference e24 (sometime (at rover3 waypoint0)))
              (preference e25 (sometime (at rover3 waypoint3)))
              (preference e26 (sometime (at rover3 waypoint4)))
              (preference e27 (sometime (at rover2 waypoint18)))
              (preference e28 (sometime (at rover2 waypoint0)))
              (preference e29 (sometime (at rover2 waypoint6)))
              (preference e30 (sometime (at rover2 waypoint8)))
              (preference e31 (sometime (at rover2 waypoint5)))
              (preference e32 (sometime (at rover1 waypoint0)))
              (preference e33 (sometime (at rover1 waypoint15)))
              (preference e34 (sometime (at rover0 waypoint0)))
              (preference e35 (sometime (full rover5store)))
              (preference e36 (sometime (have_soil_analysis rover5 waypoint5)))
              (preference e37
               (sometime (have_soil_analysis rover4 waypoint18)))
              (preference e38 (sometime (have_soil_analysis rover4 waypoint8)))
              (preference e39 (sometime (have_soil_analysis rover4 waypoint5)))
              (preference e40 (sometime (have_soil_analysis rover3 waypoint8)))
              (preference e41
               (sometime (have_soil_analysis rover2 waypoint18)))
              (preference e42 (sometime (have_soil_analysis rover2 waypoint8)))
              (preference e43 (sometime (have_soil_analysis rover2 waypoint5)))
              (preference e44
               (sometime (have_rock_analysis rover5 waypoint19)))
              (preference e45 (sometime (have_rock_analysis rover5 waypoint9)))
              (preference e46 (sometime (have_rock_analysis rover5 waypoint6)))
              (preference e47 (sometime (have_rock_analysis rover5 waypoint4)))
              (preference e48 (sometime (have_rock_analysis rover5 waypoint3)))
              (preference e49
               (sometime (have_rock_analysis rover4 waypoint19)))
              (preference e50
               (sometime (have_rock_analysis rover4 waypoint17)))
              (preference e51 (sometime (have_rock_analysis rover4 waypoint6)))
              (preference e52 (sometime (have_rock_analysis rover4 waypoint3)))
              (preference e53
               (sometime (have_rock_analysis rover3 waypoint19)))
              (preference e54
               (sometime (have_rock_analysis rover3 waypoint17)))
              (preference e55 (sometime (have_rock_analysis rover3 waypoint9)))
              (preference e56 (sometime (have_rock_analysis rover3 waypoint4)))
              (preference e57 (sometime (have_rock_analysis rover3 waypoint3)))
              (preference e58 (sometime (calibrated camera6 rover5)))
              (preference e59 (sometime (calibrated camera4 rover4)))
              (preference e60 (sometime (calibrated camera5 rover3)))
              (preference e61 (sometime (calibrated camera2 rover1)))
              (preference e62 (sometime (calibrated camera3 rover0)))
              (preference e63
               (sometime (have_image rover5 objective4 high_res)))
              (preference e64
               (sometime (have_image rover5 objective0 high_res)))
              (preference e65 (sometime (have_image rover5 objective0 colour)))
              (preference e66 (sometime (have_image rover5 objective7 colour)))
              (preference e67
               (sometime (have_image rover5 objective2 low_res)))
              (preference e68
               (sometime (have_image rover5 objective6 low_res)))
              (preference e69 (sometime (have_image rover4 objective0 colour)))
              (preference e70
               (sometime (have_image rover4 objective7 low_res)))
              (preference e71 (sometime (have_image rover4 objective5 colour)))
              (preference e72
               (sometime (have_image rover4 objective2 low_res)))
              (preference e73
               (sometime (have_image rover4 objective6 low_res)))
              (preference e74 (sometime (have_image rover3 objective0 colour)))
              (preference e75
               (sometime (have_image rover3 objective7 low_res)))
              (preference e76 (sometime (have_image rover3 objective7 colour)))
              (preference e77 (sometime (have_image rover3 objective5 colour)))
              (preference e78
               (sometime (have_image rover3 objective2 low_res)))
              (preference e79
               (sometime (have_image rover3 objective6 low_res)))
              (preference e80
               (sometime (have_image rover2 objective4 high_res)))
              (preference e81
               (sometime (have_image rover2 objective0 high_res)))
              (preference e82 (sometime (have_image rover2 objective0 colour)))
              (preference e83
               (sometime (have_image rover2 objective7 low_res)))
              (preference e84 (sometime (have_image rover2 objective7 colour)))
              (preference e85 (sometime (have_image rover2 objective5 colour)))
              (preference e86
               (sometime (have_image rover1 objective4 high_res)))
              (preference e87
               (sometime (have_image rover1 objective0 high_res)))
              (preference e88
               (sometime (have_image rover1 objective7 low_res)))
              (preference e89
               (sometime (have_image rover1 objective2 low_res)))
              (preference e90
               (sometime (have_image rover1 objective6 low_res)))
              (preference e91
               (sometime (have_image rover0 objective4 high_res)))
              (preference e92
               (sometime (have_image rover0 objective0 high_res)))
              (preference o0 (at-most-once (at rover5 waypoint4)))
              (preference o1 (at-most-once (at rover5 waypoint16)))
              (preference o2 (at-most-once (at rover5 waypoint12)))
              (preference o3 (at-most-once (at rover5 waypoint1)))
              (preference o4 (at-most-once (at rover4 waypoint2)))
              (preference o5 (at-most-once (at rover4 waypoint0)))
              (preference o6 (at-most-once (at rover3 waypoint11)))
              (preference o7 (at-most-once (empty rover5store)))
              (preference o8 (at-most-once (empty rover4store)))
              (preference o9 (at-most-once (full rover4store)))
              (preference o10 (at-most-once (empty rover3store)))
              (preference o11 (at-most-once (full rover3store)))
              (preference o12 (at-most-once (full rover2store)))
              (preference o13 (at-most-once (calibrated camera0 rover2)))))
        (:metric minimize
         (+ (* (is-violated o13) 76.32)
            (* (is-violated o12) 106.5)
            (* (is-violated o11) 102.24)
            (* (is-violated o10) 105.84)
            (* (is-violated o9) 79.3)
            (* (is-violated o8) 77.35)
            (* (is-violated o7) 66.75)
            (* (is-violated o6) 56.88)
            (* (is-violated o5) 73.45)
            (* (is-violated o4) 82.8)
            (* (is-violated o3) 90.85)
            (* (is-violated o2) 37.5)
            (* (is-violated o1) 60.75)
            (* (is-violated o0) 44.85)
            (* (is-violated e92) 82.01)
            (* (is-violated e91) 52.51)
            (* (is-violated e90) 64.9)
            (* (is-violated e89) 44.25)
            (* (is-violated e88) 109.81)
            (* (is-violated e87) 61.36)
            (* (is-violated e86) 33.63)
            (* (is-violated e85) 69.62)
            (* (is-violated e84) 89.25)
            (* (is-violated e83) 39.75)
            (* (is-violated e82) 68.44)
            (* (is-violated e81) 70.21)
            (* (is-violated e80) 66.08)
            (* (is-violated e79) 40.5)
            (* (is-violated e78) 60.75)
            (* (is-violated e77) 87.91)
            (* (is-violated e76) 63.13)
            (* (is-violated e75) 78.47)
            (* (is-violated e74) 37.17)
            (* (is-violated e73) 56.05)
            (* (is-violated e72) 54.28)
            (* (is-violated e71) 73.16)
            (* (is-violated e70) 55.44)
            (* (is-violated e69) 46.61)
            (* (is-violated e68) 44.85)
            (* (is-violated e67) 48.38)
            (* (is-violated e66) 59.76)
            (* (is-violated e65) 59)
            (* (is-violated e64) 59.59)
            (* (is-violated e63) 78.47)
            (* (is-violated e62) 69.55)
            (* (is-violated e61) 54.28)
            (* (is-violated e60) 41.3)
            (* (is-violated e59) 53.69)
            (* (is-violated e58) 96.85)
            (* (is-violated e57) 106.65)
            (* (is-violated e56) 47.79)
            (* (is-violated e55) 63)
            (* (is-violated e54) 82.6)
            (* (is-violated e53) 81.9)
            (* (is-violated e52) 47.2)
            (* (is-violated e51) 77.35)
            (* (is-violated e50) 69.84)
            (* (is-violated e49) 41.76)
            (* (is-violated e48) 92.95)
            (* (is-violated e47) 72.8)
            (* (is-violated e46) 31.86)
            (* (is-violated e45) 81.42)
            (* (is-violated e44) 30.09)
            (* (is-violated e43) 46.8)
            (* (is-violated e42) 51.92)
            (* (is-violated e41) 71.98)
            (* (is-violated e40) 89.25)
            (* (is-violated e39) 83.19)
            (* (is-violated e38) 43.2)
            (* (is-violated e37) 78.48)
            (* (is-violated e36) 97.17)
            (* (is-violated e35) 75.52)
            (* (is-violated e34) 34.81)
            (* (is-violated e33) 78.65)
            (* (is-violated e32) 70.31)
            (* (is-violated e31) 84.96)
            (* (is-violated e30) 53.1)
            (* (is-violated e29) 79.3)
            (* (is-violated e28) 36.58)
            (* (is-violated e27) 30.68)
            (* (is-violated e26) 66.08)
            (* (is-violated e25) 91.64)
            (* (is-violated e24) 56.25)
            (* (is-violated e23) 38.94)
            (* (is-violated e22) 64.5)
            (* (is-violated e21) 79.3)
            (* (is-violated e20) 93)
            (* (is-violated e19) 88.5)
            (* (is-violated e18) 46.8)
            (* (is-violated e17) 94.25)
            (* (is-violated e16) 50.7)
            (* (is-violated e15) 48.97)
            (* (is-violated e14) 56.55)
            (* (is-violated e13) 91.65)
            (* (is-violated e12) 77.04)
            (* (is-violated e11) 42.9)
            (* (is-violated e10) 64.31)
            (* (is-violated e9) 79.2)
            (* (is-violated e8) 59.59)
            (* (is-violated e7) 64.9)
            (* (is-violated e6) 72.15)
            (* (is-violated e5) 31.27)
            (* (is-violated e4) 65.25)
            (* (is-violated e3) 77.29)
            (* (is-violated e2) 94.9)
            (* (is-violated e1) 83.78)
            (* (is-violated e0) 66.67)
            (* (is-violated a3) 54.72)
            (* (is-violated a2) 72.72)
            (* (is-violated a1) 54.28)
            (* (is-violated a0) 46.8)
	)))