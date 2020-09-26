## With the Help of this script we can create Multiple DL's ##

#Set-ExecutionPolicy unrestricted RemoteSigned
Set-ExecutionPolicy RemoteSigned
$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session
Import-Csv D:\AddingMultiDL1.csv | ForEach-Object {New-DistributionGroup -Name $_.Name -Type $_.Type -PrimarySmtpAddress $_.PrimarySmtpAddress}

