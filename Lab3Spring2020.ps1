<#

Purpose: 3rd Powershell lab. Practices use of:
            Here-strings
            Piping commands
            Writing and reading files
            Conditional logic

Author:  Cody Warbalow
File:    Lab3Spring2020.ps1
Date:    February 24, 2020

#>

clear-host

Set-Location -Path C:\Users\warcodp

get-childitem *txt | format-table -property name, length

@"
What do you want to do?
    1. Write a contract entry to a file
    2. Display all files last written to after a given date
    3. Read a specified text file
"@

$number = read-host 1,2 or 3

if ($number -eq 1) {
    write-host("choose 1")
    $name = read-host "Full Name"
    $phone = read-host "Phone Number"
    $email = read-host "Email"
    $file = read-host "Name of file"
    add-content C:\Users\warcodp\$file "`n$name `n$phone `n$email"
} elseif ($number -eq 2) {
    write-host("choose 2")
    $time = read-host "Earliest write time"
    Get-ChildItem -File | Where { $_.LastWriteTime -ge $time } | format-table -property name, lastwritetime
} elseif ($number -eq 3) {
    write-host("choose 3")
    $text = read-host "Enter Text File"
    $exist = Test-Path -Path $text -PathType leaf
    if ($exist -eq $true) {
        get-content -path $text}
    else {write-host "File doesnt exist"}
} else {
 write-host("Enter valid number")
}