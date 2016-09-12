function Execute-EncryptedScript($path) {
  trap { "Decryption failed"; break }
  $raw = Get-Content $path
  $secure = ConvertTo-SecureString $raw
  $helper = New-Object system.Management.Automation.PSCredential("test", $secure)
  $plain = $helper.GetNetworkCredential().Password
  Invoke-Expression $plain
}

CLS
#… Present the Menu Options
Write-Host "`n`t`t" -NoNewline 
Write-Host "GCC HIRE & TERMINATION SYSTEM v1.0 BETA`n`n" -ForegroundColor yellow

Write-Host "HIRE & TERMINATION" -ForegroundColor Yellow -NoNewline 							
Write-Host "				MAILBOX ADMINISTRATION" -ForegroundColor Yellow
Write-Host " 1. New Hire" -Fore white -NoNewline												
write-host "					17. Set Mailbox Permissions" -ForegroundColor White
Write-Host " 2. Termination" -Fore white -NoNewline									
Write-Host "			                18. Set Mailbox Size" -ForegroundColor White
Write-Host "			                        19. Add/Remove Mailbox Alias" -ForegroundColor White
Write-Host "SEARCH" -ForegroundColor yellow -NoNewline 
Write-Host "				                20. Add Additional Account/Mailbox" -ForegroundColor white
Write-Host " 3. User (First + Last)" -ForegroundColor White -NoNewline
Write-Host "                         21. DECOM Mailbox (30 day extension)" -ForegroundColor White 						
Write-Host " 4. User (Username)" -ForegroundColor White -NoNewline 							
Write-Host "				" -ForegroundColor Yellow
Write-Host " 5. User Group Membership (Username)" -ForegroundColor White -NoNewline 		
Write-Host "		COMPUTER ADMINISTRATION" -ForegroundColor yellow
Write-Host " 6. Group Membership" -ForegroundColor White -NoNewline						
Write-Host "		                22. Assign Computer" -ForegroundColor White
Write-Host " 7. Computer" -ForegroundColor White -NoNewline
Write-Host "				        23. Move Computer" -ForegroundColor White
Write-Host "			                        24. DECOM Computer" -ForegroundColor white
Write-Host "ACCOUNT ADMINISTRATION" -ForegroundColor yellow 
Write-Host " 8. Unlock Account" -ForegroundColor White -NoNewline  
Write-Host "				EXCEL REPORTS" -ForegroundColor yellow
Write-Host " 9. Reset Password" -ForegroundColor White -NoNewline  
write-host "				25. Group Membership Comparison" -ForegroundColor white
Write-Host "10. Reset Account Expiration" -ForegroundColor White -NoNewline
Write-Host "		        26. Locked Out Users" -ForegroundColor white
Write-Host "11. Add/Remove Department Group" -ForegroundColor White -NoNewline 
Write-Host "			27. Expired Users" -ForegroundColor white
Write-Host "12. Add/Remove Global Group" -ForegroundColor white -NoNewline
Write-Host "			28. Shared Mailboxes" -ForegroundColor white
Write-Host "13. Move Account" -ForegroundColor white -NoNewline 
Write-Host "			        29. Disabled Users with Active Mailboxes" -ForegroundColor white
Write-Host "14. Edit Account" -ForegroundColor white -NoNewline
Write-Host "			        30. Enabled Users (Inactive 6 Months)" -ForegroundColor white
Write-Host "15. Convert Account" -ForegroundColor white -NoNewline  
Write-Host "				31. Enabled Computers (Inactive 6 Months)" -ForegroundColor white
Write-Host "16. Local Admin Access" -NoNewline -ForegroundColor darkgray
Write-Host "				32. Server Share" -ForegroundColor white
Write-Host "				                33. Server Folder (NTFS)" -ForegroundColor white
Write-Host " A. About HTS" -ForegroundColor White -NoNewline 
Write-Host "				        34. Emergency Contact List" -ForegroundColor White
Write-Host "				                35. All Users (Audit)" -ForegroundColor White
Write-Host "				                36. VPN Users (Audit)" -ForegroundColor White
                                                                    

