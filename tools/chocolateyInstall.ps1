$ErrorActionPreference = 'Stop';

$packageName = 'cue';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'MSI';
$url = 'https://downloads.corsair.com/download?item=Files/CUE/CorsairUtilityEngineSetup_2.24.50_release.msi';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/QN'
  validExitCodes= @(0)
  softwareName  = 'cue*'
  checksum      = 'D6242486B35027A7F243F7726EC559C09A895FB1DAAC2C9ADCA297B27CF080D5'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;