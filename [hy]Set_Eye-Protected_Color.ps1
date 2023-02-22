
echo "[***Eye-Protected Color Script***]`nPlease choose a number to run a script:
`n[1]Eye-Protected_Color`n[2]Restore`n"
[string]$choice = echo
if ($choice -eq "1") {
    # Set eye-protected color in reg(Need Confirming)
    Set-ItemProperty -Path Registry::"HKEY_CURRENT_USER\Control Panel\Colors" -Name "Window" -Value '202 234 206'
    Get-ItemProperty -Path Registry::"HKEY_CURRENT_USER\Control Panel\Colors" -Name "Window"
} elseif ($choice -eq "2"){
    # Restore Default "Window" color(Need Confirming)
    Set-ItemProperty -Path Registry::"HKEY_CURRENT_USER\Control Panel\Colors" -Name "Window" -Value '255 255 255'
    Get-ItemProperty -Path Registry::"HKEY_CURRENT_USER\Control Panel\Colors" -Name "Window"
}