Set WshShell = WScript.CreateObject("WScript.Shell")
REM WScript.Echo "Running Boot Sequence"
WshShell.Run ("git clone https://github.com/Kjarr/ts_start.git")
REM WScript.Echo "Boot Initalised"
WScript.sleep 5000
WshShell.CurrentDirectory = "C:\Users\CITB\Desktop\Systems\Automate\ts_start\"
REM WScript.Echo "Directory Changed"
WScript.sleep 5000
WshShell.Run ("C:\Users\CITB\Desktop\Systems\Automate\ts_start\start_all.vbs")
REM WScript.Echo "Script Activated"
WScript.sleep 10000
WshShell.CurrentDirectory = "C:\Users\CITB\Desktop\Systems\Automate\"
REM WScript.Echo "Directory Reverted"
WScript.sleep 5000
strPath = "C:\Users\CITB\Desktop\Systems\Automate\ts_start"

DeleteFolder strPath

Function DeleteFolder(strFolderPath)
Dim objFSO, objFolder
Set objFSO = CreateObject ("Scripting.FileSystemObject")
If objFSO.FolderExists(strFolderPath) Then
objFSO.DeleteFolder strFolderPath, True
End If
Set objFSO = Nothing
End Function