# Get the number of lines in the TXT file
$txtFilePath = [Environment]::GetEnvironmentVariable('inputawai')

# Loop through each line in the file
Get-Content -Path $txtFilePath -ReadCount 1 | ForEach-Object {
    $packageName = $_.Trim()

    # Replace spaces with dots in the package name
    $packageNameWithDots = $packageName.Replace(" ", ".")

    # Install the package using Winget
    winget install $packageNameWithDots
}