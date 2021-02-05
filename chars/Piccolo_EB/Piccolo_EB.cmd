
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 25
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Spbeamcannon"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "Spbeamcannon"  ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "HELLZONE"  ;Same name as above
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "HELLZONE"  ;Same name as above
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "NamekRage"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 30

[Command]
name = "NamekRage"
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, x
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "AirsonicKick"
command = ~D, DB, B, a

[Command]
name = "AirsonicKick"
command = ~D, DB, B, b

[Command]
name = "Airfireball"
command = ~D, DB, B, x

[Command]
name = "Airfireball"
command = ~D, DB, B, y

[Command]
name = "Forcefield"
command = ~D, DB, B, a

[Command]
name = "Forcefield"
command = ~D, DB, B, b

[Command]
name = "KneeUppercut_a"
command = ~F, D, DF, a

[Command]
name = "KneeUppercut_b"
command = ~F, D, DF, b

[Command]
name = "KneeUppercut_ab"
command = ~F, D, DF, a+b

[Command]
name = "Fireball_L"
command = ~D, DF, F, x

[Command]
name = "Fireball_S"
command = ~D, DF, F, y

[Command]
name = "Flame_EX"
command = ~D, DF, F, x+y

[Command]
name = "Arm_Fake"
command = ~D, DB, B, x

[Command]
name = "Arm_L"
command = ~D, DB, B, x

[Command]
name = "Arm_S"
command = ~D, DB, B, y

[Command]
name = "Arm_Fake"
command = ~D, DB, B, y

[Command]
name = "3hit"
command = ~D, DB, B, x

[Command]
name = "3hitp"
command = ~D, DB, B, y

[Command]
name = "Sliding Retort Kick_a"
command = ~30$B, F, a

[Command]
name = "Sliding Retort Kick_b"
command = ~30$B, F, b

[Command]
name = "Sliding Retort Kick_ab"
command = ~30$B, F, a+b

[Command]
name = "shock_light"
command = x,x,x

[Command]
name = "shock_strong"
command = y,y,y

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1


[Command]
name = "fwd_a"
command = /$F,a
time = 1


[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "hold_c"
command = /$c


;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;===========================================================================

[Statedef -1]

;===========================================================================

;---------------------------
;           AI BASIC
;---------------------------

[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = var(59) = 1 && roundstate = 2 && numenemy
triggerall= enemynear,p2dist x>=0 || backedgebodydist<=80
triggerall= roundstate=2 && statetype!=A && (ctrl || stateno=21)
trigger1= enemynear,movetype=A && enemynear,vel x>=-1 && p2bodydist x<=120
trigger1= enemynear,hitdefattr=SC,ST,HT && random<100
trigger2= enemynear,movetype=A && ((enemynear,stateno=[1000,1999]) || (enemynear,stateno=[3000,3999]))
trigger2= p2bodydist x>=120 && (((enemynear,numhelper) && !numhelper(9741)) || (enemynear,numproj))
trigger2= !(enemynear,statetype=A) && random<100
trigger3= enemynear,statetype=A && (p2bodydist x=[40,60]) && (p2dist y=[-110,-80])
trigger3= enemynear,vel x>=0 && !(enemynear,movetype=A) && random<50
trigger4= enemynear,movetype=A && enemynear,stateno=9980 && p2bodydist x>=90 && random<500
TRIGGER6 = STATENO = 410 && MOVEHIT = 1 && TIME > 7 && ctrl
TRIGGER7 = STATENO = 1230 && MOVEHIT = 3 && TIME > 36 && ctrl
trigger8 = STATENO = 250 && MOVEHIT && ctrl

[State -1, Walk]
type = ChangeState
value = 20
triggerall = Var(59)=1
triggerall = StateType != A
triggerall = Ctrl
triggerall = !InGuardDist
triggerall = stateno != [10,12]
triggerall = prevstateno != [10,12]
triggerall = stateno != 20
triggerall = prevstateno != 20
triggerall = stateno != 21
triggerall = prevstateno != 21
triggerall = stateno != [120,159]
triggerall = prevstateno != [120,159]
trigger1 = random%5<=2

[State -1, AI STAND GUARD]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
triggerall = (Ctrl ) && (p2movetype = A) && (statetype = S)   ;P2 is attacking, character is standing
trigger1 = p2bodydist X <= 250                               ;P2 is less than or equal to 250 away on the x-axis,
trigger1 = random <= 400                                ;perform this move 79% of the time*
value = 130                                                  ;change to [Statedef 130] which is standing block

[State -1, AI Crouch GUARD]
type = ChangeState
triggerall = (roundstate = 2) && (var(59)= 1)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)   ;P2 is attacking, character is standing
trigger1 = p2bodydist X <= 250                               ;P2 is less than or equal to 250 away on the x-axis,
trigger1 = random <= 600                                ;perform this move 79% of the time*
value = 131                                                  ;change to [Statedef 131] which is jumping block

[State -1, AI Air GUARD]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)   ;P2 is attacking, character is standing
trigger1 = p2bodydist X <= 250                               ;P2 is less than or equal to 250 away on the x-axis,
trigger1 = random <= 300                                     ;perform this move 79% of the time*
value = 132

