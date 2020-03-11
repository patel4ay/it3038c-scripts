#This is a script to send an email with info about our server

#a function that returns an IP address starting with 172
function getIP {
    (get-netipaddress).IPAddress | Select-String "192*"
}

#set the IP variable
$IP=getIP
$HostName=Get-Host | Select-Object Name
$Version=Get-Host | Select-Object Version
#set the Body variable
$BODY = "This machine's IP is $IP. User is $env:USERNAME. Hostname is $Hostname. PowerShell Version $Version. Today's Date is $Get-Date"
Write-Host($BODY)

#build and send the email 
#Send-MailMessage -To "patel4ay@mail.uc.edu" -From "me@mail.com" -Subject "IT3038C Windows SysInfo" -Body $BODY -SmtpServer smtp.gmail.com -Port 587 -UseSsl -Credential (Get-Credential)

#confirm we reached the end
Write-Host("Email sent") 