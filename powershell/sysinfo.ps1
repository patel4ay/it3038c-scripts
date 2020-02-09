# Script to send an email with info about our server

#a function that returns an IP address starting with192

#set the IP variable

#set the body variable
$BODY =  "This machine's IP is $IP. User is $env:USERNAME. Hostname is patel4ay-win. Powershell Version is $($Host.Version.major). Today's Date is $(Get-Date -UFormat "%A, %m/%d/%Y") "
Write-Host($BODY)
#build and send the email
Send-MailMessage -To "aanshi2000@yahoo.com" -From "aanshipatel67@gmail.com" -Subject "IT3038C Windows Sysinfo" -Body $BODY -SmtpServer smtp.gmail.com -Port 587 -Usessl -Credential (Get-Credential) 
# confirm we reached the end
Write-Host ("Email sent")