[State -1,AI BACK RUN]
type = ChangeState
value = 105
triggerall = var(59) = 1
trigger1 = (stateno != [100,101]) && statetype = S && ctrl
trigger1 = p2bodydist x < 30 && P2STATETYPE = L
TRIGGER2 = STATENO = 1050 && MOVEGUARDED

[State -1,AI FORWARD RUN]
type = ChangeState
value = 100
triggerall = var(59) = 1 && numenemy
triggerall= roundstate=2 && statetype=S && (ctrl || stateno=21)
triggerall= !(stateno=[100,106]) && !(prevstateno=[100,106])
trigger1= !(enemynear,movetype=A) && p2bodydist x>=250 && random<100
trigger2= !(enemynear,movetype=A) && (enemynear,stateno=[120,140]) && p2bodydist x>=160 && random<200
trigger2= !(enemynear,movetype=A) && (enemynear,STATETYPE = L) && p2bodydist x>=160 && random<500


;-------------------------------
;        AI COMBOS!!!
;-------------------------------

[State -1, AI Combo 1]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
trigger1 = PREVstateno = 1200
trigger1 = movehit                                                    
value = 1230
trigger1 = ctrl

[State -1, Ai Combo 2]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
trigger1 = PREVstateno = 1211 && p2bodydist x < 30     
trigger1 = p2movetype = H                                                          
value = 1240
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ai 40% life stand ligth punch, stand light kick, crouch light lick, foward claw, slide kick storng
[State -1, Ai Combo 3]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerall = life < 400
trigger1 = stateno = 200
trigger1 = moveCONTACT                                  ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 230

[State -1, Ai Combo 3]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerall = life < 400
trigger1 = stateno = 230
trigger1 = moveCONTACT                                       ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 430

[State -1, Ai Combo 3]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerall = life < 400
trigger1 = stateno = 430
trigger1 = moveCONTACT                                       ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 210

[State -1, Ai Combo 3]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerall = life < 400
trigger1 = stateno = 210
trigger1 = moveHIT                                       ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 1060

;---------------------------------------------------------------------------
; AI LIFE GREATER THAN 80% Light Punch stand, strong punch stand, strong fireball, block, back dash
[State -1, Ai Combo 4]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerall = life > 800
trigger1 = stateno = 200
trigger1 = movecontact                                     ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 205

[State -1, Ai Combo 4]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerall = life > 800
trigger1 = stateno = 205
trigger1 = movecontact                                      ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 1010

[State -1, Ai Combo 4]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
trigger1 = stateno = 1010
trigger1 = moveguarded                                     ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 105

;---------------------------------------------------------------------------
; AI LIFE 85% Crouch light punch > Crouch ligth kick > Sweep > Back dash
[State -1, Ai Combo 5]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerall = life > 850
trigger1 = stateno = 400
trigger1 = movecontact                                       ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 430

[State -1, Ai Combo 5]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerall = life > 850
trigger1 = stateno = 430
trigger1 = movecontact                                       ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 440

[State -1, Ai Combo 5]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerall = life > 850
trigger1 = stateno = 440
trigger1 = movecontact                                       ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 105

;---------------------------------------------------------------------------
; AI Air combo Crouch light punch > Crouch Strong Punch > Jump > Light Air Punch > Light Air Kick > Strong Air Kick
[State -1, Ai Combo6 ]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
trigger1 = stateno = 400
trigger1 = movehit                                    ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 410

