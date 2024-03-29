(define (problem roverprob1234) (:domain rover)
(:objects 
         general - lander 
         colour - mode 
         high_res - mode 
         low_res - mode
         rover0 - rover 
         rover0store - store 
         waypoint0 - waypoint 
         waypoint1 - waypoint 
         waypoint2 - waypoint 
         waypoint3 - waypoint 
         camera0 - camera
         objective0 - objective 
         objective1 - objective
         )
(:init 
         (visible waypoint1 waypoint0) 
         (visible waypoint0 waypoint1)
         (visible waypoint2 waypoint0) 
         (visible waypoint0 waypoint2)
         (visible waypoint2 waypoint1) 
         (visible waypoint1 waypoint2)
         (visible waypoint3 waypoint0) 
         (visible waypoint0 waypoint3)
         (visible waypoint3 waypoint1) 
         (visible waypoint1 waypoint3)
         (visible waypoint3 waypoint2) 
         (visible waypoint2 waypoint3)
         (at_soil_sample waypoint0) 
         (at_rock_sample waypoint1)
         (at_soil_sample waypoint2) 
         (at_rock_sample waypoint2)
         (at_soil_sample waypoint3) 
         (at_rock_sample waypoint3)
         (at_lander general waypoint0) 
         (channel_free general)
         (at rover0 waypoint3) 
         (available rover0) 
         (store_of rover0store rover0)
         (empty rover0store) 
         (equipped_for_soil_analysis rover0)
         (equipped_for_rock_analysis rover0) 
         (equipped_for_imaging rover0)
         (can_traverse rover0 waypoint3 waypoint0)
         (can_traverse rover0 waypoint0 waypoint3)
         (can_traverse rover0 waypoint3 waypoint1)
         (can_traverse rover0 waypoint1 waypoint3)
         (can_traverse rover0 waypoint1 waypoint2)
         (can_traverse rover0 waypoint2 waypoint1) 
         (on_board camera0 rover0)
         (calibration_target camera0 objective1) 
         (supports camera0 colour)
         (supports camera0 high_res) 
         (visible_from objective0 waypoint0)
         (visible_from objective0 waypoint1)
         (visible_from objective0 waypoint2)
         (visible_from objective0 waypoint3)
         (visible_from objective1 waypoint0)
         (visible_from objective1 waypoint1)
         (visible_from objective1 waypoint2)
         (visible_from objective1 waypoint3)
)

(:goal (and (communicated_soil_data waypoint2)
            (communicated_rock_data waypoint3)
            (communicated_image_data objective1 high_res)
	)
)
        (:constraints
         (and (preference a0 (always (at_soil_sample waypoint0)))
              (preference a1 (always (at_rock_sample waypoint1)))
              (preference e0 (sometime (at rover0 waypoint0)))
              (preference e1 (sometime (have_soil_analysis rover0 waypoint0)))
              (preference e2 (sometime (have_rock_analysis rover0 waypoint1)))
              (preference o0 (at-most-once (at rover0 waypoint3)))
              (preference o1 (at-most-once (at rover0 waypoint1)))
              (preference o2 (at-most-once (empty rover0store)))
              (preference o3 (at-most-once (full rover0store)))
              (preference sb3
               (sometime-before (at rover0 waypoint2)
                (have_soil_analysis rover0 waypoint0)))
              (preference sb7
               (sometime-before (have_soil_analysis rover0 waypoint2)
                (full rover0store)))
              (preference sb8
               (sometime-before (have_soil_analysis rover0 waypoint2)
                (have_soil_analysis rover0 waypoint0)))
              (preference sb11
               (sometime-before (have_rock_analysis rover0 waypoint3)
                (at rover0 waypoint0)))
              (preference sb12
               (sometime-before (have_rock_analysis rover0 waypoint3)
                (at rover0 waypoint2)))
              (preference sb13
               (sometime-before (have_rock_analysis rover0 waypoint3)
                (full rover0store)))
              (preference sb16
               (sometime-before (have_rock_analysis rover0 waypoint3)
                (have_rock_analysis rover0 waypoint1)))
              (preference sb17
               (sometime-before (have_rock_analysis rover0 waypoint3)
                (have_image rover0 objective1 high_res)))
              (preference sb19
               (sometime-before (have_image rover0 objective1 high_res)
                (full rover0store)))
              (preference sb20
               (sometime-before (have_image rover0 objective1 high_res)
                (have_rock_analysis rover0 waypoint3)))))
        (:metric minimize
         (+ (* (is-violated sb20) 14.592)
            (* (is-violated sb19) 6.726)
            (* (is-violated sb17) 9.96233)
            (* (is-violated sb16) 7.32767)
            (* (is-violated sb13) 11.856)
            (* (is-violated sb12) 7.41)
            (* (is-violated sb11) 10.0447)
            (* (is-violated sb8) 5.10467)
            (* (is-violated sb7) 4.28133)
            (* (is-violated sb3) 9.22133)
            (* (is-violated o3) 9.55067)
            (* (is-violated o2) 8.55)
            (* (is-violated o1) 5.434)
            (* (is-violated o0) 9.804)
            (* (is-violated e2) 10.0447)
            (* (is-violated e1) 10.2093)
            (* (is-violated e0) 12.35)
            (* (is-violated a1) 8.208)
            (* (is-violated a0) 16.53)
	)))
