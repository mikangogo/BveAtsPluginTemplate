$OutputEncoding='utf-8'

$pathBuildDirectory = "build"

function CreateDirectory($path)
{
  if (Test-Path $path)
  {
    return
  }

  New-Item $path -ItemType Directory
}

CreateDirectory $pathBuildDirectory
Set-Location $pathBuildDirectory

cmake ..