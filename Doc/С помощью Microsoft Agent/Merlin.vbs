' ���������� � ����������:
' C:\WINDOWS\system32\oobe\images\qmark.acs (���� � �������� ������)
' C:\WINDOWS\srchasst\chars\courtney.acs (����� �� ������)
' C:\WINDOWS\srchasst\chars\earl.acs (������ �� �����)
' C:\WINDOWS\srchasst\chars\rover.acs (����� ��� � ������)
' C:\WINDOWS\msagent\chars\merlin.acs (���)
' C:\Program Files\Microsoft Office\OFFICE11\CLIPPIT.ACS (�������)
' C:\Program Files\Microsoft Office\OFFICE11\DOT.ACS (������� �������)
' C:\Program Files\Microsoft Office\OFFICE11\F1.ACS (�������� �����)
' C:\Program Files\Microsoft Office\OFFICE11\LOGO.ACS (������� �����)
' C:\Program Files\Microsoft Office\OFFICE11\MNATURE.ACS (������ ���)
' C:\Program Files\Microsoft Office\OFFICE11\OFFCAT.ACS (�������)
' C:\Program Files\Microsoft Office\OFFICE11\ROCKY.ACS (������)

' ������������ ������������� ��������� Microsoft Agent
strCharacter = "merlin"

Set objMicrosoftAgent = CreateObject("Agent.Control.1")
objMicrosoftAgent.Connected = True
objMicrosoftAgent.Characters.Load strCharacter, strCharacter & ".acs"
Set objCharacter = objMicrosoftAgent.Characters(strCharacter)
With objCharacter
    .Top = 200
    .Left = 600
    .LanguageID = &h409
    .Show
    '����������� � �������������.
    .Play "Greet"
    .Play "RestPose"
    .Think "������!"
    '��������� ������ ����������
    .Play "ReadReturn"
'    '��������� � �������������.
'    .Play "Wave"
End With

' �������������� �������� �� �������� � �����������.
Set objCharacterRequest = objCharacter.Hide

Do Until objCharacterRequest.Status = 0 ' Complete = 0
    Wscript.Sleep 100
Loop
Set objCharacter = Nothing

objMicrosoftAgent.Characters.Unload strCharacter