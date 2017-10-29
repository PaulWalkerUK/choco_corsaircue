$ErrorActionPreference = 'Stop';

$packageName = 'cue';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'MSI';
$url = 'http://downloads.corsair.com/download?item=Files/CUE/CorsairUtilityEngineSetup_2.19.65_release.msi';

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url
  silentArgs    = '/QN'
  validExitCodes= @(0)
  softwareName  = 'cue*'
  checksum      = '21B69D0345A3A63F9A12BF781F8AA581783A0C4631D61CAB9AA81A526FBBF9CE'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;