#$UserPerDatabase = Get-mailbox -Database “DB05” -ResultSize Unlimited

$UserPerDatabase = Get-mailbox -ResultSize Unlimited

ForEach ($User in $UserPerDatabase)

{

$Temp = Get-MailboxJunkEmailConfiguration $User

If ($temp.Enabled)

{

Set-MailboxJunkEmailConfiguration $User -TrustedSendersAndDomains @{Add='xxxxx.com.br', 'yyyy.com.br'}

}

}
