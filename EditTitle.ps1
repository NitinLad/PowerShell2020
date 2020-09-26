Set-ExecutionPolicy RemoteSigned 
$LiveCred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell/ -Credential $LiveCred -Authentication Basic -AllowRedirection 
Import-PSSession $Session 
import-csv C:\Users\nlad\Desktop\PANACEA\Title.csv | foreach {Set-User –identity $_."identity" -Title $_."title"}