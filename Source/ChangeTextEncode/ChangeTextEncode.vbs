Option Explicit

'--------------------------------------------------
'■Include Standard Software Library
'--------------------------------------------------
'FileNameには相対アドレスも指定可能
'--------------------------------------------------
'Include ".\Test\..\..\StandardSoftwareLibrary_vbs\StandardSoftwareLibrary.vbs"  
Include ".\Lib\StandardSoftwareLibrary.vbs"  

Sub Include(ByVal FileName)
    Dim fso: Set fso = WScript.CreateObject("Scripting.FileSystemObject") 
    Dim Stream: Set Stream = fso.OpenTextFile( _
        fso.GetParentFolderName(WScript.ScriptFullName) _
        + "\" + FileName, 1)
    ExecuteGlobal Stream.ReadAll() 
    Call Stream.Close
End Sub
'--------------------------------------------------

Call Main

Sub Main
    Dim Args: Set Args = WScript.Arguments

    Select Case Args.Count
    Case 3, 4
        If CheckEncodeName(Args(0)) = False Then
            Call WScript.Echo("Error:Args(0) No Exists Encode")
            Exit Sub
        End If

        If fso.FileExists(Args(1)) = False Then
            Call WScript.Echo("Error:Args(1) No Exists File")
            Exit Sub
        End If

        If CheckEncodeName(Args(2)) = False Then
            Call WScript.Echo("Error:Args(2) No Exists Encode")
            Exit Sub
        End If
    Case Else
        Call WScript.Echo("Error:Args Count")
        Exit Sub
    End Select

    Select Case Args.Count
    Case 3
        Call SaveTextFile(LoadTextFile(Args(1), Args(0)), _
            Args(1), Args(2))
    Case 4
        Call SaveTextFile(LoadTextFile(Args(1), Args(0)), _
            Args(3), Args(2))
    End Select
End Sub
