;-| Button Remapping |-----------------------------------------------------
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
command.time = 15
command.buffer.time = 1
;-| Super Motions |--------------------------------------------------------

[Command]
name = "ANGRY EXPLOSION"
command = ~D, F, D, x+y
time = 25

[Command]
name = "ANGRY EXPLOSION"
command = ~D, F, D, ~x+y
time = 25

[Command]
name = "TURN YOU TO CHOCOLATE"
command = ~D, DB, B, D, DB, B, a
time = 25

[Command]
name = "TURN YOU TO CHOCOLATE"
command = ~D, DB, B, D, DF, B, ~a
time = 25

[Command]
name = "INNOCENCE LOCOMOTIVE"
command = ~D, DF, F, D, DF, F, a
time = 25

[Command]
name = "INNOCENCE LOCOMOTIVE"
command = ~D, DF, F, D, DF, F, ~a
time = 25

[Command]
name = "INNOCENCE WIND"
command = ~D, DF, F, D, DF, F, z
time = 25

[Command]
name = "INNOCENCE WIND"
command =  ~D, DF, F, D, DF, F, ~z
time = 25
;-| Special Motions |------------------------------------------------------ 
[Command]
name = "MAJIN TIPPER"
command = ~D, F, a
time = 20

[Command]
name = "MAJIN TIPPER"
command = ~D, F, ~a
time = 20
 
[Command]
name = "CHILDISH BREAKER"
command = ~F, D, F, a
time = 20

[Command]
name = "CHILDISH BREAKER"
command = ~F, D, F, ~a
time = 20
 
[Command]
name = "AWRY"
command = ~F, D, F, z
time = 20

[Command]
name = "AWRY"
command = ~F, D, F, ~z
time = 20
 
[Command]
name = "TRAIN"
command = ~D, DB, B, a
time = 20

[Command]
name = "TRAIN"
command = ~D, DB, B, ~a
time = 20

[Command]
name = "INNOCENCE"
command = ~D, DF, F, x
time = 20

[Command]
name = "INNOCENCE"
command = ~D, DF, F, ~x
time = 20
 
[Command]
name = "INNOCENCE 2"
command = ~D, DF, F, y
time = 20

[Command]
name = "INNOCENCE 2"
command = ~D, DF, F, ~y
time = 20
 
[Command]
name = "holdZ"
command = /z
time = 1

[Command]
name = "holdC"
command = /c
time = 1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF2"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB2"     ;Required (do not remove)
command = B, B
time = 15

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
name = "down_b"
command = /$D,b
time = 1

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
name = "KI - BlastU";Required (do not remove)
command = B+z
time = 1

[Command]
name = "KI - Blast";Required (do not remove)
command = F+z
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
name = "fwd";Required (do not remove)
command = F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "back";Required (do not remove)
command = B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U
time = 1

[Command]
name = "Up2" ;Required (do not remove)
command = U
time = 1

[Command]
name = "Up2" ;Required (do not remove)
command = U+B
time = 1

[Command]
name = "Up2" ;Required (do not remove)
command = U+F
time = 1

[Command]
name = "up+s" ;Required (do not remove)
command = D,U
time = 8

[Command]
name = "up+s" ;Required (do not remove)
command = D,U+B
time = 8

[Command]
name = "up+s" ;Required (do not remove)
command = D,U+F
time = 8

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holda";Required (do not remove)
command = /$a
time = 1

[Command]
name = "holdz";Required (do not remove)
command = /$z
time = 1

[Statedef -1]
 
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[State -1, SPIRIT OF SAIYANS]
type = ChangeState
value = 2100
triggerall = command = "ANGRY EXPLOSION"  
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact
trigger2 = stateno != [300,399) 

[State -1, HYPER HEAT PHALANX]
type = ChangeState
value = 2020
triggerall = command = "INNOCENCE WIND"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = [200,499]) && movecontact
trigger2 = stateno != [300,399) 