[State -1, Jump]
type = ChangeState
value = 40
triggerall = var(59) = 1 && roundstate = 2 && numenemy
triggerall = statetype !=A
triggerall = movehit =1 && stateno = 410
trigger1 = ctrl
trigger2 = Time >= 10

[State -1, Ai Combo6 ]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
trigger1 = stateno = 40
trigger1 = time > 10                             ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 600

[State -1, Ai Combo6 ]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
trigger1 = stateno = 600
trigger1 = movecontact                             ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 630

[State -1, Ai Combo6 ]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
trigger1 = stateno = 630
trigger1 = movecontact                              ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 640

;===========================================================================
;                               SUPER MOVES
;===========================================================================

[State -1, Beam Cannon]
type = ChangeState
value = 3000
triggerall = var(59)=0
triggerall = command = "Spbeamcannon"
triggerall = power >=1500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(1)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != 3000
trigger2 = movecontact

[State -1, AI Beam Cannon]
type = ChangeState
value = 3000
triggerall = var(59)=1&& ROUNDSTATE = 2
triggerall = power >=1500
TRIGGER1 = LIFE > 400
triggerall = !(enemynear,hitfall) && p2stateno!=5120 
triggerALL = STATETYPE !=A
TRIGGER1 = P2STATETYPE != L
TRIGGER1 = P2BODYDIST X = [150,250]
TRIGGER1 = P2STATETYPE !=C
trigger1 = ctrl && random<var(50)*1.1
trigger2 = stateno = 499 && movehit > 3 && time > 10
TRIGGER3 = P2STATENO = 90000 && TIME >1

;---------------------------------------------------------------------------
[State -1, HELLZONE]
type = ChangeState
value = 3500
triggerall = var(59)=0
triggerall = command = "HELLZONE" 
triggerall = power >=1500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(1)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != 3000
trigger2 = movecontact

[State -1, Ai HELLZONE]
type = ChangeState
value = 3500
triggerall = var(59)=1
triggerall = power >=2500
triggerall = life > 750
trigger1 = statetype = S && statetype !=A
trigger1 = p2bodydist x < 30
trigger1 = ctrl
trigger1 = var(1)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != 3000
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, NamekRage]
type = ChangeState
value = 3100
triggerall = var(59)=0
triggerall = command = "NamekRage"
triggerall = power >=2500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = var(1)
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA

[State -1, AI Namekchaos]
type = ChangeState
value = 3100
triggerall = var(59)=1&& ROUNDSTATE = 2
triggerall = power >=2500
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = LIFE < 400
triggerALL = STATETYPE !=A
TRIGGER1 = P2BODYDIST X = [100,200]
TRIGGER1 = P2MOVETYPE = A
TRIGGER1 = P2STATETYPE !=L
trigger1 = ctrl && random<var(50)*1.1
TRIGGER2 = P2STATENO = 90000 && TIME >1

;===========================================================================

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;===========================================================================
;                               SPECIAL MOVES
;===========================================================================

[State -1, Sliding Retort Kick EX]
type = ChangeState
value = 1070
triggerall = var(59)=0
triggerall = power >= 500
triggerall = command = "Sliding Retort Kick_ab"
trigger1 = var(1)

[State -1, AI Sliding Retort Kick EX]
type = ChangeState
value = 1070
triggerall = var(59) = 1&& ROUNDSTATE = 2
triggerall = power >= 500
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGERALL = STATETYPE !=A
triggerall = movetype !=H
TRIGGER1 = P2STATETYPE !=C && P2STATETYPE !=A
TRIGGERALL = P2BODYDIST X =[100,135]
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = CTRL && ENEMYNEAR,NUMPROJ > 1
TRIGGER3 = CTRL && ENEMYNEAR,NUMHELPER > 1

;---------------------------------------------------------------------------
[State -1, Sliding Retort Kick Light]
type = ChangeState
value = 1050
triggerall = var(59)=0
triggerall = command = "Sliding Retort Kick_a"
trigger1 = var(1) ;Use combo condition (above)

