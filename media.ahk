#SingleInstance Force
#Warn
#NoTrayIcon

; Controles multimedia windows

; Cancion anterior
~Right & 7::
KeyWait, 7
Send {Media_Prev}
return

; Pausa
~Right & 8::
KeyWait, 8
send {Media_Play_Pause} 
return

; Cancion siguiente
~Right & 9::
KeyWait, 9
send {Media_Next}
return


; Mutear
~Right & 0::
KeyWait, 0
send {Volume_Mute}
return


; Bajar volumen
~Right & -::
KeyWait, -
send {Volume_Down}
return


; Subir volumen
~Right & =::
KeyWait, =
send {Volume_Up}
return


; Para sacar screenshots con el mando (Steam) Win+PrtSc es ahora el F14 
#PrintScreen::Send {F14}


; Función para enviar vocal acentuada según el estado de CapsLock
SendAccent(vocalLower, vocalUpper) {
    if GetKeyState("CapsLock", "T")
        Send %vocalUpper%
    else
        Send %vocalLower%
}

; Atajos con Alt + vocal
!a::SendAccent("á", "Á")
!e::SendAccent("é", "É")
!i::SendAccent("í", "Í")
!o::SendAccent("ó", "Ó")
!u::SendAccent("ú", "Ú")

; Alt + n para ñ/Ñ
!n::SendAccent("ñ", "Ñ")



