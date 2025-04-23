#SingleInstance Force
#Warn
#NoTrayIcon


; Windows multimedia 

; previous song
~Right & 7::
KeyWait, 7
Send {Media_Prev}
return


; Pause
~Right & 8::
KeyWait, 8
send {Media_Play_Pause} 
return


; Next song
~Right & 9::
KeyWait, 9
send {Media_Next}
return


; Mute
~Right & 0::
KeyWait, 0
send {Volume_Mute}
return


; lower volume
~Right & -::
KeyWait, -
send {Volume_Down}
return


; Increase volume
~Right & =::
KeyWait, =
send {Volume_Up}
return


; To take screenshots with the controller in Steam (Win+PrtSc is now F14)
#PrintScreen::Send {F14}


; Function to send accented vowels depending on the CapsLock state
SendAccent(vocalLower, vocalUpper) {
    if GetKeyState("CapsLock", "T")
        Send %vocalUpper%
    else
        Send %vocalLower%
}


; Hotkey Alt + vocal
!a::SendAccent("á", "Á")
!e::SendAccent("é", "É")
!i::SendAccent("í", "Í")
!o::SendAccent("ó", "Ó")
!u::SendAccent("ú", "Ú")


; Alt + n = ñ/Ñ
!n::SendAccent("ñ", "Ñ")



