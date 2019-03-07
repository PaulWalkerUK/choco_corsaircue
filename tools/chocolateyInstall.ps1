$ErrorActionPreference = 'Stop';

$packageName = 'cue';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'MSI';
$url = 'http://downloads.corsair.com/Files/CUE/iCUESetup_3.13.94_release.msi';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/QN'
  validExitCodes= @(0)
  softwareName  = 'cue*'
  checksum      = '619CF1422646A47D8E1323DF9A56CC9C54A23BD4ECE217F7DAD21690CAB7B5A7'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;