[State -1, Sliding Retort Kick Light]
type = ChangeState
value = 1050
triggerall = var(59)=1&& ROUNDSTATE = 2
TRIGGERALL = STATETYPE !=A
triggerall = movetype !=H
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = P2BODYDIST X =[70,100]
TRIGGER1 = P2STATETYPE !=C && P2STATETYPE !=A
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = CTRL && ENEMYNEAR,NUMPROJ > 1
TRIGGER3 = CTRL && ENEMYNEAR,NUMHELPER > 1

;---------------------------------------------------------------------------
[State -1, Sliding Retort Kick Strong]
type = ChangeState
value = 1060
triggerall = var(59)=0
triggerall = command = "Sliding Retort Kick_b"
trigger1 = var(1) ;Use combo condition (above)

[State -1, AI Sliding Retort Kick Strong]
type = ChangeState
value = 1060
triggerall = var(59)=1 && roundstate = 2
TRIGGERALL = STATETYPE !=A
triggerall = movetype !=H
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = P2BODYDIST X =[150,180]
TRIGGER1 = P2STATETYPE !=C && P2STATETYPE !=A
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = CTRL && ENEMYNEAR,NUMPROJ > 1
TRIGGER3 = STATENO = 210 && MOVEHIT

;---------------------------------------------------------------------------
[State -1, AirsonicKick]
type = changestate
value = 1500
triggerall = var(59)=0
triggerall = command = "AirsonicKick"
triggerall = Pos Y < -80
triggerall = statetype = A
trigger1 = ctrl

[State -1, AI AirsonicKick]
type = changestate
value = 1500
triggerall = var(59)=1&& ROUNDSTATE = 2
triggerall = statetype !=S 
triggerall = Pos Y < -80
TRIGGERALL = LIFE < 500
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = P2BODYDIST X =[50,90]
TRIGGER1 = P2STATETYPE !=C && P2STATETYPE !=A
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = STATENO = 600 && MOVEHIT && P2STATETYPE = A

;---------------------------------------------------------------------------
[State -1, Forcefield]
type = changestate
value = 1600
triggerall = var(59)=0
triggerall = command = "Forcefield"
triggerall = statetype != A
trigger1 = ctrl

[State -1, AI Forcefield]
type = changestate
value = 1600
triggerall = var(59) = 1 && ROUNDSTATE = 2
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
triggerall = statetype != A
triggerall = statetype = S
TRIGGERALL = MOVETYPE !=H
TRIGGER1 = P2BODYDIST X =[-20,20]
TRIGGER1 = P2MOVETYPE = A
trigger1 = enemynear,numproj = 0
trigger1 = enemynear,numhelper = 0
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
[State -1, AIR FIREBALL]
type = changestate
value = 1700
triggerall = var(59)=0
triggerall = command = "Airfireball"
triggerall = Pos Y < -80
TRIGGERALL = NUMHELPER = 0 && NUMPROJ = 0
triggerall = statetype = A
trigger1 = ctrl

[State -1, AI AIR FIREBALL]
type = changestate
value = 1700
triggerall = var(59)=1&& ROUNDSTATE = 2
TRIGGERALL = POS Y < -80
TRIGGERALL = NUMHELPER = 0 && NUMPROJ = 0
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
triggerall = statetype = A && STATETYPE !=S
TRIGGER1 = P2BODYDIST X =[70,140]
trigger1 = CTRL && random<var(50)*1.1
trigger2 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
[State -1, Flame EX]
type = ChangeState
value = 1020
triggerall = var(59)=0
triggerall = command = "Flame_EX"
TRIGGERALL = NUMHELPER = 0
TRIGGERALL = NUMPROJ = 0
triggerall = power >= 500
trigger1 = var(1) 

[State -1, AI Flame EX]
type = ChangeState
value = 1020
triggerall = var(59)=1&& ROUNDSTATE = 2
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGERALL = STATETYPE !=A
TRIGGERALL = LIFE = [500,600]
TRIGGERALL = NUMHELPER = 0
TRIGGERALL = NUMPROJ = 0
triggerall = power >= 2000 && STATETYPE !=A
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
[State -1, Fireball_L]
type = ChangeState
value = 1000
triggerall = var(59)=0
triggerall = command = "Fireball_L"
TRIGGERALL = NUMHELPER = 0
TRIGGERALL = NUMPROJ = 0
trigger1 = var(1)

