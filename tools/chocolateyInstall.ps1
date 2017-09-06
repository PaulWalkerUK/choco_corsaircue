$ErrorActionPreference = 'Stop';

$packageName = 'cue';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'MSI';
$url = 'http://downloads.corsair.com/download?item=Files/CUE/CorsairUtilityEngineSetup_2.16.87_release.msi';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/QN'
  validExitCodes= @(0)
  softwareName  = 'cue*'
  checksum      = '8E384F3ED1C7DA94028E40059893AEEAF21C77E9ADAB38275B415AF7BD985956'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;