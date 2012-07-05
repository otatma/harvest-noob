#Persistent
#SingleInstance force
;Defines the center of the screen.
;Auto detecting this from resolution would be hellofa cool.
;But for now I'll just edit it using autoit3.
centerx=478
centery=406

;Link x offset..  16.  
;Link y offset..  15.
;And I had laser offsets as 40/20?  Wtf?

;Offsets used for the move function...
;Developed from the energy link range.
;If you want to expand the grid, do it here.
movex=128
movey=209

;Offsets used for the laser functions...
;Attempting to isolate the 'size' of a laser.
;This allows me to place them close together,
;but reliably!
lasx=
lasy=

Numpad1::Move(-movex,movey)
Numpad4::Move(-2*movex,0)
Numpad7::Move(-movex,-movey)
Numpad3::Move(movex,movey)
Numpad6::Move(2*movex,0)
Numpad9::Move(movex,-movey)
Numpad8::InstallDSpiral()
Numpad5::ClaimE()
Numpad2::InstallSD()

;need a way to recenter...
;use x and y to move consistently

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

;Lay down a grid of 19 lasers linewise.
;Should be edited to use lasx/lasy.
InstallD()
{
Center()
Send, d
MouseClick, left,  393,  406
Sleep, 10
MouseClick, left,  433,  406
Sleep, 10
MouseClick, left,  473,  406
Sleep, 10
MouseClick, left,  513,  406
Sleep, 10
MouseClick, left,  553,  406
Sleep, 10

MouseClick, left,  413,  374
Sleep, 10
MouseClick, left,  453,  374
Sleep, 10
MouseClick, left,  493,  374
Sleep, 10
MouseClick, left,  533,  374
Sleep, 10

MouseClick, left,  413,  438
Sleep, 10
MouseClick, left,  453,  438
Sleep, 10
MouseClick, left,  493,  438
Sleep, 10
MouseClick, left,  533,  438
Sleep, 10

MouseClick, left,  433,  342
Sleep, 10
MouseClick, left,  473,  342
Sleep, 10
MouseClick, left,  513,  342
Sleep, 10

MouseClick, left,  433,  470
Sleep, 10
MouseClick, left,  473,  470
Sleep, 10
MouseClick, left,  513,  470
Sleep, 10
Center()
}

;Lay down a grid of lasers in a spiral.
InstallDSpiral()
{
Center()
Send, d
;stuff goes here
Center()
}

;Lay down a hex cell of 6 links.
ClaimE()
{
Center()
Send, e
MouseClick, left,  478,  267
Sleep, 10
MouseClick, left,  478,  536
Sleep, 10

MouseClick, left,  598,  334
Sleep, 10
MouseClick, left,  598,  469
Sleep, 10

MouseClick, left,  358,  334
Sleep, 10
MouseClick, left,  358,  469
Sleep, 10
Center()
}

InstallSD()
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