[State -1, AI Fireball_L]
type = ChangeState
value = 1000
triggerall = var(59)=1&& ROUNDSTATE = 2
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGERALL = STATETYPE !=A
TRIGGER1 = NUMPROJ = 0
TRIGGER1 = NUMHELPER = 0
TRIGGER1 = P2BODYDIST X =[200,300]
TRIGGER1 = P2STATETYPE = S && P2STATETYPE !=A
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
[State -1, Fireball_S]
type = ChangeState
value = 1010
triggerall = var(59)=0
triggerall = command = "Fireball_S"
TRIGGERALL = NUMHELPER = 0
TRIGGERALL = NUMPROJ = 0
trigger1 = var(1) ;Use combo condition (above)

[State -1, AI Fireball_S]
type = ChangeState
value = 1010
triggerall = var(59)=1&& ROUNDSTATE = 2
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGERALL = NUMHELPER = 0
TRIGGERALL = NUMPROJ = 0
TRIGGERALL = STATETYPE !=A
TRIGGER1 = P2BODYDIST X =[100,175]
TRIGGER1 = P2STATETYPE = S && P2STATETYPE !=A
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = STATENO = 210 && MOVECONTACT

;---------------------------------------------------------------------------
[State -1, Extend Arm Light]
type = ChangeState
value = 1200
triggerall = var(59)=0
triggerall = command = "Arm_L"
trigger1 = var(1)

[State -1, AI Extend Arm Light]
type = ChangeState
value = 1200
triggerall = var(59)=1 && ROUNDSTATE = 2
TRIGGERALL = STATETYPE !=A
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGERALL = P2BODYDIST X =[65,100]
TRIGGERALL = ENEMYNEAR,NUMPROJ = 0 && ENEMYNEAR,NUMHELPER = 0
TRIGGER1 = P2STATETYPE != A && enemy, vel x < 0
TRIGGER1 = P2STATETYPE = S && P2STATETYPE !=C
trigger1 = CTRL && random<var(50)*1.1 || p2stateno = 105 || p2stateno = 52 || p2stateno = 101


;---------------------------------------------------------------------------
[State -1, Strong Extend Arm]
type = ChangeState
value = 1210
triggerall = var(59)=0
triggerall = command = "Arm_S"
TRIGGERALL = NUMPROJ = 0 && NUMHELPER = 0
trigger1 = var(1) ;Use combo condition (above)

[State -1, AI Strong Extend Arm]
type = ChangeState
value = 1210
triggerall = var(59)=1&& ROUNDSTATE = 2
TRIGGERALL = STATETYPE !=A
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGERALL = ENEMY, STATENO !=[3000,4999]
TRIGGER1 = P2BODYDIST X =[110,180]
TRIGGERALL = ENEMYNEAR,NUMPROJ = 0 && ENEMYNEAR,NUMHELPER = 0
TRIGGER1 = P2STATETYPE !=A
TRIGGER1 = P2STATETYPE !=L
trigger1 = CTRL && random<var(50)*1.1 
trigger2 = stateno = 240 && moveguarded

;---------------------------------------------------------------------------
[State -1, KneeUppercut_LIGHT]
type = ChangeState
value = 1400
triggerall = var(59)=0
triggerall = command = "KneeUppercut_a"
trigger1 = var(1) ;Use combo condition (above)

[State -1, AI KneeUppercut_LIGHT]
type = ChangeState
value = 1400
triggerall = var(59)=1&& ROUNDSTATE = 2
TRIGGERALL = STATETYPE !=A
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = P2BODYDIST X =[0,40]
TRIGGER1 = P2STATETYPE = S && P2MOVETYPE = A
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = STATENO = 260 && MOVEGUARDED
TRIGGER3 = STATENO = 205 && MOVEHIT

;---------------------------------------------------------------------------
[State -1, KneeUppercut_Strong]
type = ChangeState
value = 1410
triggerall = var(59)=0
triggerall = command = "KneeUppercut_b"
trigger1 = var(1) ;Use combo condition (above)

[State -1, AI Kneeattack_Strong]
type = ChangeState
value = 1410
triggerall = var(59)=1&& ROUNDSTATE = 2
TRIGGERALL = STATETYPE !=A
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGERALL = LIFE > 500
TRIGGER1 = P2BODYDIST X = [50,100]
TRIGGER1 = P2STATETYPE = A && VEL X > 0
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = STATENO = 1050 && MOVEHIT

