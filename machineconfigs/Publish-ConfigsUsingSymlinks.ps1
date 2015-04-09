$dir = $PsScriptRoot

$configs = gci "$dir\*.config"

$frameworkDirs = gci -recurse "C:\Windows\Microsoft.NET\**\config"

$configs | foreach {
    $config = $_

    $frameworkDirs | foreach {
        $frameworkConfigDir = $_

        write-host "publishing $config to $frameworkConfigDir"
       
        $configFilename = $config.Name

        $symlink = Join-Path $frameworkConfigDir "$configFileName"

        if ( Test-Path $symlink ){
          $cmd = "cmd /C del $symlink"
          $cmd
          Invoke-Expression $cmd
        }

        $cmd = "New-Symlink $symlink $config"
        $cmd

        Invoke-Expression $cmd
    }
}
