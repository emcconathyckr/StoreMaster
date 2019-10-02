
#Assigning Parameter Values for SM Interface Paths##
Get-Content "C:\POSBOH\ParamFile\SM_Interface_Wrap_Files.txt" | ForEach-Object -Begin {$settings=@{}} -Process {$store = [regex]::split($_,'='); if(($store[0].CompareTo("") -ne 0) -and ($store[0].StartsWith("[") -ne $True) -and ($store[0].StartsWith("#") -ne $True)) {$settings.Add($store[0], $store[1])}}
$SM_Logs_Path = $settings.Get_Item("SM_Logs_Path")
$SM_Src_IN_Path = $settings.Get_Item("SM_Src_IN_Path")
$SM_IICS_Src_Path = $settings.Get_Item("SM_IICS_Src_Path")

##Log File##
$Logfile = "$SM_Logs_Path\SM_FTP_Files_Copy_$(get-date -f yyyy-MM-dd_HHmmss).log"
Function LogWrite
{
   Param ([string]$logstring)
   Add-content $Logfile -value $logstring
}
LogWrite "START"
LogWrite "Log Files Path : $SM_Logs_Path"
LogWrite "Source(People Soft) IN Path : $SM_Src_IN_Path"
LogWrite "Source IICS Path : $SM_IICS_Src_Path"
LogWrite "`n"


##To Copy the Remote server folder files to IICS Path##

Copy-Item  $SM_Src_IN_Path\UM_DATA.txt $SM_IICS_Src_Path
Copy-Item  $SM_Src_IN_Path\UM_DATES.txt $SM_IICS_Src_Path
Copy-Item  $SM_Src_IN_Path\UM_Hours.txt $SM_IICS_Src_Path
Copy-Item  $SM_Src_IN_Path\UM_Ops_Hieararchy.txt $SM_IICS_Src_Path
Copy-Item  $SM_Src_IN_Path\UM_Ops_Hieararchy_Descr_File.txt $SM_IICS_Src_Path
Copy-Item  $SM_Src_IN_Path\UM_ATTRIBUTES.txt $SM_IICS_Src_Path

LogWrite "Files are copied into Source IICS Path : $SM_IICS_Src_Path Successfully"
LogWrite "`n"


## To Remove the Last Character/Delimiter (|) from each line ##

Get-Content $SM_IICS_Src_Path\UM_DATA.txt  | Foreach {$_.TrimEnd('|')}  | Foreach {$_ -replace '[^a-zA-Z0-9 !@#$%^&*()`~+=-_{}\|":;<>,./?]'} | Set-Content "$SM_IICS_Src_Path\UM_DATA_File.txt"
Get-Content $SM_IICS_Src_Path\UM_DATES.txt  | Foreach {$_.TrimEnd('|')} | Foreach {$_ -replace '[^a-zA-Z0-9 !@#$%^&*()`~+=-_{}\|":;<>,./?]'} | Set-Content "$SM_IICS_Src_Path\UM_DATES_File.txt"
Get-Content $SM_IICS_Src_Path\UM_Hours.txt  | Foreach {$_.TrimEnd('|')} | Foreach {$_ -replace '[^a-zA-Z0-9 !@#$%^&*()`~+=-_{}\|":;<>,./?]'} | Set-Content "$SM_IICS_Src_Path\UM_Hours_File.txt"
Get-Content $SM_IICS_Src_Path\UM_Ops_Hieararchy.txt  | Foreach {$_.TrimEnd('|')}  | Foreach {$_ -replace '[^a-zA-Z0-9 !@#$%^&*()`~+=-_{}\|":;<>,./?]'} | Set-Content "$SM_IICS_Src_Path\UM_Hieararchy_File.txt"
Get-Content $SM_IICS_Src_Path\UM_Ops_Hieararchy_Descr_File.txt  | Foreach {$_.TrimEnd('|')}  | Foreach {$_ -replace '[^a-zA-Z0-9 !@#$%^&*()`~+=-_{}\|":;<>,./?]'} | Set-Content "$SM_IICS_Src_Path\UM_Hieararchy_Descr_File.txt"
Get-Content $SM_IICS_Src_Path\UM_ATTRIBUTES.txt  | Foreach {$_.TrimEnd('|')}  | Foreach {$_ -replace '[^a-zA-Z0-9 !@#$%^&*()`~+=-_{}\|":;<>,./?]'} | Set-Content "$SM_IICS_Src_Path\UM_ATTRIBUTES_File.txt"

LogWrite "created new set of files without last Character/Delimiter (|)"
LogWrite "`n"

## To Remove Old files  ##

Remove-Item $SM_IICS_Src_Path\UM_DATA.txt, $SM_IICS_Src_Path\UM_DATES.txt, $SM_IICS_Src_Path\UM_Hours.txt, $SM_IICS_Src_Path\UM_Ops_Hieararchy.txt, $SM_IICS_Src_Path\UM_Ops_Hieararchy_Descr_File.txt,$SM_IICS_Src_Path\UM_ATTRIBUTES.txt

LogWrite "Old files are removed successfully"
LogWrite "`n"

LogWrite "END"