;---------------------------------------------------------------------------
[State -1, Shock Light]
type = ChangeState
value = 1800
triggerall = var(59)=0
triggerall = command = "shock_light"
TRIGGERALL = NUMHELPER = 0
TRIGGERALL = NUMPROJ = 0
triggerall = power > 250
trigger1 = var(1)

[State -1, AI Shock Light]
type = ChangeState
value = 1800
triggerall = var(59) = 1&& ROUNDSTATE = 2
TRIGGERALL = STATETYPE !=A
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGERALL = LIFE = [600,700]
TRIGGER1 = P2BODYDIST X =[20,50]
TRIGGERALL = NUMHELPER = 0
TRIGGERALL = NUMPROJ = 0
triggerall = power > 1500
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = ENEMY,BACKEdgebodydist <= 25 && P2MOVETYPE !=H

;---------------------------------------------------------------------------
[State -1, Shock Strong]
type = ChangeState
value = 1810
triggerall = var(59)=0
triggerall = command = "shock_strong"
TRIGGERALL = NUMHELPER = 0
TRIGGERALL = NUMPROJ = 0
triggerall = power > 350
trigger1 = var(1)

[State -1, AI Shock Strong]
type = ChangeState
value = 1810
triggerall = var(59)=1&& ROUNDSTATE = 2
TRIGGERALL = STATETYPE !=A
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGERALL = LIFE = [300,200]
triggerall = power > 1500
TRIGGERALL = NUMHELPER = 0
TRIGGERALL = NUMPROJ = 0
TRIGGER1 = P2BODYDIST X =[20,50]
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = ENEMY,BACKEdgebodydist <= 25 && P2MOVETYPE !=H

;===========================================================================
;                               BASIC MOVES
;===========================================================================

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59)=0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI RUN FWD]
type = ChangeState
value = 100
triggerall = var(59)=1 && RoundState = 2
triggerall = Enemynear,movetype != A
triggerall = P2bodydist X >= 150
triggerall = statetype != A
triggerall = enemy, numproj = 0 && ENEMY, NUMHELPER = 0
trigger1 = stateno != [100,105]
trigger1 = movetype = I
trigger1 = ctrl||stateno=22
trigger1 = stateno != [120,131]
ignorehitpause = 0

[State -1, Air Run Fwd]
type = ChangeState
value = 110
triggerall = var(59)=0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59)=0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Run Back]
type = ChangeState
value = 105
triggerall = var(59)=1 && RoundState = 2
triggerall = Enemy,movetype = A
triggerall = P2bodydist X = [60,100)
triggerall = BackEdgeBodyDist > 10
triggerall = statetype != A
triggerall = enemy, numproj = 0
trigger1 = stateno != [100,105]
trigger1 = movetype = I
trigger1 = ctrl||stateno=22
ignorehitpause = 0

[State -1, Air Run Back]
type = ChangeState
value = 111
triggerall = var(59)=0
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(59)=0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, AI THROW]
type = ChangeState
value = 800
triggerall = var(59)=1 && RoundState = 2
triggerall = statetype = S && Statetype !=A
triggerall = p2statetype = S && P2BodyDist X<10
trigger1 = CTRL && random<var(50)*1.1
trigger1 = StateNo=50
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
[State -1, Power Charge]
type = CHANGESTATE
VALUE= 9000
triggerall = var(59)=0
TRIGGER1 = POWER < CONST(DATA.POWER) || POWER < POWERMAX
Trigger1 = COMMAND = "hold_c"
trigger1 = STATETYPE = S && CTRL

[State -1, AI Power Charge]
type = CHANGESTATE
VALUE= 9000
triggerall = var(59) = 1 && ROUNDSTATE = 2
triggerALL = STATETYPE = S
TRIGGERALL = POWER < CONST(DATA.POWER) || POWER < POWERMAX
Trigger1 = P2BODYDIST X > 200
TRIGGER1 = P2STATETYPE = L && P2MOVETYPE !=A
trigger1 = CTRL && random<var(50)*1.1

