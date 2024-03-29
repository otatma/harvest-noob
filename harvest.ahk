#Persistent
#SingleInstance force

;Defines the center of the screen.
;Auto detecting this from resolution would be hellofa cool.
;But for now I'll just edit it using autoit3.
centerx=808
centery=548
;478 406
;808 548

;Harvester?  Going to be a while, I think..  maybe color sensing?
lasx=42
lasy=36
solx=50
soly=45
misx=37
misy=31

;Offsets used for the move function...
;Developed from the energy link range.
;If you want to change the grid size, do it here.
;X is the hori distance from cell center to cell edge.
;2*X is the hori distance from cell center to cell center.
;Y is the vert distance from cell center to cell center.d
;gutter is the number of pixels away from the cell edge that
; energy links should be placed. (~9?)
movex=128
movey=210
gutter=8

Numpad1::Move(-movex,movey)
Numpad4::Move(-2*movex,0)
Numpad7::Move(-movex,-movey)
Numpad3::Move(movex,movey)
Numpad6::Move(2*movex,0)
Numpad9::Move(movex,-movey)
Numpad8::InstallD(centerx,centery,lasx,lasy)
Numpad5::ClaimE(centerx,centery,movex,movey,gutter)
Numpad2::InstallS(centerx,centery,solx,soly)
Numpad0::Center(centerx,centery)
NumpadDiv::InstallM(centerx,centery,misx,misy)
NumpadMult::UpgradeC(centerx,centery,misx,misy)
NumpadDot::UpgradeV(centerx,centery,misx,misy)
a::Unlink()
`::ExitApp

Unlink()
{
MouseClick, left,  56,  126
Center(centerx,centery)
}

;Move the camera while keeping a cell centered.
Move(x,y)
{
Center(centerx,centery)
SendInput {SPACE down}
MouseMove, x, y, 0, R
SendInput {SPACE up}
Sleep, 10
}

;Lay down a grid of lasers working out from the center.
;xy is the center; lxly is the laser size.
InstallD(x,y,lx,ly)
{
Center(centerx,centery)
Send, d
MouseClick, left, x, y
MouseClick, left, x-lx, y
MouseClick, left, x-(.5*lx), y+ly
MouseClick, left, x+(.5*lx), y+ly
MouseClick, left, x+lx, y
MouseClick, left, x+(.5*lx), y-ly
MouseClick, left, x-(.5*lx), y-ly
MouseClick, left, x-(1.5*lx), y-ly
MouseClick, left, x-(2*lx), y
MouseClick, left, x-(1.5*lx), y+ly
MouseClick, left, x-lx, y+(2*ly)
MouseClick, left, x, y+(2*ly)
MouseClick, left, x+lx, y+(2*ly)
MouseClick, left, x+(1.5*lx), y+ly
MouseClick, left, x+(2*lx), y
MouseClick, left, x+(1.5*lx), y-ly
MouseClick, left, x+lx, y-(2*ly)
MouseClick, left, x, y-(2*ly)
MouseClick, left, x-lx, y-(2*ly)
Center(centerx,centery)
}

InstallS(x,y,lx,ly)
{
Center(centerx,centery)
Send, s
MouseClick, left, x, y
MouseClick, left, x-lx, y
MouseClick, left, x-(.5*lx), y+ly
MouseClick, left, x+(.5*lx), y+ly
MouseClick, left, x+lx, y
MouseClick, left, x+(.5*lx), y-ly
MouseClick, left, x-(.5*lx), y-ly
MouseClick, left, x-(1.5*lx), y-ly
MouseClick, left, x-(2*lx), y
MouseClick, left, x-(1.5*lx), y+ly
MouseClick, left, x-lx, y+(2*ly)
MouseClick, left, x, y+(2*ly)
MouseClick, left, x+lx, y+(2*ly)
MouseClick, left, x+(1.5*lx), y+ly
MouseClick, left, x+(2*lx), y
MouseClick, left, x+(1.5*lx), y-ly
MouseClick, left, x+lx, y-(2*ly)
MouseClick, left, x, y-(2*ly)
MouseClick, left, x-lx, y-(2*ly)
Center(centerx,centery)
}

InstallM(x,y,lx,ly)
{
Center(centerx,centery)
Send, t
MouseClick, left, x, y
MouseClick, left, x-lx, y
MouseClick, left, x-(.5*lx), y+ly
MouseClick, left, x+(.5*lx), y+ly
MouseClick, left, x+lx, y
MouseClick, left, x+(.5*lx), y-ly
MouseClick, left, x-(.5*lx), y-ly
MouseClick, left, x-(1.5*lx), y-ly
MouseClick, left, x-(2*lx), y
MouseClick, left, x-(1.5*lx), y+ly
MouseClick, left, x-lx, y+(2*ly)
MouseClick, left, x, y+(2*ly)
MouseClick, left, x+lx, y+(2*ly)
MouseClick, left, x+(1.5*lx), y+ly
MouseClick, left, x+(2*lx), y
MouseClick, left, x+(1.5*lx), y-ly
MouseClick, left, x+lx, y-(2*ly)
MouseClick, left, x, y-(2*ly)
MouseClick, left, x-lx, y-(2*ly)
Center(centerx,centery)
}

UpgradeC(x,y,lx,ly)
{
Center(centerx,centery)
MouseClick, left, x, y
Send, c
MouseClick, left, x-lx, y
Send, c
MouseClick, left, x-(.5*lx), y+ly
Send, c
MouseClick, left, x+(.5*lx), y+ly
Send, c
MouseClick, left, x+lx, y
Send, c
MouseClick, left, x+(.5*lx), y-ly
Send, c
MouseClick, left, x-(.5*lx), y-ly
Send, c
MouseClick, left, x-(1.5*lx), y-ly
Send, c
MouseClick, left, x-(2*lx), y
Send, c
MouseClick, left, x-(1.5*lx), y+ly
Send, c
MouseClick, left, x-lx, y+(2*ly)
Send, c
MouseClick, left, x, y+(2*ly)
Send, c
MouseClick, left, x+lx, y+(2*ly)
Send, c
MouseClick, left, x+(1.5*lx), y+ly
Send, c
MouseClick, left, x+(2*lx), y
Send, c
MouseClick, left, x+(1.5*lx), y-ly
Send, c
MouseClick, left, x+lx, y-(2*ly)
Send, c
MouseClick, left, x, y-(2*ly)
Send, c
MouseClick, left, x-lx, y-(2*ly)
Send, c
Center(centerx,centery)
}

UpgradeV(x,y,lx,ly)
{
Center(centerx,centery)
MouseClick, left, x, y
Send, v
MouseClick, left, x-lx, y
Send, v
MouseClick, left, x-(.5*lx), y+ly
Send, v
MouseClick, left, x+(.5*lx), y+ly
Send, v
MouseClick, left, x+lx, y
Send, v
MouseClick, left, x+(.5*lx), y-ly
Send, v
MouseClick, left, x-(.5*lx), y-ly
Send, v
MouseClick, left, x-(1.5*lx), y-ly
Send, v
MouseClick, left, x-(2*lx), y
Send, v
MouseClick, left, x-(1.5*lx), y+ly
Send, v
MouseClick, left, x-lx, y+(2*ly)
Send, v
MouseClick, left, x, y+(2*ly)
Send, v
MouseClick, left, x+lx, y+(2*ly)
Send, v
MouseClick, left, x+(1.5*lx), y+ly
Send, v
MouseClick, left, x+(2*lx), y
Send, v
MouseClick, left, x+(1.5*lx), y-ly
Send, v
MouseClick, left, x+lx, y-(2*ly)
Send, v
MouseClick, left, x, y-(2*ly)
Send, v
MouseClick, left, x-lx, y-(2*ly)
Send, v
Center(centerx,centery)
}

;Lay down a hex cell of 6 links.
;Allow a bit of room...
ClaimE(cx,cy,mx,my,g)
{
Center(centerx,centery)
Send, e
MouseClick, left,  (cx-mx)+(.7*g), (cy+(my/3))-(.7*g)
MouseClick, left,  cx, (cy+2*(my/3))-(.7*g)
MouseClick, left,  (cx+mx)-(.7*g), (cy+(my/3))-(.7*g)
MouseClick, left,  (cx+mx)-(.7*g), (cy-(my/3))+(.7*g)
MouseClick, left,  cx, (cy-2*(my/3))+(.7*g)
MouseClick, left,  (cx-mx)+(.7*g), (cy-(my/3))+(.7*g)
Center(centerx,centery)
}

;Keep the pointer from wandering off.
Center(centerx,centery)
{
WinWait, Harvest - (c) Oxeye Game Studio, 
IfWinNotActive, Harvest - (c) Oxeye Game Studio, , WinActivate, Harvest - (c) Oxeye Game Studio, 
WinWaitActive, Harvest - (c) Oxeye Game Studio, 
MouseClick, right, centerx, centery
MouseMove, centerx, centery, 0
}
