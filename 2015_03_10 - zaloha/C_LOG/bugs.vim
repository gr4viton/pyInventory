%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
logCommits
:: accurev & git & jira commit messages log 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[]2014_11_18
[PEXMCU-1130] corrected PLL config -> bus frequency is now 48MHz
K60 SDK & nonSDK

[PEx_CW_MCU_REL] #428897
[PEx_KSDK_1_1_GA_review] #428898

[] 2014_11_14
[PEXMCU-1053] configured right package of MCU 
MK60DN512VMD10
- added usernames for the previously inexistent pins
[PEx_CW_MCU_REL] #428513
[PEx_KSDK_1_1_GA_review] #428849

____________________________________________________
[PEXMCU-1103] corrected LED vs TOUCH signal lines user name
MK60DN512VMD10
- PTA4 = A4= TOUCH_D7_OR/EZP_CS_B/J6_12
- PTA11=A11= LED_OR_CTRL0
etc.

updated into streams: 
[PEx_CW_MCU_REL] #428515
[PEx_KSDK_1_1_GA_review] #428860

[] 2014_10_31
Modification of board.peb path 
in board wizard xml configuration

BoardPebs = BoardPebsSdk for only-SDK mcu derivates
#########
[PEx_CW_MCU_REL] #415018
[PEx_KSDK_1_1_GA_review] #???
#########
HYPERLINK "http://sw-jira.freescale.net/browse/PEXMCU-997"PEXMCU-997
HYPERLINK "http://sw-jira.freescale.net/browse/PEXMCU-476"PEXMCU-476
#########
vfilip #415058  PEx_KSDK_1_1_GA_review/2   [PEXMCU-997] 
xml NPW correction - path to peb     
____________________________________________________
Modification of board.peb path in board wizard xml configuration
BoardPebs = BoardPebsSdk for only-SDK mcu derivates
#########
[PEx_CW_MCU_REL] #415018
[PEx_KSDK_1_1_GA_review] #415058
#########
-> vfilip #415058  PEx_KSDK_1_1_GA_review/2   [PEXMCU-997] 
xml NPW correction - path to peb
____________________________________________________
[PEXMCU-1001] Wrong value of Heapsize in board support project
changed the heapsize value to 
0400 = 0x400 = 1024dec

[PEx_CW_MCU_REL] #415114
[PEx_KSDK_1_1_GA_review] #415115
____________________________________________________
[PEXMCU-1001] Wrong value of Heapsize in board support project
changed the heapsize value to 
0400 = 0x400 = 1024dec

Now every board supported derivate has non-zero heapsize.

[PEx_CW_MCU_REL] #415114
[PEx_KSDK_1_1_GA_review] #415115


____________________________________________________
All boards of the list now have:
* new [user signal name] paradigm
* cpu frequency settings 
* joined one .peb file for both cpu and pinsettings
* edited wizard xml file to load the right peb

Uploaded into streams:
[PEx_CW_MCU_REL] #411332
[PEx_KSDK_1_1_GA_review] #411333
____________________________________________________
Ram/Rom settings changed 
size = 100 etc
[PEXMCU-1000]


____________________________________________________

____________________________________________________
[] 2014_10_24
[PEXMCU-476] & [PEXMCU-899]
* corrected a few cpu frequency settings 
* enlarged count of renamed [user signal name]s in pinsettings 
* removed unused files
[PEx_CW_MCU_REL] #411332
[PEx_KSDK_1_1_GA_review] #411333

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[] 2015_01_27
:: created issue
____________________________________________________
PEXCORE-761

    In Clock Configuration Component
    after you create [Configuration description] i.e "asd"
    hit save (just for sure)
    do some other change in component (i.e change some clock frequency value)
    hit [Edit -> Undo] or control+Z
        both changes are removed (clock and description)
    hit [Edit -> Redo] or control+shift+Z
        only clock change was recreated
    [Configuration description] changed into default value and stayed there

