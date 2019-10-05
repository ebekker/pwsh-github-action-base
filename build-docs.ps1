
pwsh -c @'
    . ./lib/ActionsCore.ps1

    if (-not (Test-Path docs)) { mkdir docs }
    Write-Output ""| Cmdlet | Synopsis |"" > docs/README.md
    Write-Output ""|-|-|""                >> docs/README.md
    Get-Command *-Action* | % { Get-Help $_.Name | Select-Object @{
        Name = ""Row""
        Expression = {
            $n = $_.Name.Trim()
            $s = $_.Synopsis.Trim()
            ""| [$($n)]($($n).md) | $($s) |""
        }
    } } | Select-Object -Expand Row  >> docs/README.md
    Get-Command *-Action* | % { Get-Help -Full $_.Name | Select-Object @{
        Name = ""Row""
        Expression = {
            $n = $_.Name.Trim()
            ""# $n""
            ""``````""
            $_
            ""``````""
        }
    } | Select-Object -Expand Row  > ""docs/$($_.Name).md"" }
'@
