$ErrorActionPreference = 'Stop';

$packageName = 'cue';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'MSI';
$url = 'http://downloads.corsair.com/download?item=Files/CUE/CorsairUtilityEngineSetup_2.15.83_release.msi';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/QN'
  validExitCodes= @(0)
  softwareName  = 'cue*'
  checksum      = '60E8D29300FDB786DD36FA82A0F9FE52674CAFDC1CC33D101393AF617D6504B7'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;