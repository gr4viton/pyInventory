; Platform: Tested on Windows 7 only
; AHK_L v1.1.13.1
; Script Function: Quick access to Windows 7 Control Panel applets 
; http://msdn.microsoft.com/en-us/library/windows/desktop/cc144191(v=vs.85).aspx
; 
; Script Version 1.04 - Amended 02/01/2014
; Fixed duplication of one of the Control Panel applets, i.e. appearing in 2 places under different descriptions.
; Added some non-standard Control Panel applets, e.g. Flash Player, Java 7, Intel Graphics, Realtek HD Audio, etc.




#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;comboAll(){
Gui, Show, w500 h50, Windows 7 Control Panel chooser
Gui, Add, ComboBox, x12 y20 w420 h200 vComboBox, Action Center|- Action Center (Problem Reporting settings)|Add or Remove Programs|Administrative Tools|Automatic Updates|AutoPlay|Backup and Restore|Biometric Devices (if available)|BitLocker Drive Encryption (if available)|Bluetooth Devices (if available)|Color Management|Credential Manager|CSNW (Client Service for NetWare)|Date and Time|Default Programs|Desktop Gadgets|Device Manager|Devices and Printers|Display|Ease of Access Center|File Associations|Folder Options|Flash Player Settings Manager|Fonts|Game Controllers|Get Programs|Getting Started|HomeGroup|Indexing Options|Infrared (if available)|Intel Graphics (if available)|Internet Options|iSCSI Initiator|Java 7|Keyboard|Location and Other Sensors|Mail Setup (Outlook) (if available)|Mouse|Network and Sharing Center|Network Connections|Network Setup Wizard|Notification Area Icons|Offline Files|Parental Controls|Pen and Input Devices (if available)|Pen and Touch Settings|People Near Me|Performance Information and Tools|Performance Options|Personalization|- Personalization (Desktop Background)|- Personalization (Window Color and Appearance)|Phone and Modem|Power Options|- Power Options (Edit Plan settings)|- Power Options (System settings)|- Power Options (Create a Power Plan)|Printers and Faxes|Problem Reports and Solutions|Programs and Features|RealTek HD Audio Manager (if available)|Region and Language|- Region and Language (Location)|- Region and Language (Keyboards and Languages)|- Region and Language (Administrative)|RemoteApp and Desktop Connections|Scanners and Cameras|Scheduled Tasks|Screen Resolution|Sound|Sounds and Audio Devices|Speech Recognition Options|Speech Recognition|Sync Center|System|- System Properties (Advanced)|- System Properties (Computer Name)|- System Properties (Data Execution Prevention)|- System Properties (Hardware)|- System Properties (Performance)|- System Properties (Remote Access)|- System Properties (System Protection)|Tablet PC Settings (if available)|Taskbar and Start Menu|Text to Speech|Troubleshooting|User Accounts|Welcome Center|Windows Anytime Upgrade|Windows CardSpace|Windows Defender|Windows Firewall|Windows Marketplace|Windows Master Control Panel (All Tasks)|Windows Mobility Center|Windows Optional Features|Windows Sidebar Properties|Windows SideShow|Windows Update|- Windows Update (Change Settings)
Gui, Add, Text, x14 y5 w390 h40 , Choose a Control Panel applet to use then click on the OK Button
Gui, Add, Button, x440 y15 w50 h30 , OK
Return
;}

