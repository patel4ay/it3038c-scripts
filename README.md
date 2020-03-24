# Lab 7 

Let's install the Carbon module, which will allow us to automate the configuration of the computer. It can configure and manage local users and groups, IIS Websites, applications and much more.

    Install-Module -Name Carbon -RequiredVersion 2.7.0

The Get-ProgramInstallInfo function determine what programs are installed for all the users. It also gives information for the installed programs.

    Get-CPrograminstallinfo 
    Get-CPrograminstallinfo -name 'Microsoft'
    Get-CPrograminstallinfo -name 'Mozilla Firefox 74.0 (x86 en-US)' | select-object *

In powershell we use ipconfig but Carbon module returns all the IP addresses in use on local computer.

    Get-IPAddress
    Get-IPAddress -V4
    Get-IPAddress -V6    

The Install-Directory function creates a directory. If directory already exits, it does nothing. If directories don't exist, they are created.

    Install-Directory -Path 'C:\it3038c\Projects'
    
Carbon module have various functions. These are some of the uses that are helpful in everyday.            