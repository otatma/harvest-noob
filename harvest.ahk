#Persistent
#SingleInstance force

;Defines the center of the screen.
;Auto detecting this from resolution would be hellofa cool.
;But for now I'll just edit it using autoit3.
centerx=478
centery=406

;Link size works ok at 18x18.  ish.
;Laser size..
;Missile size..
;Solar size...
;Harvester?


;Offsets used for the move function...
;Developed from the energy link range.
;If you want to change the grid size, do it here.
;X is the hori distance from cell center to cell edge.
;2*X is the hori distance from cell center to cell center.
;Y is the vert distance from cell center to cell center.
;gutter is the number of pixels away from the cell edge that
; energy links should be placed. (~9?)
movex=128
movey=210
gutter=8

;Approximate radius of laser building.
;Hypotenuses are a bitch when you don't know trig.
;Still working out how to use this info. 
las=20

Numpad1::Move(-movex,movey)
Numpad4::Move(-2*movex,0)
Numpad7::Move(-movex,-movey)
Numpad3::Move(movex,movey)
Numpad6::Move(2*movex,0)
Numpad9::Move(movex,-movey)
Numpad8::InstallD(centerx,centery,lasx,lasy)
Numpad5::ClaimE(centerx,centery,movex,movey,gutter)
Numpad2::InstallSD(centerx,centery)

;Move the camera while keeping a cell centered.
Move(x,y)
{
WinWait, Harvest - (c) Oxeye Game Studio, 
IfWinNotActive, Harvest - (c) Oxeye Game Studio, , WinActivate, Harvest - (c) Oxeye Game Studio, 
WinWaitActive, Harvest - (c) Oxeye Game Studio, 
Center()
SendInput {SPACE down}
MouseMove, x, y, 0, R
SendInput {SPACE up}
Sleep, 10
}

/* in progress.
;Lay down a grid of lasers in a spiral.
;xy is the center; ab is the laser size.
InstallD(x,y,a,b)
{
Center()
Send, d
MouseClick, left, x, y
MouseClick, left, x-a, y+b
MouseClick, left, x+a, y+b
MouseClick, left, x, y
Center()
}
*/

;Lay down a hex cell of 6 links.
;Allow a bit of room...
ClaimE(cx,cy,mx,my,g)
{
Center()
Send, e
MouseClick, left,  (cx-mx)+(.7*g), (cy+(my/3))-(.7*g)
Sleep, 10
MouseClick, left,  cx, (cy+2*(my/3))-(.7*g)
Sleep, 10
MouseClick, left,  (cx+mx)-(.7*g), (cy+(my/3))-(.7*g)
Sleep, 10
MouseClick, left,  (cx+mx)-(.7*g), (cy-(my/3))+(.7*g)
Sleep, 10
MouseClick, left,  cx, (cy-2*(my/3))+(.7*g)
Sleep, 10
MouseClick, left,  (cx-mx)+(.7*g), (cy-(my/3))+(.7*g)
Sleep, 10

Center()
}

InstallSD(x,y)
{
Center()
Send, s
MouseClick, left,  358,  427
Sleep, 10
MouseClick, left,  521,  287
Sleep, 10
MouseClick, left,  562,  485
Sleep, 10

Send, d
MouseClick, left,  501,  515
Sleep, 10
MouseClick, left,  357,  360
Sleep, 10
MouseClick, left,  566,  320
Center()
}



;Keep the pointer from wandering off.
Center()
{
MouseClick, right, centerx, centery
}