ButtonOK:
Gui, Submit, NoHide 
If ComboBox = Action Center
Run, control /name Microsoft.ActionCenter
Else If ComboBox = - Action Center (Problem Reporting settings)
Run, control /name Microsoft.ActionCenter /page pageSettings
Else If ComboBox = Add or Remove Programs
Run, control appwiz.cpl
Else If ComboBox = Administrative Tools
Run, control /name Microsoft.AdministrativeTools
Else If ComboBox = Automatic Updates
Run, control wuaucpl.cpl
Else If ComboBox = AutoPlay
Run, control /name Microsoft.AutoPlay
Else If ComboBox = Backup and Restore
Run, control /name Microsoft.BackupAndRestore
Else If ComboBox = Biometric Devices (if available)
Run, control /name Microsoft.BiometricDevices
Else If ComboBox = BitLocker Drive Encryption (if available)
Run, control /name Microsoft.BitLockerDriveEncryption
Else If ComboBox = Bluetooth Devices (if available)
Run, control /name Microsoft.BluetoothDevices
Else If ComboBox = Color Management
Run, control /name Microsoft.ColorManagement
Else If ComboBox = Credential Manager
Run, control /name Microsoft.CredentialManager
Else If ComboBox = CSNW (Client Service for NetWare)
Run, control nwc.cpl
Else If ComboBox = Date and Time
Run, control /name Microsoft.DateAndTime
Else If ComboBox = Default Programs
Run, control /name Microsoft.DefaultPrograms
Else If ComboBox = Desktop Gadgets
Run, control /name Microsoft.DesktopGadgets
Else If ComboBox = Device Manager
Run, control /name Microsoft.DeviceManager
Else If ComboBox = Devices and Printers
Run, control /name Microsoft.DevicesAndPrinters
Else If ComboBox = Display
Run, control /name Microsoft.Display
Else If ComboBox = Ease of Access Center
Run, control /name Microsoft.EaseOfAccessCenter
Else If ComboBox = File Associations
Run, control.exe /name Microsoft.DefaultPrograms /page pageFileAssoc
Else If ComboBox = Flash Player Settings Manager
Run, %A_WinDir%\System32\FlashPlayerCPLApp.cpl
Else If ComboBox = Folder Options
Run, control /name Microsoft.FolderOptions
Else If ComboBox = Fonts
Run, control /name Microsoft.Fonts
Else If ComboBox = Game Controllers
Run, control /name Microsoft.GameControllers
Else If ComboBox = Get Programs
Run, control /name Microsoft.GetPrograms
Else If ComboBox = Getting Started
Run, control /name Microsoft.GettingStarted
Else If ComboBox = HomeGroup
Run, control /name Microsoft.HomeGroup
Else If ComboBox = Indexing Options
Run, control /name Microsoft.IndexingOptions
Else If ComboBox = Infrared (if available)
Run, control /name Microsoft.Infrared
Else If ComboBox = Intel Graphics (if available)
Run, %A_WinDir%\System32\igfxcpl.cpl
Else If ComboBox = Internet Options
Run, control /name Microsoft.InternetOptions
Else If ComboBox = iSCSI Initiator
Run, control /name Microsoft.iSCSIInitiator
Else If ComboBox = Java 7
Run, %ProgramFiles%\Java\jre7\bin\javacpl.exe
Else If ComboBox = Keyboard
Run, control /name Microsoft.Keyboard
Else If ComboBox = Location and Other Sensors
Run, control /name Microsoft.LocationAndOtherSensors
Else If ComboBox = Mail Setup (Outlook) (if available)
Run, control mlcfg32.cpl
Else If ComboBox = Mouse
Run, control /name Microsoft.Mouse
Else If ComboBox = Network and Sharing Center
Run, control /name Microsoft.NetworkAndSharingCenter
Else If ComboBox = Network Connections
Run, control netconnections
Else If ComboBox = Network Setup Wizard
Run, control netsetup.cpl
Else If ComboBox = Notification Area Icons
Run, control /name Microsoft.NotificationAreaIcons
Else If ComboBox = Offline Files
Run, control /name Microsoft.OfflineFiles
Else If ComboBox = Parental Controls
Run, control /name Microsoft.ParentalControls
Else If ComboBox = Pen and Input Devices (if available)
Run, control /name Microsoft.PenAndInputDevices
Else If ComboBox = Pen and Touch Settings
Run, %A_WinDir%\System32\TabletPC.cpl
Else If ComboBox = People Near Me
Run, control /name Microsoft.PeopleNearMe
Else If ComboBox = Performance Information and Tools
Run, control /name Microsoft.PerformanceInformationAndTools
Else If ComboBox = Performance Options
Run, SystemPropertiesPerformance.exe
Else If ComboBox = Personalization
Run, control.exe /name Microsoft.Personalization ;Note - Win 7 Starter and Basic Editions do not support control.exe /name Microsoft.Personalization command
Else If ComboBox = - Personalization (Desktop Background)
Run, control.exe /name Microsoft.Personalization /page pageWallpaper
Else If ComboBox = - Personalization (Window Color and Appearance)
Run, control.exe /name Microsoft.Personalization /page pageColorization
Else If ComboBox = Phone and Modem
Run, control /name Microsoft.PhoneAndModemOptions
Else If ComboBox = Power Options
Run, control /name Microsoft.PowerOptions
Else If ComboBox = - Power Options (Edit Plan settings)
Run, control /name Microsoft.PowerOptions /page pagePlanSettings
Else If ComboBox = - Power Options (System settings)
Run, control /name Microsoft.PowerOptions /page pageGlobalSettings
Else If ComboBox = - Power Options (Create a Power Plan)
Run, control /name Microsoft.PowerOptions /page pageCreateNewPlan
Else If ComboBox = Printers and Faxes
Run, control /name Microsoft.Printers and Faxes
Else If ComboBox = Problem Reports and Solutions
Run, control /name Microsoft.ProblemReportsAndSolutions
Else If ComboBox = Programs and Features
Run, control Microsoft.ProgramsAndFeatures
Else If ComboBox = RealTek HD Audio Manager (if available)
Run, %A_WinDir%\System32\RTSndMgr.cpl
Else If ComboBox = Region and Language
Run, control /name Microsoft.RegionAndLanguage
Else If ComboBox = - Region and Language (Location)
Run, control.exe /name Microsoft.RegionalAndLanguageOptions /page /p:"location"
Else If ComboBox = - Region and Language (Keyboards and Languages)
Run, control.exe /name Microsoft.RegionalAndLanguageOptions /page /p:"keyboard"
Else If ComboBox = - Region and Language (Administrative)
Run, control.exe /name Microsoft.RegionalAndLanguageOptions /page /p:"administrative"
Else If ComboBox = RemoteApp and Desktop Connections
Run, control /name Microsoft.RemoteAppAndDesktopConnections
Else If ComboBox = Scanners and Cameras
Run, control /name Microsoft.ScannersAndCameras
Else If ComboBox = Scheduled Tasks
Run, control schedtasks
Else If ComboBox = Screen Resolution
Run, control.exe desk.cpl,Settings,@Settings
Else If ComboBox = Sound
Run, control /name Microsoft.Sound
Else If ComboBox = Sounds and Audio Devices
Run, control /name Microsoft.Sound
Else If ComboBox = Speech Recognition Options
Run, control /name Microsoft.SpeechRecognitionOptions
Else If ComboBox = Speech Recognition
Run, control /name Microsoft.SpeechRecognition
Else If ComboBox = Sync Center
Run, control /name Microsoft.SyncCenter
Else If ComboBox = System
Run, control /name Microsoft.System
Else If ComboBox = - System Properties (Advanced)
Run, SystemPropertiesAdvanced.exe
Else If ComboBox = - System Properties (Computer Name)
Run, SystemPropertiesComputerName.exe
Else If ComboBox = - System Properties (Data Execution Prevention)
Run, SystemPropertiesDataExecutionPrevention.exe
Else If ComboBox = - System Properties (Hardware)
Run, SystemPropertiesHardware.exe
Else If ComboBox = - System Properties (Performance)
Run, SystemPropertiesPerformance.exe
Else If ComboBox = - System Properties (Remote Access)
Run, SystemPropertiesRemote.exe
Else If ComboBox = - System Properties (System Protection)
Run, SystemPropertiesProtection.exe
Else If ComboBox = Tablet PC Settings (if available)
Run, control /name Microsoft.TabletPCSettings
Else If ComboBox = Taskbar and Start Menu
Run, control /name Microsoft.TaskbarAndStartMenu
Else If ComboBox = Text to Speech
Run, control /name Microsoft.TextToSpeech
Else If ComboBox = Troubleshooting
Run, control /name Microsoft.Troubleshooting
Else If ComboBox = User Accounts
Run, control /name Microsoft.UserAccounts
Else If ComboBox = Welcome Center
Run, control /name Microsoft.WelcomeCenter
Else If ComboBox = Windows Anytime Upgrade
Run, control /name Microsoft.WindowsAnytimeUpgrade
Else If ComboBox = Windows CardSpace
Run, control /name Microsoft.CardSpace
Else If ComboBox = Windows Defender
Run, control /name Microsoft.WindowsDefender
Else If ComboBox = Windows Firewall
Run, control /name Microsoft.WindowsFirewall
Else If ComboBox = Windows Marketplace
Run, control /name Microsoft.GetProgramsOnline
Else If ComboBox = Windows Master Control Panel (All Tasks)
Run, explorer.exe shell:::{ED7BA470-8E54-465E-825C-99712043E01C} ; Suggested by TheDewd - thanks!
Else If ComboBox = Windows Mobility Center
Run, control /name Microsoft.MobilityCenter
Else If ComboBox = Windows Optional Features
Run, OptionalFeatures.exe
Else If ComboBox = Windows Sidebar Properties
Run, control /name Microsoft.WindowsSidebarProperties
Else If ComboBox = Windows SideShow
Run, control /name Microsoft.WindowsSideShow
Else If ComboBox = Windows Update
Run, control /name Microsoft.WindowsUpdate
Else If ComboBox = - Windows Update (Change Settings)
Run, control /name Microsoft.WindowsUpdate /page pageSettings

Return

GuiClose:
ExitApp


