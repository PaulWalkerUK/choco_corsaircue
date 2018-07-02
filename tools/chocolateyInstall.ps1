$ErrorActionPreference = 'Stop';

$packageName = 'cue';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'MSI';
$url = 'http://downloads.corsair.com/download?item=Files/CUE/iCUESetup_3.4.95_release.msi';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/QN'
  validExitCodes= @(0)
  softwareName  = 'cue*'
  checksum      = '00D400A5948809D2DD34C5276E2A7DA45EBDE6E4C3A10B536DE3A9A475508638'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;