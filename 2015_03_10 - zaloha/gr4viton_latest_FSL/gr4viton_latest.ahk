;/*********
;@project  gr4viton AHK script
;@filename gr4viton_latest
;@author   gr4viton
;@date     since 2011
;@brief    This scirpt is the best script in the world.. for me!
;*********/

SET_WIN7_SSD()
starMsg()
sleep 10

;; default programs
web := opera
web_new := web . " -newwindow"
txteditor := vim
;; dirs
;log_dir = E:\GDRIVE\mind\log\
log_dir = c:\_ALL\LOG\
ahk_dir = C:\_ALL\__NEEDED\gr4viton_latest\


;ctrl ^
;super #
;alt !
;shift +
;$exp to let it send itselft without loop
;if you dont know name of some key you want to use as a hotkey, find out which scan code does it send (i.e. via Microsoft Keyboard Maker), and write the hotkey i.e #sc56::something

SetCapsLockState, AlwaysOff


;;; to set the default script.. run the ah with parameters
;;; ah.exe->options-> [ah.exe "script.ahk"]

;#define obsah(x)   ((3.14)*(x)*(x))

;main {
;  int r = 10; 
;  int S = obsah(r);  
;  int S = ((3.14)*(r)*(r));
;}



;incl\ude        
dir_conf := "D:\BACKUP\app\control\autohotkey"
;dir_extras := "C:`\PROG`\control`\AutoHotkey`\Extras`\Scripts"
;dir_extras := "C:\PROG\control\AutoHotkey\Extras\Scripts"
;dir_extras = C:\PROG\control\AutoHotkey\Extras\Scripts
;dir_extras := "C:%\PROG%\control%\AutoHotkey%\Extras%\Scripts"
aa := "asdasdas"
;conf = %dir_conf% + KDE_resizing.ahk
;#include %conf%
                      
;MsgBox "aaa".aa."!!!"
;#include dir_extras."\KDE_resizing.ahk"            
;#include %A_WorkingDir%KDE_resizing.ahk


;#include %ScriptFullPath% "KDE_resizing.ahk"
;#include C:\PROG\control\AutoHotkey\Extras\Scripts\KDE_resizing.ahk   
;#include C:\PROG\control\AutoHotkey\Extras\Scripts\IntelliSense.ahk    

;Run Explorer %A_ScriptDir%

#include %A_ScriptDir%
#include KDE_resizing.ahk  

;#include E:\GDRIVE\control\ahk\macros\rozvrh m2 - ctrlT, f7 f8 f9 f10.ahk

;#include gr4viton_capslock.ahk        
;#include backspace_altup.ahk
          
;#include IntelliSense.ahk    


starMsg(){
MsgBox U have started gr4viton's AHK layout, the most usefull layout.. for me! %A_ScriptDir%
return
}

;#include comboAll.ahk
;+#!c::comboAll()

#!+x::Run AutoHotkey.exe %A_ScriptDir%\comboAll.ahk



;Hotstrings
;;names


:*:op]::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentDateTime,, yyyy_MM_dd
SendInput %CurrentDateTime%
return

:*:iop]::
FormatTime, CurrentDateTime,, dd-MM-yyyy
SendInput %CurrentDateTime%
return



;:*:aa:: COM16

:*:oop]::
FormatTime, CurrentDateTime,, yyyy-MM-dd
i = 0
 SendInput {F2}
sleep 80
loop 9{
 i := i+1
 char := SubStr(CurrentDateTime, i, 1)
 SendInput %char% 
sleep 40
 SendInput {LControl Down}{NumpadEnter}{LControl Up}
sleep 40
}
 char := SubStr(CurrentDateTime, 10, 1)
 SendInput %char% 
return

;; Form strings
:*:uu]::7723354782
:*:mo]::776753779
:*:lm]::lordmutty
:*:lmm]::lordmutty@gmail.com
:*:kkkk]::danieldavidek
:*:kk]::danieldavidek@gmail.com
:*:kkk]::xdavid10
:*:kll]::xdavid10@vutbr.cz

:*:kl]::910128

;; parsing functions
;____________________________________________________
;change_slashes(str)
; changes the slashes of the string to {sc35}
slashEm(str)
{
;{sc35}
return str
}
; mapa dve�e brno
; :*:mpmp::slashEm(http://goo.gl/maps/9KgSX)
:*:mpmp::http:{sc35}{sc35}goo.gl{sc35}maps{sc35}9KgSX


;; Signal strings
;:*:oo[::[] `
;:*:ooo[::[X] `
;^+z::Send [] `
;^+x::Send [X] `

;; Formating strings

:*:op[::%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:*:opp[::____________________________________________________
:*:oop[::
(
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>!!!<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
)
:*:ppo[::
(
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>???<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
)

:*:opop[::
(
><}}}}}*> ><((*> <*))>< ><((*> <*))>< ><((*> <*))>< ><((*> <*))>< <*}}}}}><
)