;==========================================================================
[State -1, Striker Gohan!!!]
type = ChangeState
value = 499
triggerall = var(59)=0
triggerall = command = "z"
triggerall = power > 1000
triggerALL = NumHELPER = 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Gohan]
type = ChangeState
value = 499
triggerall = var(59)=1 && RoundState = 2
triggerall = power > 1000
triggerALL = NumHELPER = 0
TRIGGERALL = ENEMY, NUMHELPER = 0 && ENEMY, NUMPROJ = 0
triggerALL = statetype = S
TRIGGER1 = P2BODYDIST X = [100,175]
TRIGGER1 = P2STATETYPE != A && P2STATETYPE = L
trigger1 = CTRL && random<var(50)*1.1

;===========================================================================
;                               Dir + ATTACK MOVES
;===========================================================================

[State -1, Stand Foward Claw]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1, AI Stand Foward Claw]
type = ChangeState
value = 210
triggerall = var(59)=1 && RoundState = 2
trigger1 = statetype = S
TRIGGER1 = P2STATETYPE !=A
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = ENEMYNEAR,NUMPROJ = 0 
TRIGGER1 = ENEMYNEAR,NUMHELPER = 0
TRIGGER1 = P2BODYDIST X = [100,150]
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
[State -1, Foward Thrust Kick]
type = ChangeState
value = 260
triggerall = var(59) = 0
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = CTRL 

[State -1, AI Foward Thrust Kick]
type = ChangeState
value = 260
triggerall = var(59)=1 && RoundState = 2
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = ENEMYNEAR,NUMPROJ = 0 
TRIGGER1 = ENEMYNEAR,NUMHELPER = 0
TRIGGER1 = P2BODYDIST X = [45,85]
TRIGGER1 = P2STATETYPE = C && P2STATETYPE !=A
triggerALL = statetype = S
trigger1 = CTRL && random<var(50)*1.1

;===========================================================================
;                               NORMAL ATTACK MOVES
;===========================================================================

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 100

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59)=1 && RoundState = 2
triggerALL = statetype = S
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
trigger1 = P2STATETYPE !=A
triggerall= (p2bodydist x=[0,45]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=C) && !(enemynear,statetype=L)
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 205
triggerall = var(59)=0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1, AI Stand Strong Punch]
type = ChangeState
value = 205
triggerall = var(59)=1 && RoundState = 2
triggerALL = statetype = S
triggerall= (p2bodydist x=[35,50]) && (p2bodydist y=[-50,50]) && !(enemynear,statetype=A) && !(enemynear,statetype=L)
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = P2STATETYPE !=A
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59)=0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59)=1 && RoundState = 2
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
triggerall= (p2bodydist x=[40,60]) && (p2bodydist y=[0,50]) && !(enemynear,statetype=C) && !(enemynear,statetype=L)
TRIGGER1 = P2STATETYPE !=A
trigger1 = statetype = S
trigger1 = CTRL && random<var(50)*1.1
trigger2 = stateno = 1400 && movehit && ENEMY,BACKEdgebodydist <= 25

;---------------------------------------------------------------------------
[State -1, Air Launcher]
type = ChangeState
value = 250
triggerall = var(59)=0
triggerall = command = "b"
triggerall = command != "holddown"
TRIGGERall = prevSTATENO = 100
trigger1 = statetype = S
trigger1 = CTRL 

[State -1, AI Air Launcher]
type = ChangeState
value = 250
triggerall = var(59) = 1 && RoundState = 2
triggerall= (p2bodydist x=[0,20]) && (p2bodydist y=[-30,50]) 
triggerALL = statetype != A
triggerall = prevstateno !=250
triggerall = prevstateno = 100 
trigger1 = CTRL || stateno!=105

[State -1, Ai Air Launcher Jump]
type = ChangeState
triggerall = var(59) = 1 && ROUNDSTATE = 2
trigger1 = stateno = 250
trigger1 = time > 10                             ;move has connected (P2 was hit)                                   ;perform this move 75% of the time
value = 40

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59)=0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1, AI Standing Strong Kick]
type = ChangeState
value = 240
triggerall = var(59)=1 && RoundState = 2
triggerall = statetype = S
triggerall= (p2bodydist x=[50,65]) && (p2bodydist y=[-50,-100]) && !(enemynear,statetype=C) && !(enemynear,statetype=L)
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = P2STATETYPE = A
trigger1 = CTRL && random<var(50)*1.1
trigger2 = stateno = 230 && movecontact
trigger3 = p2statetype = A && P2MOVETYPE = H && ENEMY,BACKEdgebodydist <= 40

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59)=0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59)=1 && RoundState = 2
TRIGGERALL = (enemynear,hitfall) && p2stateno=5120 
TRIGGER1 = P2STATETYPE = L && P2MOVETYPE !=A
TRIGGER1 = ENEMYNEAR,NUMPROJ = 0 && ENEMYNEAR,NUMHELPER = 0
TRIGGER1 = P2BODYDIST X > 220
trigger1 = statetype != A
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 430 && movecontact
trigger5 = stateno = 230 && movecontact