[State -1, RIOT JAVELIN]
type = ChangeState
value = 2000
triggerall = command = "INNOCENCE LOCOMOTIVE"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,499]) && movecontact
trigger2 = stateno != [300,399) 
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[State -1, CHILDISH BREAKER]
type = ChangeState
value = 1300
triggerall = command = "CHILDISH BREAKER"  
triggerall = POS Y < -45
triggerall = statetype = A || var(3)
trigger1 = ctrl
trigger2 = (stateno = [600,615]) && movecontact 
trigger3 = (stateno = 1200) && movecontact 
trigger4 = (stateno = 1405) && movecontact 

[State -1, MAJIN TIPPER]
type = ChangeState
value = 1400
triggerall = command = "MAJIN TIPPER"  
triggerall = POS Y < -45
triggerall = statetype = A || var(3)
trigger1 = ctrl
trigger2 = (stateno = [600,615]) && movecontact 
trigger3 = (stateno = 1200) && movecontact 

[State -1, CHILDISH AWRY] 
type = ChangeState
value = 1200
triggerall = command = "AWRY"  
triggerall = statetype != A || var(3)
trigger1 = ctrl
trigger2 = (stateno = [300,399]) = 0 && (anim = 221 && stateno = 220) = 0 && (stateno = [200,420]) && movecontact 
trigger3 = (stateno = 366) && var(11)

[State -1, INNOCENCE TRAIN]
type = ChangeState
value = 1100
triggerall = command = "TRAIN"  
triggerall = statetype != A || var(3)
trigger1 = ctrl
trigger2 = (stateno = [300,399]) = 0 && (anim = 221 && stateno = 220) = 0 && (stateno = [200,420]) && movecontact 
trigger3 = (stateno = 366) && var(11)

[State -1, INNOCENCE CANNON]
type = ChangeState
value = 1000
triggerall = command = "INNOCENCE" || command = "INNOCENCE 2" && (numhelper(8002) || numhelper(8003) || numhelper(8020) || numhelper(8033)) = 0
triggerall = statetype != A || var(3)
trigger1 = ctrl
trigger2 = (stateno = [300,399]) = 0 && (anim = 221 && stateno = 220) = 0 && (stateno = [200,420]) && movecontact 
trigger3 = (stateno = 366) && var(11)
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[State -1, Charge]
type = ChangeState
value = 700
triggerall = Power < Powermax
triggerall = (command = "holdZ" && command = "holdC") && (stateno =[100,108]) = 0
triggerall = statetype = S 
trigger1 = ctrl 

[State -1, Throw]
type = ChangeState
value = 750 
triggerall = (command = "x" && command = "y") && (command = "holdfwd" || command = "holdback") 
triggerall = statetype = S 
trigger1 = ctrl && (stateno = 20 && time > 4 || (stateno = [100,109])) = 0

[State -1, KI Blast Up]
type = ChangeState
value = 370
triggerall = numhelper(8050) = 0 && numhelper(8060) = 0 && numhelper(8051) = 0
triggerall = (command = "a") && Power >=250
triggerall = (command ="holdback") && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = [305,399]) = 0
trigger2 = (stateno = 205) = 0 && (stateno = [200,420]) && movecontact
trigger3 = var(3)  

[State -1, KI Blast]
type = ChangeState
value = 365 
triggerall = numhelper(8050) = 0 && numhelper(8060) = 0 && numhelper(8051) = 0
triggerall = (command = "a") && Power >=250  
triggerall = command ="holddown" 
triggerall = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = [305,399]) = 0
trigger2 = (stateno = 205) = 0 && (stateno = [200,420]) && movecontact
trigger3 = var(3)  
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[State -1, Infinite Scramble]
type = ChangeState
value = 350
triggerall = var(9) = 1 && (command = "holdfwd" && command = "a") && (stateno =[100,108]) = 0
triggerall = statetype != A 
trigger1 = ctrl
trigger2 = ((stateno = [300,399]) = 0 && stateno = [200,499]) && (power >=1000 && movecontact)

[State -1, Infinite Attack]
type = ChangeState
value = 300
triggerall = command = "a" 
triggerall = statetype = S  || statetype !=A && command = "holddown" && power < 250
trigger1 = ctrl 
trigger2 = (stateno = 200 || stateno = 400 || stateno = 205 || stateno = 215 || stateno = 220) && movecontact
trigger3 = (stateno = 210 || stateno = 405 || stateno = 410) && movecontact
trigger4 = var(3) 
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[State -1, Custom Double Jumping]
type = ChangeState
value = 75
triggerall = command = "Up2" && var(2) = [1,2]
triggerall = POS Y < -45
triggerall = statetype = A 
trigger1 = (stateno = 50 && (Anim = [44,46]) && Animelemtime(1)>2) || (prevstateno = [110,111]) && Animtime = 0 && ctrl
trigger2 = (stateno = [600,620]) && movecontact
 
