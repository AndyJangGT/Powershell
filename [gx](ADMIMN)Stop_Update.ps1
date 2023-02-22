echo Your choice: [jz] or [gx]
$choice = echo
if ($choice -eq 'jz') {
    New-Item -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"
    Set-ItemProperty -Path Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate" -Type "DWord" -Value 1
}
elseif ($choice -eq 'gx') { 
    Remove-Item Registry::"HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" 
}