[State -1, AI Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59)=1 && RoundState = 2
triggerALL = statetype = C
triggerall= (p2bodydist x=[40,60]) && (p2bodydist y=[0,50]) && (enemynear,statetype=C) && !(enemynear,statetype=L)
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
TRIGGER1 = P2STATETYPE !=A && P2STATETYPE = L
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59)=0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 230 && movecontact

[State -1, Jump]
type = ChangeState
value = 40
triggerall = var(59)=0
triggerall = statetype !=A
triggerall = movehit =1 && command = "holdup"
trigger1 = ctrl
trigger2 = stateno = 250
trigger3 = Time >= 5

[State -1, AI Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59)=1 && RoundState = 2
triggerALL = statetype = C
triggerall= (p2bodydist x=[0,35]) && (p2bodydist y=[0,-20]) && !(enemynear,statetype=C) && !(enemynear,statetype=L)
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
trigger1 = CTRL && random<var(50)*1.1
trigger2 = stateno = 52 && p2movetype = H 

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact

[State -1, AI Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59)=1 && RoundState = 2
triggerALL = statetype = C
triggerall= (p2bodydist x=[20,50]) && (p2bodydist y=[-10,10]) && (enemynear,statetype=C) && (enemynear,statetype=L)
trigger1 = p2statetype !=A
trigger1 = CTRL && random<var(50)*1.1
TRIGGER2 = STATENO = 200 && MOVECONTACT

;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact

[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59)=1 && RoundState = 2
trigger1 = statetype = C
triggerall= (p2bodydist x=[70,110]) && (p2bodydist y=[0,-20]) && !(enemynear,statetype=C) && !(enemynear,statetype=L)
TRIGGERALL = !(enemynear,hitfall) && p2stateno!=5120 
trigger1 = CTRL && random<var(50)*1.1
trigger2 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)=1 && RoundState = 2
trigger1 = statetype = A
TRIGGER1 = P2BODYDIST X <35
TRIGGER1 = STATENO !=105
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59)=1 && RoundState = 2
triggerALL = statetype = A
TRIGGER1 = P2BODYDIST Y = enemy,const(size.head.pos.y)-20
TRIGGER1 = P2BODYDIST X = [50,100]
trigger1 = CTRL && random<var(50)*1.1
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59)=0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59)=0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, AI Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59)=1 && RoundState = 2
trigger1 = Vel Y >= 0 || P2statetype = A
trigger1 = P2bodydist X = [(Vel X*5),80 + (Vel X*5)]
trigger1 = P2bodydist Y = [40 - (P2statetype = A)*40,90]
trigger1 = statetype = A
trigger1 = CTRL && random<var(50)*1.1

;---------------------------------------------------------------------------
;                                AI
;---------------------------------------------------------------------------

[State -1, AI ON]  ; Turn the AI on when
Type = VarSet
triggerall = Var(59)=1 ; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value = 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
triggerall = Var(59)=0  ; it is on and
Trigger1=RoundState!=2  ; the round is not started yet or is already over
Trigger2=!IsHelper  ; OR if we are a player, but
Trigger2=AILevel=0  ; the computer is not in control
v = 59
value = 0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1, AI Difficulty]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

[State -1, Guard AI]
Type=Changestate
Triggerall=Inguarddist ; Guard when in guard distance
triggerall = Var(59)=1 ; and the AI is on
Triggerall=ctrl ; and we have control
Trigger1 = random< (var(50)*2+(AiLevel>=3)*30) ; chance is a bit higher than for attacking, but not too much. There still is a chance for missing a guard even on difficulty level 7. Only the maximum level is guarding perfectly.
value=120

[State -1, Disable Control Guard for AI] ; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0 
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard