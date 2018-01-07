$ErrorActionPreference = 'Stop';

$packageName = 'cue';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'MSI';
$url = 'http://downloads.corsair.com/download?item=Files/CUE/CorsairUtilityEngineSetup_2.21.67_release.msi';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/QN'
  validExitCodes= @(0)
  softwareName  = 'cue*'
  checksum      = '65C9F747A73BA6E3CED3F65B44FB9451A3B581A61AB87750DAF5CCC93DF8D58A'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;