:*R0:ppp[::
(
%%%%%%%%%%%%%%%%%%%%%>  <%%%%%%%%%%%%%%%%%%%%%{left 23}
)

:*R0:pppp[::
(
_________>
)

:*R0:pp[::
(
{sc35}****************
 @brief One line description.
 More thorough description...
 ****************{sc35}
)




:*R0:jj[::
(
{sc35}****************************************************************************
@function   `
@brief      `		
@param[in]  `	
@param[out] `	
@return     `
************{sc35}
)
return

CurrentDateTime = 
FormatTime, CurrentDateTime,, yyyy_MM_dd
return
a := 10

:*R0:jjk[::
(
{sc35}*********
@project  `
@filename `	
@author   `
@date     `{%a%}
@brief    `				 
*********{sc35}
)
return


:*R0:jjkk[::
(
{sc35}*********
@project  `
@filename `
@author   `Daniel Davidek <danieldavidek@gmail.com>
@date     `{%a%}
@brief    `				 
*********{sc35}
)
return


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;matlab
:*:po[::',num2str(),'
:*:pop[::
(
SI=SI+1; subplot2(SY,SX,SI);
imshow(im,[]); title(title_str); axis tight
)

;c#
:*:opp[::%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{Enter}{#}region{Enter}%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%{Enter}{#}endregion{Enter}%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:*:lllllll::
(
;!alt;#super;^ctrl;+shift
)
:*:kkkk::
(
:%s###gc
)


;;heslo
;:*:svn@::h7EJcyY


;#z::Run www.autohotkey.com
;;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;; VARIABLES 
;- PROGRAM DIRECOTRIES

ASSIGN_prog(a_app, a_progNum, a_path)
{
; make it an array
prog1 = C:\PROG\
prog2 = Q:\PROG\
prog3 = E:\PROG\
progf1 = C:\Program Files (x86)\

 if(a_progNum = "C")
 {
   progDir = %prog1%
 }
 if(a_progNum = "E")
 {
   progDir = %prog3%
 }
 if(a_progNum = "Cf")
 {
   progDir = %progf1%
 }
 if(a_progNum = "Q")
 {
   progDir = %prog2%
 }

SetEnv, %a_app%, % progDir . a_path
}

SET_WIN7_SSD()
{

ASSIGN_prog(	"foobar", 	"E", 	"audio\foobar2000\foobar2000.exe")

;ASSIGN_prog(	"chrome", 	"Cf", 	"Google\Chrome\Application\chrome.exe")
; for now chrome is firefox
ASSIGN_prog(	"chrome", 	"Cf", 	"Users\B50002@freescale.com\AppData\Local\Mozilla Firefox\firefox.exe")
ASSIGN_prog(	"opera", 	"C", 	"internet\Opera\opera.exe")

;ASSIGN_prog(	"thunderbird", 	"Q", 	"internet\Thunderbird\thunderbird.exe")
ASSIGN_prog(	"thunderbird", 	"Q", 	"internet\Thunderbird\thunderbird.exe")

ASSIGN_prog(	"jdownloader", 	"E", 	"internet\JD2\JDownloader v2.0\JDownloader2.exe")

ASSIGN_prog(	"esmeska", 	"E", 	"internet\Esmska\esmska.exe")

ASSIGN_prog(	"vim", 		"c", 	"_ALL\PROG\office\gvim\GVimPortable\GVimPortable.exe")

}





;;legend for standard modifiers couples
;Autohotkey = !+^
;files & web-pages = #!, #!+
;RC files = #+^!
;APPS = #!
;man = #!^
;Directories = #


;Autohotkey = !+^
;;relod
!+^x::Reload


!+^z::RUN3("gr4viton_latest.ahk","Vim",ahk_dir)
!+^c::Run C:\_ALL\gr4__ESSENTIAL\PROG\ahk\AutoScriptWriter\AutoScriptWriter.exe
; ahk reload - old
;!+^r::Reload


;??
;sc - [] jak zistit? Abych mohl psat � velky -> v microsoft keyboard creatoru
;!+^e::Run C:\PROG\control\AutoHotkey\Extras\Scripts\gr4viton_latest.ahk 
;!+^w::Run C:\PROG\control\AutoHotkey\AutoScriptWriter\AutoScriptWriter.exe
;D:\BACKUP\app\control\autohotkey\gr4viton_latest.ahk

;Run ::{20d04fe0-3aea-1069-a2d8-08002b30309d}  ; Opens the "My Computer" folder.
;Run ::{645ff040-5081-101b-9f08-00aa002f954e}  ; Opens the Recycle Bin.


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;MIND = #+^
;theBrain & webbrain
#+^q::Run "http://webbrain.com/u/15RD"

+#sc56:: Run, E:PROG\dev\googlecl\google.exe docs edit "g_thisMonth" 


#z:: RUN3("thisMonth.vim", 	"Vim", log_dir)
^#z::KILL("thisMonth.vim", 	"Vim")

#x:: 	RUN3("inbox.vim", 	"Vim", log_dir)
^#x::	KILL("inbox.vim", 	"Vim")

#+x:: 	RUN3("bugs.vim", 	"Vim", log_dir)
^#+x::	KILL("bugs.vim", 	"Vim")


RUN2(a_file, a_ahkClass){
  SplitPath, a_file, OutFileName, OutDir
;msgbox %a_file%, %OutFileName%, %OutDir%
  RUN3(%OutFileName%, %a_ahkClass%, %OutDir%)

}

RUN3(a_title, a_ahkClass, a_path){
  IfWinExist, ahk_class %a_ahkClass%
  {
    IfWinExist, %a_title%
    {
      WinActivate
      return 0
    }
  }
;msgbox %a_path%%a_title%
  Run, % a_path . a_title
return 1
}

KILL(a_title, a_ahkClass){
  IfWinExist, ahk_class %a_ahkClass%
  {
    IfWinExist, %a_title%
    {
      WinClose
      return 0
    }
  }
return 1
}


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 	
;^sc56::
;Run, cmd.exe
;IfExist, Administrator
;WinActivate, Administrator
;Send, E:PROG\dev\googlecl\google.exe %clipboard% {Enter}
;Sleep, 5000
;WinClose, Administrator
;return



;____________________________________________________
; WORK
; FS
;dir = C:\_ALL\LOG\2014_05_15 - co modul to projekt


wdir = C:\_ALL\LOG\2014_05_15 - co modul to projekt
#1::Run C:\_ALL\LOG\2014_05_15 - co modul to projekt
#!1::Run C:\_ALL\LOG\2014_05_15 - co modul to projekt\task.txt

#2::Run u:\Davidek\LOG\LOGBOOK\2014_05_15 - co modul to projekt\
#!2::Run u:\Davidek\LOG\LOGBOOK\2014_06_12 - KDS projekty zkusit\
#3::Run U:\Davidek\LOG\LOGBOOK\2014_08_14 - KDS update testin\

;RUN3("task.txt", 	"Vim", wdir)

;!alt;#super;^ctrl;+shift

;evernote - old

;;https://www.evernote.com/Login.action?targetUrl=%2FHome.action#st=p&x=katka&n=ca7f9f75-7c07-4495-9339-862054e7e01e

;; criticalendar
;#+^q::Run evernote:///view/4759899/s44/a5e5804f-84a6-40e4-871d-d3ea3523dd27/a5e5804f-84a6-40e4-871d-d3ea3523dd27/
;; doing list
!#+^w::Run evernote:///view/4759899/s44/1625f2ee-08e2-4d02-935a-4d5c155f2e28/1625f2ee-08e2-4d02-935a-4d5c155f2e28/
;;actual month
#+!q::Run evernote:///view/4759899/s44/5db33d2d-5ca1-483a-aee4-8ba8375bc342/5db33d2d-5ca1-483a-aee4-8ba8375bc342/
; #+^a -add note
; #+^s - search note
;[] evernote https://www.evernote.com/Home.action#st=p

; odorik
!+#o::
Run https://www.odorik.cz/ucet/rychle_kontakty.html
Run https://www.odorik.cz/ucet/nastaveni_volani.html#cb_prozv
Run https://www.odorik.cz/ucet/platby.html
return




^#!c:: Run C:\PROG\dev\Freescale\CW MCU v10.6\eclipse\cwide.exe

;;;files & web-pages = #!, #!+
;;educ - web
;rozvrh
;;#!r::Run %chrome% "D:\EDUC\_INFO\rozvrh\m1\Student.mht"
#!r::Run C:\_ALL\gr4__ESSENTIAL\TEMP\2014_09_11 - m3rozvrh\m3_final_rozvrh.png
;c:\Users\B50002@freescale.com\Desktop\_ALL\LOG\2014_04_09 - rozvrh\TT.png
;index
#!e::Run %chrome% "https://www.vutbr.cz/studis/student.phtml?sn=el_index"
;terminy
#!+r::Run %chrome% "https://www.vutbr.cz/studis/student.phtml?sn=terminy_zk"
;elearning
#!+e::Run %chrome% "https://www.vutbr.cz/elearning/"

;git
#+!g::Run "https://github.com/gr4viton" 

;;google - web
;kontakty 
#!,::Run %chrome% "https://www.google.com/contacts/"
;calendar
;#!c::Run %chrome% "https://www.google.com/calendar/render?tab=wc"
#!c::Run firefox.exe https://www.google.com/calendar/render?pli=1
;mapy
;#!m::Run %chrome% "https://maps.google.com/maps?q=brno"
#!m::Run "https://maps.google.com/maps?q=brno"
;translate
;#!x::Run %chrome% "http://translate.google.com/#submit" 
#!x::Run "http://translate.google.com/#submit" 

#!w::Run %chrome% "goo.gl/D9bnK3" 

			
;drive
;#!z::Run %chrome% "https://drive.google.com/" 
;+#!z::Run %chrome% "https://drive.google.com/#starred" 




;;RC files = #+^!
;bash CYGWIN

#+^!b::Run %editor% E:\PROG\dev\cygwin\home\graviton\.bashrc
;#+^!b::Run E:\PROG\dev\cygwin\home\graviton\.bashrc





;APPS = #!
;audio - video
#!+a::Run C:\PROG\audio\MediaMonkey\MediaMonkey.exe
#!a::Run %foobar%
;#!o::Run C:\PROG\audio\Audacity\audacity.exe


#!v::Run Q:\PROG\video\vlc\vlc.exe
;disc
#!z::Run C:\totalcmd\TOTALCMD64.EXE

;net
#!t::Run %thunderbird%
#!f::Run firefox.exe
;#!!::Run %chrome%
#!j::Run %jdownloader%
;edit
;#!g::Run %vim%
#!g::Run c:\_ALL\gr4__ESSENTIAL\PROG\GVimPortable\GVimPortable.exe
#+c::Run Q:\PROG\office\vim\vim73\runvim.vbs
;gamesy
#!h::Run D:\GAMESY\SMALL\golly-2.4-win\Golly.exe
;terminals
+#!p::Run C:\_ALL\__NEEDED\dev\kitty\kitty_portable.exe

#!p::Run C:\_ALL\__NEEDED\dev\Terminal 1.9b.exe
^#!p::Run c:\_ALL\PROG\dev\Teraterm\tera1\ttermpro.exe


;;terminal & win apps

;googlecl
!`::Run E:\PROG\dev\googlecl\google.exe
;cygwin - terminal; setup
#`::Run E:\PROG\dev\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico -
;#+`::Run E:\PROG\dev\cygwin64\cygwin.bat
#+`::Run D:\DATA\dev\cygwin\setup
;windows - terminal; taskmanager
+!`::Run cmd
#!`::Run taskmgr

;#!;::Run taskmgr


; text for teh windows
+#v::Run C:\PROG\control\AutoHotkey\Extras\Scripts\tftw.exe


;;not so widely used
#!d::Run D:\DATA\office\Lingea%A_Space%2002\lexicon.exe
#!s::Run %esmeska%
#!u::Run D:\ELE\circuit\circuit.jar
;#!x::Run C:\PROG\life\XMind\xmind.exe
#!y::Run E:\PROG\ele\ResistorColorCoder\Res_Color_Code.exe

#!k::Run C:\PROG\educ\Calcute\calcute.exe
+#!k::Run calc.exe
;;bench
#!Insert::Run D:\DATA\bench\hw64_393\HWiNFO64.exe
;#!Break::Run E:\PROG\bench\CPU-Z\cpuz.exe


#!b::Run E:\PROG\mind\TheBrain\TheBrain.exe

;#!+^sc56::Run %web_new% "http://webbrain.com/brainpage/brain/398005B6-6FA3-D2AD-8AC7-0CA3F9990DA9"
 ;full_path = D:\ELE\circuit\circuit.jar
 ;Run,  cmd /K cd /D "%full_path%"
 ;Run,  cmd java %full_path%
;Return


; files - to edit 
;#!b::Run D:\EDUC\bak_bakalarka\texnic\bakalarka.tcp
#+!b::Run D:\EDUC\bak_bakalarka\texnic\bakalarka.pdf

;;man = #!^
;http://www.opera.com/docs/switches/

;#!m::Run D:\EDUC\_INFO\mapy\t_12.jpg

;office
;#!^v::Run D:\READ\MAN\office\VIM\vim.txt
;#!^z::Run D:\READ\MAN\office\VIM\vim-cheat-sheet.gif ;vi-vim-tutorial-1.gif 

#!^l::Run D:\READ\MAN\office\LATEX\howto\latexsheet-a4.pdf
#!^k::Run D:\READ\MAN\office\LATEX\howto\lshort2e.pdf


;#!^g::Run D:\READ\git_cmds.txt

#!^j::Run D:\READ\MAN\office\LATEX\OLD\TUT\bkez.tex
;#!j::Run D:\EDUC\_MAN\LATEX\math\siunitx.pdf

;#!^s::Run D:\READ\ele\KnihyElektro\THIS_Power Supply Cookbook.pdf



;Directories = #
#!^+s::Run Explorer C:\ProgramData\Microsoft\Windows\Start Menu\Programs
; C:\Users\spare\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
; %A_AppData%\Roaming\Microsoft\Windows\Start Menu\Programs 

#!Break::Run Explorer C:\ProgramData\Microsoft\Windows\Start Menu\Programs

;+#2::Run %chrome% https://docs.google.com/spreadsheet/ccc?key=0Aq-xEfRBVw0EdENCZFA5ZS1YUFNXS19PN2pMVE9IY0E&usp=drive_web#gid=0
;#2::Run Explorer E:\GDRIVE\EDUC\Rm2_MRBT
;#3::Run Explorer E:\GDRIVE\EDUC\Am2_MAPV
;#4::Run Explorer E:\GDRIVE\EDUC\Em2_MEMT

#w::Run Explorer C:\WS\WORK\
+#w::Run %chrome% https://drive.google.com/#folders/0B6-xEfRBVw0EYVV5UWtEMVVSNEE

#+e::Run Explorer D:\CREATION\EVENTS\EVENT_LOGGER\2014
#q::Run Explorer D:\CREATION\WORK\CVVI\

;#sc56::Run Explorer D:\CREATION\ELE\EAGLE
;#sc56::Run Explorer D:\EDUC\bak_bakalarka\
;#b::Run Explorer D:\BACKUP\
#b::Run Explorer D:\EDUC\bak_bakalarka\

+!#d::Run Explorer D:\CREATION\CREATION\ELE\DATASHEETS\


#a::Run Explorer C:\_ALL\DATA\
;#+a::Run A:\2014\Davidek_4_duben.xlsx
#+a::Run \\zcz09carmen\PET\ZCZ09\Attendance\Davidek\2015\Davidek_celorocni_2015.xlsx
#r::Run Explorer D:\READ
#s::Run Explorer D:\SOUND\
#v::Run Explorer.exe D:\VIEW\

#f::Run Explorer D:\WATCH\FILM\

;#x::Run Explorer D:\DN\
#g::Run Explorer D:\GAMESY
#c::Run Explorer D:\CREATION

#!+z::Run Explorer E:\GDRIVE


#h::Run Explorer C:\users\gr4viton


#o::Run Explorer C:\PROG\
#!o::Run, control Microsoft.ProgramsAndFeatures

;#!l::Run Explorer D:\CREATION\EVENTS\LOG\2014
#!l::Run Explorer %log_dir%


path := "D:`\MIND\space"    
;path := D:\MIND\space
;#q::Run Explorer -dir %path%
;#q::Run Explorer D:\MIND\space




;#q::Run %SystemRoot%\explorer.exe /E,::{20D04FE0-3AEA-1069-A2D8-08002B30309D}

;mediamonkey
;^#\::WinResore 'MediaMonkey' 


;Keymapping

;nefunguje alt na hp 620 od baryb


;;alt f4                                                                                              
;~rctrl::lalt
;~#tab::!tab                                                                  
#F4::Send {ALTDOWN}{F4}{ALTUP}

;;altab		
;#TAB::Send {ALTDOWN}{TAB}{ALTUP}
;#TAB::
;   Send {ALTDOWN}{TAB}
;   KeyWait, {TAB} ; wait until the button is released
;   Send, {ALTUP}
;Return


;;;;;;ZJISTI jak s tim tabenm asbys mohl altabovat = supertabovat
;;;;;;Vyt�skni BRR1 str 49�

;APPSKEY::Send {ALTUP}
;!p::Send {ALTUP}




;capslock to ctrl
;Capslock::Ctrl
;+Capslock::Capslock 

;this is the key under esc
;sc29::
;   Send {Escape Down}
;   KeyWait, Capslock ; wait until the Capslock button is released
;   Gui, 93:Cancel
;   Send, {Escape Up}
;Return



#+D::     
  Send, {LWINDOWN}y{LWINUP}{Escape}{SHIFTDOWN}01{SHIFTUP}
Return
                                      




;How can a prefix key be made to perform its native function rather than doing nothing?

;Consider the following example, which makes Numpad0 into a prefix key:
; Numpad0 & Numpad1::MsgBox, You pressed Numpad1 while holding down Numpad0.

;Now, to make Numpad0 send a real Numpad0 keystroke whenever it wasn't used to launch a hotkey such as the above, add the following hotkey:
; $Numpad0::Send, {Numpad0}

;The $ prefix is needed to prevent a warning dialog about an infinite loop (since the hotkey "sends itself"). In addition, the above action occurs at the time the key is released.


#!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return





           
SetTitleMatchMode RegEx
return

; Stuff to do when Windows Explorer is open
;
#IfWinActive ahk_class ExploreWClass|CabinetWClass

    ; create new text file
    ;
    #t::Send !fwt

    ; open 'cmd' in the current directory
    ;
    #c::
        OpenCmdInCurrent()
    return
#IfWinActive


; Opens the command shell 'cmd' in the directory browsed in Explorer.
; Note: expecting to be run when the active window is Explorer.
;
OpenCmdInCurrent()
{
    ; This is required to get the full path of the file from the address bar
    WinGetText, full_path, A

    ; Split on newline (`n)
    StringSplit, word_array, full_path, `n
    ; Take the first element from the array
    full_path = %word_array1%   

    ; strip to bare address
    full_path := RegExReplace(full_path, "^Address: ", "")

    ; Just in case - remove all carriage returns (`r)
    StringReplace, full_path, full_path, `r, , all


    IfInString full_path, \
   {
        Run,  cmd /K cd /D "%full_path%"
    }
    else
    {
        Run, cmd /K cd /D "C:\ "
    }
}







; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.




;dyz neni okno gvimu tak 
;caps+h back caps+j enter
;	caps+ALT+hjkl = arrows


;open flash key
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;; Windows fitting
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#!^+n::
Run, notepad.exe
WinWait, Untitled - Notepad, , 3
if ErrorLevel
{
    MsgBox, WinWait timed out.
    return
}
else
    WinMinimize  ; Minimize the window found by WinWait.


WinMove, 0, 0

return

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;; CAPSLOCKing -> this works without modifiers
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Capslock & F1::
	SetCapsLockState, AlwaysOff
	MsgBox SetCapsLockState, AlwaysOff
return
Capslock & F2::
	SetCapsLockState, AlwaysOn
	MsgBox SetCapsLockState, AlwaysOn
return

;vim
;hjkl
Capslock & h::Send {Left}
Capslock & j::Send {Down}
Capslock & k::Send {Up}
Capslock & l::Send {Right}

;emacs
;ctrl-ae jh=mn
Capslock & n::Send {BS}
;Capslock & m::Send {Enter}
;Capslock & e::Send {END}
;Capslock & a::Send {HOME}


;mine
; vim-conf
^#!+g::Send {ESC}:set guifont=Consolas:h9{Enter}

;ESC
Capslock & q::Send {ESC}

;^XCV
Capslock & 2::
;XShift(0)
Send {Ctrl Down}{x}{Ctrl Up}
return
Capslock & 3::
;XShift(0)
Send {Ctrl Down}{c}{Ctrl Up}
return
Capslock & 4::
;XShift(0)
Send {Ctrl Down}{v}{Ctrl Up}
return


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;; CAPSLOCKing -> XSHIFT -> not used anymore
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


;Capslock & v::
;XShift()
;return

;Capslock & y::
;Shifted:=!Shifted
;If (shifted)
;  Send,{Shift Down}
;else 
;  Send,{Shift UP}
;return

;Capslock & z::
;Shifted:=!Shifted
;If (shifted)
;  Send,{Shift Down}
;else 
;  Send,{Shift UP}
;return

;Alt & Capslock & e::
;Send {Alt}{Up}
;MsgBox altup
;return


;Capslock & SPACE::
;XShift(0)
;Send {Enter}
;return

;Capslock & w::
;XShift(0)
;Send {BS}
;return


;Capslock & r::
;XShift(0)
;Send {Delete}
;return


;;shift triggering function
;XShift(a=2){
 ;global
 ;shchange:= (a==Shifted) ? 0:1
 ;If (a == 2){
   ;Shifted:=!Shifted
   ;shchange:=1
 ;}
 ;else{
   ;Shifted:= a
 ;} 
 ;If(shchange)
   ;If (Shifted )
     ;Send,{Shift Down}
   ;else 
     ;Send,{Shift UP}
;}


;;*LCtrl::Send {Blind}{LCtrl}

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;; CAPSLOCKing -> this works WITH modifiers - but its blocking hotstrings on those keys
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;CapSend(KEY, KEY2) NO/, KEY3)
; Function to trigger different keys when pressed with shift, alowing other modifiers ( shift+arrows)
; caps + key = KEY
; key = KEY2
; NO/ caps + key + alt = KEY3
;---------------------------------------------------------------------------
CapSend(KEY, KEY2){
if GetKeyState("Capslock","P") {
 SetKeyDelay -1
 Send {Blind}{%KEY% DownTemp}
}
;if GetKeyState("Capslock","P") && GetKeyState("alt","P"){
 ;SetKeyDelay -1
 ;Send {Blind}{%KEY3% DownTemp}
;}
;; not functional on super-arrow moving windows
;else if GetKeyState("Super","P") && GetKeyState("Capslock","P")
;  Send #%KEY2%  
else
 Send {Blind}{%KEY2% DownTemp}  
return
}
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

; first row
*s::CapSend("Left", "s")
*d::CapSend("Down", "d")
*e::CapSend("Up", "e")
*f::CapSend("Right", "f")

; second row
;*t::CapSend("Tab", "t")
*space::CapSend("Enter", "space")

*w::CapSend("Backspace", "w")
*r::CapSend("Delete", "r")

; third row
;*g::CapSend("END", "g")
;*a::CapSend("HOME", "a")
;*sc56::CapSend("PgUp", "sc56")
;*z::CapSend("PgDn", "z")

; fourth row
;*x::CapSend("^Left", "x")
;*c::CapSend("^Right", "c")

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; CAPSLOCKing -> this works WITH modifiers
 ;does not allow easy multiple modificators with capslocked alternative keys
 ;but maybe would not interfere with hot strings -> to try? why bother??
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;;sendshift function
;sendshift(key)
;{
;send +%key%  
;send % getkeystate("shift","p") ? +%key%: %key%
;if getkeystate("shift","p")
  ;send +%key%  
;else
  ;send %key%  
 ;send "%key%"
;send "{".%key%."}"
;}

;;sendmodified function
;sendmod(key)
;{
 ;if getkeystate("ctrl","p") && getkeystate("shift","p") && getkeystate("alt","p")
  ;send !^+%key%  
 ;if getkeystate("ctrl","p") &&  getkeystate("shift","p")
  ;send ^+%key%  
;else if getkeystate("shift","p")
  ;send +%key%  
;else if getkeystate("control","p")
  ;send ^%key%  
;else if getkeystate("alt","p")
  ;send !%key%  
;else if getkeystate("super","p")
  ;send #%key%  
;else
  ;send %key%  
 ;send "%key%"
;send "{".%key%."}"
;}



;; first row:
;capslock & s::sendmod("{left}")
;capslock & d::sendmod("{down}")
;capslock & e::sendmod("{up}")
;capslock & f::sendmod("{right}")

;; second row
;;capslock & t::send {tab}

;; third row
;;capslock & g::sendmod("{end}")
;;capslock & a::sendmod("{home}")
;;capslock & x::sendmod("{pgdn}")
;;capslock & c::sendmod("{pgup}")

;; fourth row
;;capslock & x::sendmod("^{left}")
;;capslock & c::sendmod("^{right}")



;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; mouse buttons -> now covered in "KDE Intell move" 
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;XButton1::
;Send {win down}{LButton down}
;msgbox is dn
;return
;#XButton1::
;Send {LWin Down}{LButton down}
;MsgBox ah
;return
;XButton1 Up::Send {Lwin Up}{LButton up}
;XButton2::Send {LWin}{RButto down}
;XButton2 Up::Send {Super}{RButton up}

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; others
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;�::Send \

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; joypad
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Joy1::
Send {Left down}  ; Hold down the left-arrow key.
KeyWait Joy1  ; Wait for the user to release the joystick button.
Send {Left up}  ; Release the left-arrow key.
return

Joy2::
Send {Right down}  ; Hold down the left-arrow key.
KeyWait Joy2  ; Wait for the user to release the joystick button.
Send {Right up}  ; Release the left-arrow key.
return


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;tf2
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;DelaySend(Key, Interval=200, SendMethod="Send") {
;    static KeyStack := []
;    KeyStack[Key] := IsObject(KeyStack[Key]) ? KeyStack[Key] : {base: {LastTickCount: 0}}
;    ObjInsert( KeyStack[Key], { Key: Key, Interval: Interval, SendMethod: SendMethod })
;    Gosub, Label_DelaySend
;    Return    
;    
;    Label_DelaySend:
;        For Key in KeyStack {
;            if !(MinIndex := KeyStack[Key].MinIndex())
;                Continue
;            Span := A_TickCount - KeyStack[Key].LastTickCount
;            if (Span < KeyStack[Key][MinIndex].Interval)    ;loaded too early
;                SetTimer,, % -1 * (KeyStack[Key][KeyStack[Key].MinIndex()].Interval - Span)     ;[v1.1.01+] 
;            else {
;                SendMethod := KeyStack[Key][MinIndex].SendMethod
;                SendingKey := KeyStack[Key][MinIndex].Key
;                if (SendMethod = "SendInput")
;                    SendInput, % SendingKey
;                Else if (SendMethod = "SendPlay")
;                    SendPlay, % SendingKey
;                Else if (SendMethod = "SendRaw")
;                    SendRaw, % SendingKey
;                Else if (SendMethod = "SendEvent")
;                    SendEvent, % SendingKey
;                Else
;                    Send, % SendingKey;

;                ObjRemove(KeyStack[Key], MinIndex)    ;decrement other elements
;                if KeyStack[Key].MinIndex() ;if there is a next queue
;                    SetTimer,, % -1 * KeyStack[Key][KeyStack[Key].MinIndex()].Interval        ;[v1.1.01+]
;                KeyStack[Key].base.LastTickCount := A_TickCount
;            }
;        }
;    
;}


;tf2 wsad not functional
;$w::SendInput {7}

;w::SendPlay {7}

;a::SendPlay {y}
;s::SendPlay {u}
;d::SendPlay {i}


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; printing void month

; WDay - monday=2
; YWeek

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;Function LDOM()
; Derives & Returns the Last Day Of Month 
; Examples:
; TotalDays := LDOM() ; uses System date
; TotalDays := LDOM("20040219") ; returns 29 as 2004 is a leap year
LDOM(TimeStr="")
 {
  If TimeStr=
     TimeStr:=A_Now

  StringLeft,Date,TimeStr,6
  Day  = 28
  Date = %Date%%Day%
  FormatTime,cMonth,%Date%,M

  Loop,3
    {
      Date+=1,days
      FormatTime,tMonth,%Date%,M
       if tMonth != %cMonth%
          break
       else
          Day+=1
    }
  Return Day
 }


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;printDayTitle(
; Function to print day title
;---------------------------------------------------------------------------
printDayTitle(yyyy,MM,dd){
    yyyyMMdd = %yyyy%%MM%%dd%
;    MsgBox {%yyyyMMdd%}

    FormatTime, tim, %yyyyMMdd%, '#>'dd'd_'ddd'<'

    FormatTime, wday, %yyyyMMdd%, WDay
    if wday = 2 
     str = <<<<<<<<<<<<<<<< ; monday
    else        
     str = `%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%
           
    endline = `%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`%`n
    tim = %tim%%str%%endline%
;    MsgBox {%tim%}
    return tim
}


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;printVoidMonth(
; Function to print void month
; add is a parameter for printing next months
;---------------------------------------------------------------------------
printVoidMonth(add=0){
    ; current date
    FormatTime, yyyy, , yyyy
    FormatTime, MM, , MM
    dd = 1
    MM += add
    if MM = 13 ; for only plus one
    { 
     MM = 01 
     yyyy+=1
    }
    if(StrLen(MM) = 1){
	MM = 0%MM%
    }
    if(StrLen(dd) = 1){
	dd = 0%dd%
    }
;	msgbox % yyyy . ":" . MM . ":" . dd


    ddMax := LDOM( %yyyy%%MM%%dd% )
	
    tim = thisMonth
    tim = %tim%`n%yyyy%_%MM%`n`n
    Loop %ddMax%
    {
      ddStr := printDayTitle(yyyy,MM,dd)
      tim = %tim%%ddStr%h`n[] `n
;      MsgBox %ddStr%,%dd%
      dd++
      Sleep, 10
;	return
    }
    MsgBox %tim%
    return %tim%
}

!#.::
 printVoidMonth()
return



;%%%
!^p::
str := printVoidMonth()
clipboard = %str%
return

!+^p::
str := printVoidMonth(1)
clipboard = %str%
return

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; BACKSPACE AS UP-DIR


;#IfWinActive ahk_class CabinetWClass
;    ^l::Send {F4}
;    Backspace::
;;msgbox ha
;SendInput {Alt Down}{Up}{Alt Up}
;return
;#IfWinActive



;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; just sandbox


^#F6::
;app = opera
;SetEnv, %app%, C:\%app%
Run %chrome%
return



!#^.::
;Okay, now that you've got all that, here is a practical application. We will force the value of the text string to be a variable. Since we've actually defined what "alert" is, then the gosub will call that definition. Pop this into a script and run it:
eval := "opera1"
gosub % eval
return

opera1:
    msgbox %eval%
return


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;FS
;____________________________________________________

FS_projectPEfromFolder(){
;2014_05_16
send {esc}
sleep 40
send {F2}
sleep 400
send {end}
sleep 200
send +{home}
sleep 300
send, ^c
sleep 100
IfWinExist, C/C++
    WinActivate ; 
send {esc}
Send !FN{down}{enter}
sleep, 500
send ^V  
sleep, 100
send !N
sleep, 100
send {tab 3}
;sleep, 100        
;send ^V               
send {tab 1}
sleep 450
send {right 3}
}

FS_eclipseDebugPEMicro(){
;2014_05_16
MouseClick
send !rb
sleep 100
send pe
sleep 100
send {tab}{space}{tab 4}
sleep 400
send {enter}
sleep 500
send {tab}{backspace 2}New{tab}{space}
sleep 400
send {Down}
sleep 600
send {tab}
send ^a{del}PEMicro
}

FS_projectPEeditPEfile(){
;search = `%s###gc      
IfWinExist, Total
    WinActivate ;
else
	return
         
;send {F2}
;sleep 400
;send ^C                
;sleep 200
;send {enter}
sleep 200 
send ^T
send !d
sleep, 100
send c:\WS\WORK\coModulToProjekt\
sleep, 300
send ^V
sleep, 300
send {enter}
sleep, 300
send processorexpert
send {F4}
sleep, 600
send {esc}{sc35}<CPU>
sleep, 100 
send {enter}
sleep, 400
send {esc}:`%s{sc35 3}gc{Left 4}
}


FS_openPage3(){
IfWinExist,  Total
    WinActivate ; 
sleep, 300
send {enter}s{enter}
sleep, 1300
send {pgdn 3}^h
;sleep, 300
;send ^{+ 4}
;sleep, 300
;send +{down}
}

FS_differTwo(){
Send {Space}{Down}{Space}
sleep, 300
send !fy
}

FS_SRC_select(){
;Send !P
Send {alt down}P
sleep 100
send {up 6}{right down}
;Send {right}{Down}{Down}{Enter}
sleep 1000
send {alt up}
}

FS_pyPinmux(){
Run, c:\_ALL\PYTHON\pyInventory\2014_09_12 - pinmux\pinmux.py
}

;#!^a::FS_differTwo()
#!^a::FS_projectPEfromFolder()                 


#!^s::
FS_pyPinmux()
return
;FS_SRC_select()
;FS_eclipseDebugPEMicro()
;FS_projectPEeditPEfile()

#!^d::
FS_openPage3()
;send {pgdn 3}
;send {enter}
return

;#!^q

#+q::Send u:\Davidek\LOG\LOGBOOK\2014_05_15 - co modul to projekt\_2014_05_28 - peby\nonSDK\

#SPACE::  Winset, Alwaysontop, , A









:*:lp]::B50002
:*:lpp]::B50002@freescale.com
:*:lppp]::daniel.davidek@freescale.com

; %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; KSDK
:*:k120::C:\WS\KSDK_PATH_ALL\2015_01_21_-_dev_ksdk_1.2_ga\mcu-sdk
:*:k110::C:\WS\KSDK_PATH_ALL\2015_01_20_-_dev_ksdk_1.1_ga\mcu-sdk


:*:sdklast::C:\WS\KSDK_PATH_ALL\2014_09_10_-_KSDK_1.0.0-GA_RC5
;:*:jkljkl::C:\WS\KSDK_PATH_ALL\2014_10_10_KSDK_1.1.0-GA
:*:jkljkl::C:\WS\KSDK_PATH_ALL\2014_10_24_-_KSDK_1.0.0-GA_preRC
:*:lll1::C:\_ALL\LOG\LOGBOOK\2015\2015_01_21 - resave\pinpeb\_active
:*:lll2::C:\_ALL\LOG\LOGBOOK\2015\2015_01_21 - resave\pinpeb\prepared
:*:ooo1::C:\WS\WORK
#k::Run C:\WS\KSDK_PATH_ALL

;; roz
;Send {tab 13}{down}+{tab 3}{down}{pgdn}			
;^fXMW5
;; _SDK to _sdk
;Send {F2}{left}{right}+{left 3}sdk{Enter}{down}
;; FRDM.xasd to FRDM-xasd
;{F2}{home}{right 3}{delete}-{Enter}{down}<F2>
;; folder create folder XXXX from XXXX_sdl.peb
;{F2}+{left 4}^c{esc 100}^+n{delete}{left 10}^v{enter}

;;____________________________________________________
;; jakysi prejmenovani nefunguje
RENAME_something()
{
Send {enter}
sleep 2200
send {esc 2}
sleep 200
sendinput {sc 35}BoardPebsSdk
sleep 200
send #{left 4}}
return
}

;____________________________________________________
; iMX select mux
;  
iMX_select_general(x,y,sel)
{
WinActivate Pele_SDB
;sleep 500
send {F2}
sleep 400
send {esc}
sleep 200
send {home}{down}{left}
sleep 200
send ^c
sleep 300
WinActivate C
sleep 500
send {esc}
sleep 300
CoordMode, Mouse, Relative
MouseMove, %x%, %y%, 0 
;MouseMove, -598, -908 ; abs Routing
send {LButton 2} 
send {delete}
send ^v
sleep 300
;MouseMove, -623, -823
MouseMove, 460, 255

if(%sel% == 1 )
{
send {LButton} 


sleep 1300
;Mousemove, 25, 42
;send {LButton}
mousemove, 20, 20
;send +{tab}
;sleep 1000
;  WinGet, ControlList, ControlList, A

;WinGetText, text
; MouseGetPos, , , id, control
;  WinGetTitle, title, ahk_id %id%
;  WinGetClass, class, ahk_id %id%
;  WinGet, ControlList, ControlList, A
;  ToolTip, Under Cursor:`nahk_id: %id%`nahk_class: %class%`nTitle:%title%`nControl: %control%`n`nWindow Control List:`n%ControlList%


;ahk_class #32770
;ClassNN:	SWT_Window01

;MsgBox, The text is:`n%ControlList%

}
return
}

iMX_select()
{
iMX_select_general(279,174,0) ; rel Functional properties
;iMX_select_general(473, 174,1) ; rel Routing
}

iMX_Done()
{
CoordMode, Mouse, Relative
mousemove, 220, 220
send {LButton}
mousemove, 20, 20
}
iMX_Uncheck()
{
CoordMode, Mouse, Relative
Mousemove, 25, 42
send {LButton}+{Tab}
mousemove, 20, 20
}


iMX_joDone()
{

WinActivate Pele_SDB

send {F2}
sleep 400
send {esc}
sleep 200
send {home}{Right 2}j
}

;iMX_Done()
;iMX_joDone()
iMX_click(down)
{ 
send {LButton}
sleep 50
send {Down %down%}
send {enter}
mousemove, 0, -19, 0, R
}


iMX_click_c()
{ 
send {LButton}
sleep 50
send {Down}{Up}
send {enter}
mousemove, 0, -19, 0, R
}

RESAVE_cmsis2clock()
{
Send, Cmsis{ENTER}a{BACKSPACE}
Send, {DEL}{DEL}{DEL}{DEL}{LWINDOWN}{CTRLDOWN}{CTRLUP}{LWINUP}
Send, {SHIFTDOWN}c{SHIFTUP}lock{SHIFTDOWN}-{SHIFTUP}man{UP}{LEFT}{LEFT}{LEFT}{LEFT}{LEFT}{LEFT}{LEFT}{LEFT}{BACKSPACE}1{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{BACKSPACE}{DEL}{DEL}{DEL}tru{DOWN}{DEL}{DEL}{DEL}{DEL}tru{CTRLDOWN}s{CTRLUP}

}

+^z::RESAVE_cmsis2clock()
;iMX_select()
;^!x:: iMX_Uncheck()
+^a:: iMX_click(0) 
+^s:: iMX_click(1) 
+^d:: iMX_click(2) 
+^f:: iMX_click_c()
+^c:: iMX_click(7) 


;^!#+z::


^#!+q::ExitApp
^#!+z::Pause

