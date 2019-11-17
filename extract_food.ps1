param (
    [string]$filename = "store.txt"
)

$outfie = (Get-Item -Path ".").FullName + "\" + $filename.Split(".")[0] + "_processed.txt"
$regex = "(always|normal):food:(.*)"
$stream = [System.IO.StreamWriter] $outfie 


Get-Content .\$filename | Where-Object {$_ -match $regex} | ForEach-Object {
    Write-Host $Matches[2]
    $stream.WriteLine("name:" + $Matches[2])
    $stream.WriteLine("graphics:?:y")
    $stream.WriteLine("type:food")
    $stream.WriteLine("properties:0:5:9000")
    $stream.WriteLine("desc:.")
    $stream.WriteLine("")
}

$stream.close()