#… Retrieve the response from the user
Write-Host "`n`nOption: " -Fore yellow -nonewline
$choice = Read-Host

if ($choice -eq "exit")
{
Execute-EncryptedScript .\menu.bin
}

$choices=1..37
$choices+='a'

if ($choices -notcontains $choice)
{
Write-Host "`nYou did not enter a valid option`n" -ForegroundColor Red
Write-Host -NoNewLine 'Press any key to continue...' -ForegroundColor yellow
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

Execute-EncryptedScript .\menu.bin
}

if ($choice -eq 1){
	Execute-EncryptedScript .\1.bin
	}
if ($choice -eq	2) {
	Execute-EncryptedScript .\2.bin
	}
if ($choice -eq	3) {
	Execute-EncryptedScript .\3.bin
	}
if ($choice -eq 4) {
    Execute-EncryptedScript .\4.bin
    }
if ($choice -eq 5) {
    Execute-EncryptedScript .\5.bin
    }
if ($choice -eq 6) {
    Execute-EncryptedScript .\6.bin
    }
if ($choice -eq 7) {
    Execute-EncryptedScript .\7.bin
    }
if ($choice -eq 8) {
    Execute-EncryptedScript .\8.bin
    }
if ($choice -eq 9) {
    Execute-EncryptedScript .\9.bin
    }
if ($choice -eq 10) {
    Execute-EncryptedScript .\10.bin
    }
if ($choice -eq 11) {
    Execute-EncryptedScript .\11.bin
    }
if ($choice -eq 12) {
    Execute-EncryptedScript .\12.bin
    }
if ($choice -eq 13) {
    Execute-EncryptedScript .\13.bin
    }
if ($choice -eq 14) {
    Execute-EncryptedScript .\14.bin
    }
if ($choice -eq 15) {
    Execute-EncryptedScript .\15.bin
    }	
if ($choice -eq 16) {
    Execute-EncryptedScript .\16.bin
    }
if ($choice -eq 17) {
    Execute-EncryptedScript .\17.bin
    }	
if ($choice -eq 18) {
    Execute-EncryptedScript .\18.bin
    }
if ($choice -eq 19) {
    Execute-EncryptedScript .\19.bin
    }
if ($choice -eq 20) {
    Execute-EncryptedScript .\20.bin
    }
if ($choice -eq 21) {
    Execute-EncryptedScript .\21.bin
    }
if ($choice -eq 22) {
    Execute-EncryptedScript .\22.bin
    }	
if ($choice -eq 23) {
    Execute-EncryptedScript .\23.bin
    }
if ($choice -eq 24) {
    Execute-EncryptedScript .\24.bin
    }
if ($choice -eq 25) {
    Execute-EncryptedScript .\25.bin
    }
if ($choice -eq 26) {
    Execute-EncryptedScript .\26.bin
    }
if ($choice -eq 27) {
    Execute-EncryptedScript .\27.bin
    }
if ($choice -eq 28) {
    Execute-EncryptedScript .\28.bin
    }
if ($choice -eq 29) {
    Execute-EncryptedScript .\29.bin
    }
if ($choice -eq 30) {
    Execute-EncryptedScript .\30.bin
    }
if ($choice -eq 31) {
    Execute-EncryptedScript .\31.bin
    }
if ($choice -eq 32) {
    Execute-EncryptedScript .\32.bin
    }
if ($choice -eq 33) {
    Execute-EncryptedScript .\33.bin
    }
if ($choice -eq 34) {
    Execute-EncryptedScript .\34.bin
    }
if ($choice -eq 35) {
    Execute-EncryptedScript .\35.bin
    }
if ($choice -eq 36) {
    Execute-EncryptedScript .\36.bin
    }
if ($choice -eq 37) {
    Execute-EncryptedScript .\37.bin
    }
if ($choice -eq 'A') {
    Execute-EncryptedScript .\A.bin
    }
