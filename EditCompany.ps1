# With this script we can change Company Name which is Edit Exchange Property for Multiple user.

Set-ExecutionPolicy RemoteSigned 
$LiveCred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell/ -Credential $LiveCred -Authentication Basic -AllowRedirection 
Import-PSSession $Session 
import-csv D:\CompanyChange.csv | foreach {Set-User -identity $_."EMAIL ADDRESS" -Company “Katalyst Software Services Ltd.”}

#import-csv D:\CompanyChange.csv | foreach {Set-User -identity $_."EMAIL ADDRESS" -Company “”}