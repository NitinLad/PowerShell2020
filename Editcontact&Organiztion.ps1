Set-ExecutionPolicy RemoteSigned 
$LiveCred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell/ -Credential $LiveCred -Authentication Basic -AllowRedirection 
Import-PSSession $Session 
#import-csv D:\ContactOrganization.csv | foreach {Set-User –identity $_."identity" –StreetAddress $_.“StreetAddress” -postalcode $_."zip" –City $_."CITY" -Company $_."company" -Department $_."department" -Title $_."title" –MobilePhone $_."mobilephone" –State $_."state" -Manager $_."manager"}
import-csv D:\ContactOrganization.csv | foreach {Set-User –identity $_."identity" –StreetAddress $_.“StreetAddress” -postalcode $_."zip" –City $_."CITY" -Company $_."company" -Department $_."department" -Title $_."title" –State $_."state" -Manager $_."manager"}