while (1) {
    $path = Read-Host "请输入文件夹路径(如D:\music), 按0退出!"
    
    if (Test-Path $path) {
        $codeRate = Read-Host "请输入压缩码率(如64k/128k/320k等)"
        Get-ChildItem $path -Filter *.mp3 | ForEach-Object {
            $newName = "{0}_.mp3" -f $_.BaseName
            ffmpeg -i $_.FullName -codec:a libmp3lame -b:a $codeRate $newName
            Write-Host "$_.文件已压缩`n"
        }
    }
    elseif ($path -eq "0") {
        Write-Host "程序已退出!`n"
        break
    }
    else {
        Write-Host "无效路径: $path, 请重新输入!`n" -ForegroundColor Red
    }
}
  