installation:

    clean eclipse
    P:\PCsoft\Freeware\Eclipse\eclipse-standard-kepler-SR1-win32.zip
    install unstable plugins -
    \\zcz09fs\PExCore\Eclipse\UNSTABLE\site
    = pinsetings, mcu driv suite, internal

    KSDK - 1.2.0 - git repo
    clone: http://<UsersCcoreID>@sw-stash.freescale.net/scm/mcucore/mcu-sdk.git
    http://B50002@sw-stash.freescale.net/scm/mcucore/mcu-sdk.git
    branch: dev_ksdk_1.2_ga
    (or url http://sw-stash.freescale.net/scm/mcucore/mcu-sdk.git )
    = remotes/origin/dev_ksdk_1.2_ga

    accurev:
    PEx MCU STABLE REVIEW
    PEX plugin version
    Processor Expert Core 1.4.0.U_RT7_b1505-2895 com.freescale.processorexpert.feature.core.feature.group Freescale Semiconductor


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
____________________________________________________
[PEXMCU-1445] Default heap size in PEBs should be zero
[PEXMCU-1210] re-save peb files
[PEXMCU-1238] When CPU has USB - USB must be default config in BSP

For boards:
    FRDM-K22F 
    FRDM-K64F 
    TWR-K22F120M 
    TWR-K64F120M 
    TWR-KV31F120M 
    TWR-KV10Z32
    TWR-K60D100M
    FRDM-KL46Z
    FRDM-KL03Z
    TWR-K24F120M

with SDK support

 * Resaved the old-good and right clock configurations, into the new style 
  - moved from [CPU] component into [Clock Manager] component
 * Restored zero size value of HeapSize in [CPU] component
  - HeapSize = 0000
 * Recreated the right user-signal names in pinsettings 
  - manually (by a script) copied old-good user names over the default MCU ones
 * On the way changed default Clock configuration to USB if it is present

____________________________________________________ issues
Transaction:  [457011] PEx_MCU_STABLE_review

For boards:
    FRDM-K22F 
    FRDM-K64F 
    TWR-K22F120M 
    TWR-K64F120M 
    TWR-KV31F120M 
    TWR-KV10Z32
    TWR-K60D100M
    FRDM-KL46Z
    FRDM-KL03Z
    TWR-K24F120M

with SDK support

 * Resaved the old-good and right clock configurations, into the new style 
  - moved from [CPU] component into [Clock Manager] component
 * Restored zero size value of HeapSize in [CPU] component
  - HeapSize = 0000
 * Recreated the right user-signal names in pinsettings 
  - manually (by a script) copied old-good user names over the default MCU ones
 * On the way changed default Clock configuration to USB if it is present

___________comment
installation:

    clean eclipse
    P:\PCsoft\Freeware\Eclipse\eclipse-standard-kepler-SR1-win32.zip
    install unstable plugins -
    \\zcz09fs\PExCore\Eclipse\UNSTABLE\site
    = pinsetings, mcu driv suite, internal

    KSDK - 1.2.0 - git repo
    clone: http://<UsersCcoreID>@sw-stash.freescale.net/scm/mcucore/mcu-sdk.git
    http://B50002@sw-stash.freescale.net/scm/mcucore/mcu-sdk.git
    branch: dev_ksdk_1.2_ga
    (or url http://sw-stash.freescale.net/scm/mcucore/mcu-sdk.git )
    = remotes/origin/dev_ksdk_1.2_ga

    accurev:
    PEx MCU STABLE REVIEW

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[] 2015_01_28
____________________________________________________ accurev
[PEXMCU-1522]
____________________________________________________jira
Transaction:  [457759] PEx_MCU_STABLE_review
____________________________________________________both
 * Reconfigured [BoardPebsSdk] tag in board wizzard xml config 
 - [PEx_MCU_STABLE_review_\PEx_MCU_STABLE_review_\PEx_Data\BoardConfigurations\wizard_data\board_FRDM-KL43Z.xml]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[] 2015_02_06
http://sw-jira.freescale.net/browse/PEXMCU-1640
____________________________________________________accurev
[PEXMCU-1640] New clock manager - board projects doesn't have clock configurations set up
____________________________________________________jira
Transaction:  [463082] PEx_MCU_STABLE_review
____________________________________________________both
> why:
New board support peb folder
> resolved:
Moved board support peb files (with their folders) for boards:
    FRDM-K22F 
    FRDM-K64F 
    TWR-K22F120M 
    TWR-K64F120M 
    TWR-KV31F120M 
    TWR-KV10Z32
    TWR-K60D100M
    FRDM-KL46Z
    FRDM-KL03Z
    TWR-K24F120M

from old folder [.\PEx_Data\BoardConfigurations\Kinetis]
into correct new destination folder [.\PEx_Data\Repositories\Kinetis_Repository\BoardConfigurations\Kinetis]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
____________________________________________________jira
Configured project and exported [peb] for MCU [MX6SX]
- Functional Properties: (HYS, PUS, PUE, PKE, ODE, SPEED, DSE, SRE) bits
- Routing: User Pin/ Signal Names

according to a enclosured message with excel documentation of those parameters.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
2015_02_13
K64 MHz repair
____________________________________________________accurev
Repaired wrong configuration of board base oscilator frequency value.
25MHz -> 50MHz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
2015_02_13
Redone board support for boards:
- FRDM-KL43Z
- TWR-KL43Z48M 
- FRDM-KL27Z 
- FRDM-KL02Z 
- FRDM-KL25Z 

* pinsettings signal name - done
* clock configuration settings - done
____________________________________________________
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
2015_02_19
Recreated with errors:
[x] Generator: FAILURE: at line 316: Property not found: "SMC_AVLLS" (file: Drivers\Kinetis\system_KinetisK_h.prg)	try_kl36		clockMan1	
[x] Generator: FAILURE: at line 324: Property not found: "SMC_AVLP" (file: Drivers\Kinetis\system_KinetisK_h.prg)	try_kl36		clockMan1

on platform:
[x] Eclipse clean 
Version: Kepler Service Release 1
Build id: 20130919-0819
- with latest unstable plugins:
- MCU Driver Suite: 10.5.0.U_RT7_b1508-2961
- Pin Settings: 1.1.0.U_RT7_b1508-2961
- Processor Expert Internal: 1.4.0.U_RT7_b1508-2961
[x] PEx
= PEx_MCU_STABLE_review (updated 19-02-2015 morning)
[x] KSDK 1.2.0 (updated 19-02-2015 morning)
clone: http://<UsersCcoreID>@sw-stash.freescale.net/scm/mcucore
branch: dev_ksdk_1.2_ga/mcu-sdk.git
= SHA-1: fa5b53e7e566...

steps:
- Start eclipse: File->New->Processor Expert Project->MKL36Z64xxx4->ksdk absolute path->GNU->Finish
Previously mentioned Errors pop out.
____________________________________________________

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
2015_02_19 - kl43

Installed KDS:
x:\Engineering_Builds\KDS\KDS_3.0.0\b150902\unzip_and_run\KDS_2.5.201502090811_win.ZIP

Install plugins:
-insetings
-mcu driv suite
-internal
	Help->Install new Software->file:////zcz09fs/PExCore/Eclipse/UNSTABLE/site/

KSDK 1.2.0:


Create project for KL43:

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
2015_02_20 - k64 doubled pin
http://sw-jira.freescale.net/browse/PEXMCU-1767
____________________________________________________accurev
[PEXMCU-1767] Duplicated renamed pin name in FRDM-K64.peb file
____________________________________________________jira
Transaction:  [468993] PEx_MCU_STABLE_review
____________________________________________________both
Reconfigured user signal-names to correct errors in previous version for FRDM-K64_sdk.peb


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
INSTALL LOG
____________________________________________________
2014_05_07
[x] outlook - setting
[] obecne
log B50002
b50002@freescale.com
\\zcz09carmen
log: ddavidek
pw satan

[x] cesty mapping drives
Z:
\\zcz09carmen\PET_READ
A:
\\zcz09carmen\PET\ZCZ09\Attendance\Davidek
____________________________________________________
15-05-2014
[..] on old laptop:
 Driver Suite v10.4
 CodeWarrior MCUs 10.6 
 IAR Embedded Workbench for ARM 7.10.1.6735
 IAR Embedded common components 7.0.2.3053
[x] CodeWarrior MCUs 10.6 
[CW_MCU_v10.6_b140329_PE.exe] 
 - pe vs se - nikdo nevi jaky je rozdil
 - komponenty: Kinetis (mo�no e�te DSC)

[x] tisk�rna za Lacem
Libor:
Tady jsem stahl instalacku ovladacu - samo si to tiskarnu najde a nainstaluje ovladace
\\zcz09carmen\PET\PCsoft\Licenced\Xerox\Setup-Phaser6360.exe
jop - next next - �ecko na�la sama
IP: 10.171.64.181
Name: Phaser 6360DN-2 
Xerox Phasser 6360DN
- daj si defaultne tray 2
- tray 1 je rucny podavac a nefunguje
	

[] IAR Embedded workbench 7.10
[EWARM-CD-7101-6735.exe]
IAR Embedded Workbench for ARM, v. 7.10, 32K Kickstart Edition
using this link: https://register.iar.com/confirm?lang=en&key=18776243-d0c4-4ba2-b3ce-ce0360458f6f
- licence: 9566-415-683-9131 - old laptop = not working
- licence: 9567-088-984-0111 - new = works

2014_05_28
[x] IAR 7201
C:\PROG\dev\IAR Systems\Embedded Workbench 7.0_7201
- licence: 9567-319-945-2646 - new laptop
[x] segger.com - ovladace pro j-link
http://www.segger.com/jlink-software.html?step=&file=JLink_484f&serial=

____________________________________________________
TODO

uninstall mozilla
[] install
[] chrome / firefox

[] totalcmd
R:\PCsoft\Licenced\TotalCommander\
[] codewarior
R:\PCsoft\Licenced\FREESCALE\CodeWarrior\CodeWarrior MCUs\MCUs_V10_6\140329\

[] accurev - heslo a jmeno v mailu
[] CW
[] IAR
[] PE
[] PE-DS
[] map creator



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bug 

____________________________________________________
tortoise git
[] to stop diffing two versions in show log when others are selected -> not to freeze if the operation takes too long and

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/:: LOG
____________________________________________________
2015_01_26
name:
SMC_AVLP property not found in MCG.chg

body:
For MCUs:
MK22FN512LH12
MK64FN1M0LL12
MK22FN512VLH12
MK64FN1M0MD12
MKV31F512VLL12
and possible others

There is an ERROR when [Very low power mode] in [Clock configuration] is Enabled. Therefore the project cannot be generated nor built.

Problem ittem:
Description	Resource	Path	Location	Type
ERROR: at line 2443: Property not found: "SMC_AVLP" (file: CPUs\_Kinetis_4SDK\MCG.chg)	sdk_t_kv31f120m		clockMan1	Processor Expert Problem
�tep�n Cejka
____________________________________________________
