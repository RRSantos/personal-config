#Script to install custom fonts
$FONTS = 0x14
$sa = New-Object -ComObject Shell.Application
$Font = $sa.Namespace($FONTS)
$fontFiles = Get-ChildItem ".\*.ttf"
foreach ($file in $fontFiles)
{
	$fileName = $file.Name
	if ( -not (Test-Path "$env:windir\Fonts\$fileName"))
	{
		$Font.CopyHere($file.fullName, 0x10)
	}
}
