#Script to customize gvim
$rcFiles = "windows\*"
$vimFiles = @("colors", "doc", "ftdetect", "ftplugin", "indent", "syntax")
$userPath =  $env:userprofile
$vimUserConfigPath = "$userPath\.vim"

Copy-Item $rcFiles -Destination $userPath -force

if (-not (Test-Path $vimUserConfigPath)) {mkdir $vimUserConfigPath}

Copy-Item $vimFiles -Destination $vimUserConfigPath -Recurse


