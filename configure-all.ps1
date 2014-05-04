#This script will run all instalation/customization scripts

function ExecuteScript([string]$path, [string]$script)
{
	$originalPath = Get-Location
	Set-Location $path
	. ".\$script"
	Set-Location $originalPath
}


#Vim configuration
ExecuteScript "vim" "config-vim.ps1"

#Install fonts
ExecuteScript "fonts" "install-fonts.ps1"
