<# Convert int number to Chinese characters #>
# [array]$amount_in_words = "零", "壹", "贰", "叁", "肆", "伍", "陆", "柒", "捌", "玖"

# function ConvertAmount {
#     echo "Please input a number: "
#     [array]$input_num = echo
#     for ($i = 0; $i -lt $input_num.Length; $i++) {
#         #$amount_in_words[$i]
#         [int]$single_num = $input_num[$i]
#         $amount_in_words[$single_num] -join ""
#     }
# }

# $amount_res = ConvertAmount
# $amount_res


function IntToAnother {
    param($input_content)
    
    $input_content = Read-Host "[***Convert Function***]`nPlease input your number"
    echo "`n>>>>>Int to Binary:"
    [System.Convert]::ToString($input_content, 2) # int to binary
    echo "`n>>>>>Int to Octal:"
    [System.Convert]::ToString($input_content, 8) # int to octal
    echo "`n>>>>>Int to Hex:"
    [System.Convert]::ToString($input_content, 16) # int to hex
    echo "`n>>>>>Base64:"
    [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($input_content))
    #echo "`n>>>>>Hex + Base64:"
    #[Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes([System.Convert]::ToString($input_content, 16)))
}
IntToAnother
pause
