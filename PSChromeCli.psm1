<#
.SYNOPSIS
Chrome がインストールされているフォルダーのパスを返します。
#>
function Get-ChromePath(){
    #C:\Program Files (x86)\Google\Chrome\Application
    if(Test-Path "${env:ProgramFiles}/Google/Chrome/Application"){
        $ChromePath=Resolve-Path "${env:ProgramFiles}/Google/Chrome/Application"
    }elseif(Test-Path "${env:ProgramFiles(x86)}/Google/Chrome/Application"){
        $ChromePath=Resolve-Path "${env:ProgramFiles(x86)}/Google/Chrome/Application"
    }

    return $ChromePath
}

<#
.SYNOPSIS
環境変数 Path へ Chrome がインストールされているフォルダーのパスを追加します。
#>
function Set-ChromePath(){
    $ChromePath=Get-ChromePath
    $env:Path="${env:Path}${ChromePath};"
}