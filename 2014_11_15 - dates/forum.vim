2014_11_28
[] win forum
http://answers.microsoft.com/en-us/windows/forum/windows_7-desktop/windows-7-wont-synchronize-with-timewindowscom/d81a02ad-2334-488d-8829-d7ae03c1f55a

Method 3:
Type the commands below in ‘cmd’ prompt
Click on the ‘Start’ button and type ‘cmd’ and right-click on cmd and select ‘Run as administrator’
1. Type "w32tm /debug /disable"(without quotes) and press 'Enter'.
2. Type "w32tm /register"(without quotes) and press 'Enter'
You should get the response "W32Time successfully registered"
3. Type "net start w32time"(without quotes) and press 'Enter'

