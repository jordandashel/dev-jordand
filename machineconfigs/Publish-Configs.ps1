$dir = $PsScriptRoot

$configs = gci "$dir\*.config"

$frameworkDirs = gci -recurse "C:\Windows\Microsoft.NET\**\config"

$configs | foreach {
    $config = $_

    $frameworkDirs | foreach {
        $frameworkConfigDir = $_

        write-host "publishing $config to $frameworkConfigDir"
        Copy-Item $config $frameworkConfigDir -Force
    }
}