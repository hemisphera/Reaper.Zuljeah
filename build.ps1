$items = Get-ChildItem "$PSScriptRoot\_actions" -Recurse -Include *.lua
$Core = Get-Content "$PSScriptRoot\core.lua" -Raw -Encoding utf8

$TargetFolder = "$PSScriptRoot\dist"
New-Item -ItemType Directory -Force -Path $TargetFolder | Out-Null
foreach ($item in $items) {
    $content = Get-Content $item.FullName -Raw -Encoding utf8
    $content = $Core + "`n`n--====--`n`n" + $content
    $content | Set-Content ("$TargetFolder\Zuljeah_$($item.Name)") -Encoding utf8
}