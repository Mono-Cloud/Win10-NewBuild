# Create a path for the working directory
$workdir = "c:\InitialInstall\"

# Check if work directory exists if not create it

if (Test-Path -Path $workdir -PathType Container)

{
     Write-Host "$workdir already exists" -ForegroundColor Red
}
else
{ 
New-Item -Path $workdir  -ItemType directory 
}

# Download the installer (Linked is a link to the most recently updated AVG)

$source = "https://bits.avcdn.net/productfamily_ANTIVIRUS/insttype_FREE/platform_WIN_AVG/installertype_ONLINE/build_RELEASE"
$destination = "$workdir\AVG.exe"

# Check if Invoke-Webrequest exists otherwise execute WebClient

if (Get-Command 'Invoke-Webrequest')
{
     Invoke-WebRequest $source -OutFile $destination
}
else
{
    $WebClient = New-Object System.Net.WebClient
    $webclient.DownloadFile($source, $destination)
}

# Start the installation

Start-Process -FilePath "$workdir\AVG.exe" -ArgumentList "/S"

# Wait 6 minutes for the installation to finish

Start-Sleep -s 600

# Remove the installer

rm -Force $workdir\AVG*




