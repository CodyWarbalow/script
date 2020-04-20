<#
    PowerShell Lab 7
    Manipulate users, OUs, groups, and group memberships
    Date:   Apr 13 2020, Week 14
    Created by: Cody Warbalow
#>

cls

$anwser = read-host "Choose from the following Menu Items:
 A. VIEW one OU       B. VIEW all OUs
 C. VIEW one Group    D. VIEW all Groups
 E. VIEW one User     F. VIEW all Users
 `n
 G. CREATE one OU     H. CREATE one Group
 I. CREATE one User   J. CREATE Users from a CSV file
 `n
 K. Add user to group L. REMOVE user from group
 `n
 M. DELETE one Group  N. DELETE one user

 read-host Enter a letter A thru N"

if ($anwser -eq "A") {
    $Getou = read-host "What OU to view?"
    get-adorganizationunit -Identity "ou=$Getou, dc=adatum, dc=com" | format-table -property Name, DistinguishedName
}

elseif ($anwser -eq "B") {
write-output jskadjid
}

elseif ($anwser -eq "C") {
write-output jskadjid
}

elseif ($anwser -eq "D") {
write-output jskadjid
}

elseif ($anwser -eq "E") {
    $getuser = read-host "What user to view?"
    get-aduser -Identity $getuser | format-table -property Name, DistinguishedName
}

elseif ($anwser -eq "F") {
write-output jskadjid
}

elseif ($anwser -eq "G") {
write-output jskadjid
}

elseif ($anwser -eq "H") {
write-output jskadjid
}

elseif ($anwser -eq "I") {
write-output jskadjid
}

elseif ($anwser -eq "J") {
write-output jskadjid
}

elseif ($anwser -eq "K") {
    $group = read-host "Group to add to?"
    $user = read-host "User to add $group`?"
    add-adgroupmember -identity $group -members $user
    get-adgroupmember -identity $group | format-table SamAccountName, DistinguishedName
}

elseif ($anwser -eq "L") {
    $group = read-host "Group to remove from?"
    $user = read-host "User to remove from $group`?"
    reove-adgroupmeber -identity $group -members $user
}

elseif ($anwser -eq "M") {
write-output jskadjid
}

elseif ($anwser -eq "N") {
write-output jskadjid
}