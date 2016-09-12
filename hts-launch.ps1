function Execute-EncryptedScript($path) {
  trap { "Decryption failed"; break }
  $raw = Get-Content $path
  $secure = ConvertTo-SecureString $raw
  $helper = New-Object system.Management.Automation.PSCredential("test", $secure)
  $plain = $helper.GetNetworkCredential().Password
  Invoke-Expression $plain
}

$pshost = get-host
$pswindow = $pshost.ui.rawui

$pswindow.BackgroundColor = "black"

$pswindow.windowtitle = "GCC HTS"
$newsize = $pswindow.buffersize
$newsize.height = 3000
$newsize.width = 150
$pswindow.buffersize = $newsize

$newsize = $pswindow.windowsize
$newsize.height = 40
$newsize.width = 110
$pswindow.windowsize = $newsize

$buffer = $host.ui.rawui.buffersize
$buffer.width = 110
$host.ui.RawUI.BufferSize = $buffer
clear-host 
remove-variable -name buffer

# Take over Write-Host
function Write-Host {}

. 'C:\Program Files\Microsoft\Exchange Server\V14\bin\RemoteExchange.ps1'
Connect-ExchangeServer -server exchange02.nobrainer2.com

$initialize = get-mailbox bgeorge

# Load Remote Exchange Commands
#$warningpreference = "silentlycontinue"
#$session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://exchange02.nobrainer2.com/powershell -Authentication Kerberos
#Import-PSSession $session | out-null

#$h = Get-Host
#$win = $h.ui.rawui.windowsize
#$win.width = 110
#$h.ui.rawui.set_windowsize($win)


Import-Module activedirectory

$u = get-aduser -identity bgeorge -server cvpdc01 -properties distinguishedname,info,enabled,department,lockedout,description,manager,mobilephone,telephonenumber,mailnickname,displayname,accountexpirationdate,created,lastlogondate

#New-PSDrive -Name DC01 -PSProvider ActiveDirectory -Server cvpdc01 -Root "//RootDSE/" -Scope Global | Out-Null 
#CD DC01:

# Give Back Write-Host
Remove-Item function:Write-Host

Execute-EncryptedScript .\menu.bin