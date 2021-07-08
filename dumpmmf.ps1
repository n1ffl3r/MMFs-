$mmf = $null
$name = "some mmf name"
$mmf = [System.IO.MemoryMappedFiles.MemoryMappedFile]::OpenExisting(("Global\{0}" -f $name)
$stream = $mmf.CreateViewStream()
$streamReader = New-Object System.IO.StreamReader –ArgumentList $stream
$streamReader.ReadToEnd()
$streamReader.Dispose()
$stream.Dispose()
