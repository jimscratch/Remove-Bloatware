#safe to remove, these are useless
$SafeApps = @(
    "*Microsoft.549981C3F5F10*"
    "*Microsoft.3DBuilder*"
    "*Microsoft.BingFinance*"
    "*Microsoft.BingNews*"
    "*Microsoft.BingSports*"
    "*Microsoft.BingTranslator*"
    "*Microsoft.BingWeather*"
    "*Microsoft.Microsoft3DViewer*"
    "*Microsoft.MicrosoftOfficeHub*"
    "*Microsoft.MicrosoftSolitaireCollection*"
    "*Microsoft.Office.OneNote*"
    "*Microsoft.People*"
    "*Microsoft.Print3D*"
    "*Microsoft.SkypeApp*"
    "*Microsoft.WindowsAlarms*"
    "*Microsoft.windowscommunicationsapps*"
    "*Microsoft.WindowsMaps*"
    "*Microsoft.YourPhone*"
    "*Microsoft.WindowsPhone*"
    "*Microsoft.WindowsSoundRecorder*"
    "*Microsoft.ZuneVideo*"
    "*Microsoft.ZuneMusic*"
    "*Microsoft.GetHelp*"
    "*Microsoft.Messaging*"
    "*Microsoft.WindowsCamera*"
    "*RealtekSemiconductorCorp.RealtekAudioControl*"
)
#shitty 3rd party apps that MS adds
$ThirdPartyApps = @(
    "*EclipseManager*"
    "*ActiproSoftwareLLC*"
    "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
    "*Duolingo-LearnLanguagesforFree*"
    "*PandoraMediaInc*"
    "*CandyCrush*"
    "*Wunderlist*"
    "*Flipboard*"
    "*Twitter*"
    "*Facebook*"
    "*Spotify*"
)
#untested but should be safe if you dont use MS apps
$UntestedApps = @(
    #"*Microsoft.XboxGameOverlay*"
    #"*Microsoft.XboxGamingOverlay*"
    #"*Microsoft.Xbox.TCUI*"
    #"*Microsoft.XboxSpeechToTextOverlay*"
    #"*Microsoft.XboxIdentityProvider*"
    #"*Microsoft.WebMediaExtensions*"
    #"*Microsoft.Wallet*"
    #"*Microsoft.Windows.Photos*"
    #"*Microsoft.GamingServices*"
    #"*Microsoft.GamingApp*"
)
#extremely dangerous to remove, only remove if VM or testing
$DangerousApps = @(
    #"*Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe*"
    #"*Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe*"
    #"*Microsoft.MicrosoftEdge.Stable*"
    #"*Microsoft.StorePurchaseApp*"
    #"*Microsoft.MicrosoftEdge*"
    #"*Microsoft.WindowsStore*"
)

$host.UI.RawUI.WindowTitle = "Bloatware Removal Script"
#Removes bloatware from windows 10 depending on how intense it is.
Write-Host "Remove Bloatware Script, verified safe, used, and created by Zezypisa."
Write-Host "Make sure to run this with Administrator, or it will not work."
Write-Host "Use this at your own risk."
Write-Host "Note: You will need to manually disable the untested and dangerous programs to remove them."
$confirmation = Read-Host "Are you Sure You Want To Proceed? [yes\no]"
if ($confirmation -eq "yes") {
    $confirmation = Read-Host "Do you want to remove safe programs, untested programs, or dangerous programs [safe\untested\dangerous]"
    if ($confirmation -eq 'safe') {
        foreach ($SafeApps in $SafeApps) {Get-AppxPackage -Name $SafeApps | Remove-AppxPackage -ErrorAction SilentlyContinue}
        foreach ($ThirdPartyApps in $ThirdPartyApps) {Get-AppxPackage -Name $ThirdPartyApps | Remove-AppxPackage -ErrorAction SilentlyContinue}
    }
    if ($confirmation -eq 'untested') {
        foreach ($UntestedApps in $UntestedApps) { Get-AppxPackage -Name $UntestedApps | Remove-AppxPackage -ErrorAction SilentlyContinue}
    }
    if ($confirmation -eq 'dangerous') {
        foreach ($DangerousApps in $DangerousApps) {Get-AppxPackage -Name $DangerousApps | Remove-AppxPackage -ErrorAction SilentlyContinue }
    }
    Write-Host "Finished."
    pause
    exit
}
if ($confirmation -eq "no") {
    Write-Host "Alright, Cancelled. No files have been modified"
    pause
    exit
}
