F7::


 
Loop {    
    Click 800, 900          ; Play
    Sleep 500
    Click 1400, 950	        ; Expert
    Sleep 500
    Click 1644, 428          ; Dark Castle
    Click 1350, 250 
    Sleep 500
    Click 550, 400          ; Easy
    Sleep 100
    Click 1279, 447          ; Deflation
    Sleep 5000
    Click 980, 760          ; Ok
    Sleep 750
    Click 1712, 230          ; Hero (Obyn)
    Sleep 150
    Click 875, 446
    MouseMove 1766, 412          ; scroll  
    Send, {Wheeldown 20}
    Sleep 100
    Click 1713, 475               ;Ninja 1 
    Sleep 100
    Click 798, 446
    Sleep 100
    Click 798, 446
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 780
    Sleep 100
    Click 1550, 780
    Sleep 100
    Click 1713, 475              ; Ninja 2 
    Sleep 100
    Click 733, 443
    Sleep 100
    Click 733, 443
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 780
    Sleep 100
    Click 1550, 780
    Sleep 100
    Click 1713, 475           ; Ninja 3
    Sleep 100 
    Click 683, 407
    Sleep 100
    Click 683, 407
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 780
    Sleep 100
    Click 1550, 780
    Sleep 100
    Click 1815, 450         ; Alchemist
    Sleep 100
    Click 749, 388
    Sleep 100
    Click 749, 388
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1815, 450         ; Alchemist 2 
    Sleep 100
    Click 814, 389
    Sleep 100
    Click 814, 389
    Sleep 100
    Click 1550, 490
    Sleep 100
    Click 1550, 490
    Sleep 100
    MouseMove 1766, 412          ; scroll  
    Send, {Wheelup 30}
    Sleep 100
    Click 1830, 625              ; Sniper
    Sleep 100
    Click 1457, 559
    Sleep 100
    Click 1457, 559
    Sleep 100
    Click 330, 630
    Sleep 100
    Click 80, 375
    Sleep 100
    Click 1810, 1010            ; Start
    Sleep 100
    Click 1810, 1010
    Click 900, 900
    InnerStartTime := A_TickCount ; Get the current tick count at the start the inner loop
    Duration := 312750 ; Set duration of PixelSearch loop so it only triggers during gameplay
    Loop ; Run the inner loop
    {
        
        ; Code to run in the inner loop goes here
        PixelSearch, Px, Py, 870, 337, 1031, 499, 0x20D8FF, 3, Fast
        if (ErrorLevel = 0)
        {
        Sleep 200
        Click
        }
        InnerCurrentTime := A_TickCount ; Get the current tick count
        InnerElapsedTime := InnerCurrentTime - InnerStartTime ; Calculate how much time has passed
    
        if (InnerElapsedTime >= Duration)
            break ; Exit the inner loop if the specified duration has elapsed
    }

; Code to run after the inner loop finishes goes here
    Sleep 6000
    Click 970, 905
    Sleep 500
    Click 700, 850
    Sleep 2000
}
return


f8::
Exitapp
