$host.UI.RawUI.WindowTitle = "Bloatware Removal Script"
Write-Host "Remove Bloatware Script, verified safe, used, and created by Zezypisa"
Write-Host "I am not responsible for any data loss, operating system corruption, or any other damage to your hardware or software with this script."
Write-Host "Use this at your own risk. You will need to manually disable the untested and dangerous programs to remove them"
$confirmation = Read-Host "Are you Sure You Want To Proceed [yes\no]"
if ($confirmation -eq "yes") {
    $confirmation = Read-Host "Do you want to remove just cortana, safe programs, untested programs, or dangerous programs [cortana\safe\untested\dangerous]"
    if ($confirmation -eq "cortana") {
        Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage
    }
    if ($confirmation -eq 'safe') {
        #safe to remove
        Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.3DBuilder* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.BingFinance* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.BingSports* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.BingTranslator* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.People* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage
        Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.WindowsPhone* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage
        Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage
        pause
        exit
    }
    if ($confirmation -eq 'untested') {
        #untested but should be safe if you dont use MS apps#
        #Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.Windows.Photos* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.GamingServices* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.GamingApp* | Remove-AppxPackage
        pause
        exit
    }
    if ($confirmation -eq 'dangerous') {
        #extremely dangerous to remove, only remove if VM or testing
        #Get-AppxPackage *Microsoft.MicrosoftEdge.Stable* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.StorePurchaseApp* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.MicrosoftEdge* | Remove-AppxPackage
        #Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage
        pause
        exit
    }
}
if ($confirmation -eq "no") {
    exit
}