[State -1, Custom Jumping]
type = ChangeState
value = 40 
triggerall = command = "Up2"  
triggerall = statetype != A 
trigger1 = (stateno = [300,399]) = 0 && (stateno = [200,415]) && movecontact 

[State -1, DASHING]
type = ChangeState
value = 100 + (5 * command ="BB") 
triggerall = (command = "FF" || command = "BB") && (stateno =[100,108]) = 0 && (prevstateno =[100,108]) = 0 
triggerall = statetype = S 
trigger1 = ctrl 
trigger2 = stateno = 365 && Animelem = 1,6
trigger3 = stateno = 370 && Animelemtime(4)>0 

[State -1, Air DASHING]
type = ChangeState
value = 110 + (command = "BB2")
triggerall = POS Y <= -45 && var(2) > 0 && var(4) = 1
triggerall = (command = "FF2" || command = "BB2") && (stateno =[110,111]) = 0 && (prevstateno =[110,111]) = 0 
triggerall = statetype = A
trigger1 = ctrl || stateno = 1405 && anim = 1406 && Animelemtime(4)>2

[State -1, POWER DASHING]
type = ChangeState
value = 101 + (command = "holdback") 
triggerall = (Power >=500) && (command = "c") && (stateno =[100,108]) = 0
triggerall = statetype != A 
trigger1 = ctrl && (stateno = [120,155]) = 0
trigger2 = (stateno = 150 || stateno = 152) && Power >=1000
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[State -1, Respect]
type = ChangeState
value = 195
triggerall = statetype = S
triggerall = command = "start"
trigger1 = ctrl
trigger2 = var(3) 

[State -1, Stand Light Attack]
type = ChangeState
value = 200   
triggerall = command = "x"
triggerall = command != "holddown" && command !="holdfwd"
trigger1 = statetype = S 
trigger1 = ctrl  
trigger2 = var(3) 

[State -1, Stand Heavy Forward]
type = ChangeState
value = 205   
triggerall = command = "x"
triggerall = command != "holddown" && command ="holdfwd"
trigger1 = statetype = S 
trigger1 = ctrl 
trigger2 = (stateno = 205 || stateno = 220) = 0 
trigger2 = (stateno = [200,420]) && (statetype = A) = 0 && (movecontact)
trigger3 = var(3) 

[State -1, Stand Medium Attack]
type = ChangeState
value = 210 
triggerall = command = "y"
triggerall = command != "holddown"  
trigger1 = statetype = S 
trigger1 = ctrl 
trigger2 = (stateno = 200 || stateno = 400) && movecontact 
trigger3 = var(3) 

[State -1, Stand Heavy Attack]
type = ChangeState
value = 215
triggerall = command = "z" 
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 200 || stateno = 400) && movecontact
trigger3 = (stateno = 210 || stateno = 405) && movecontact
trigger4 = var(3) 

[State -1, Crouching Light Attack]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = var(3) 

[State -1, Stand Medium Attack]
type = ChangeState
value = 405
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C 
trigger1 = ctrl 
trigger2 = (stateno = 200 || stateno = 400) && movecontact
trigger3 = var(3) 

[State -1, Stand Heavy Attack]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C 
trigger1 = ctrl 
trigger2 = (stateno = 200 || stateno = 400) && movecontact
trigger3 = (stateno = 210 || stateno = 405) && movecontact
trigger4 = var(3) 

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Attack]
type = ChangeState
value = 605
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact

[State -1, Jump Heavy Attack]
type = ChangeState
value = 610
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 605) && movehit 

[State -1, Jump Heavy Ender]
type = ChangeState
value = 615
triggerall = command = "z" && command ="holddown"
triggerall = statetype = A 
trigger1 = (stateno = 610) && movehit 
;################################################################################################