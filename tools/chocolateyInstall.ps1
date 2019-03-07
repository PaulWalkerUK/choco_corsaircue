$ErrorActionPreference = 'Stop';

$packageName = 'cue';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'MSI';
$url = 'http://downloads.corsair.com/Files/CUE/iCUESetup_3.7.99_release.msi';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/QN'
  validExitCodes= @(0)
  softwareName  = 'cue*'
  checksum      = '86D286836454297E7C9F3A9B428020D4D6C0087F3116BF0167AFA64B59FCE7A0'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;