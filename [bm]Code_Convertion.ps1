$input_str = Read-Host "[Base64 Encode]>Please input your contents([Enter] to quit)"

if ($input_str -ne '') {
    $base64_res = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($input_str)) # 转base64
    echo "`n>>>>>Base64: $base64_res"`n
}

$input_code= Read-Host "[Base64 Decode]>Please input code to decode(type [Enter] to quit)"
try {
    if ($input_code -ne '') {
        $real_str = [Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($input_code)) # 转回
        echo ">>>>>Real String: $real_str`n"
       pause
    }
}
catch {
    echo "`n>>>>>INPUT ERROR!!!`n"
    pause
}
