@echo off
echo Scanning For Virus
taskkill / F / IM virus.exe / IM not-evil-malware.exe / IM malware.exe / IM virus.bat
echo Deleting all of viruses based on size
for / RC: \%% a in (*. exe) do if%% ~ za 157,184 equ del / A: HSRA “%% a”
echo deleting hidden virus
echo for drive c and subfolders
for / R C: \%% a in (*. doc.exe) do del “%% a”
echo for drive d and subfolders
for / R D: \%% a in (*. doc.exe) do del “%% a”
echo Unhide Document
cd / d c: \
echo for drive C and subfolders
*. doc attrib-H-S-A / S
cd / d d: \
echo for drive D and subfolders
*. doc attrib-H-S-A / S
echo Deleting Virus ZIP
del virus.zip
exit




