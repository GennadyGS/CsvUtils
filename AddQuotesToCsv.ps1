param (
    [Parameter(Mandatory=$true)] $inputFilePath,
    $outputFilePath
)

$outputFilePath ??=
    [IO.Path]::GetFileNameWithoutExtension($inputFilePath) +
    "_Out" +
    [IO.Path]::GetExtension($inputFilePath)
$csv = Import-Csv $inputFilePath
$csv | Export-Csv $outputFilePath -UseQuotes Always