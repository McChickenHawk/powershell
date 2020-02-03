echo on
$HostIPorName = Read-Host "Please enter the hostname or IP Address" #Prompts the user for the Host Name or IP. It will then write it to the $HostIPorName Object
do {Test-connection $HostIPorName -Quiet   
} until (Test-connection $HostIPorName -Quiet)
Start-Process "chrome.exe" $HostIPorName    
