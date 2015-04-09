 Get-ChildItem -Path C:\Windows\Microsoft.NET -Filter config -recurse | foreach { 
  $dir = $_.FullName
  "opening $dir"
   explorer $dir
}
