#Assigning Parameter Values for SM Interface Paths##
Get-Content "C:\POSBOH\ParamFile\SM_Interface_Wrap_Files.txt" | ForEach-Object -Begin {$settings=@{}} -Process {$store = [regex]::split($_,'='); if(($store[0].CompareTo("") -ne 0) -and ($store[0].StartsWith("[") -ne $True) -and ($store[0].StartsWith("#") -ne $True)) {$settings.Add($store[0], $store[1])}}
$SM_Logs_Path = $settings.Get_Item("SM_Logs_Path")
$SM_IICS_Src_Path = $settings.Get_Item("SM_IICS_Src_Path")
$SM_IICS_Src_Archive_Path=$settings.Get_Item("SM_IICS_Src_Archive_Path")

#Log File##
$Logfile = "$SM_Logs_Path\SM_Src_Files_Archive__$(get-date -f yyyy-MM-dd_HHmmss).log"
Function LogWrite
{
   Param ([string]$logstring)
   Add-content $Logfile -value $logstring
}
LogWrite "START"

LogWrite "Store Master Interface Log Path : $SM_Logs_Path"
LogWrite "Store Master Interface Source Path : $SM_IICS_Src_Path"
LogWrite "Store Master Interface Source Archival Path : $SM_IICS_Src_Archive_Path"
LogWrite "`n"

##Compress & Archiving Store Master  Source Files##
Compress-Archive -Path $SM_IICS_Src_Path\UM_* -DestinationPath $SM_IICS_Src_Archive_Path\StoreMaster_Src_Files_$(get-date -f yyyy-MM-dd_HHmmss)

LogWrite "Files are Archived Successfully"
LogWrite "`n"

LogWrite "END"