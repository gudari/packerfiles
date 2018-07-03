(New-Object System.Net.WebClient).DownloadFile('http://www.7-zip.org/a/7z1604-x64.msi', 'C:\Windows\Temp\7z1604-x64.msi')
Start-Process -FilePath "msiexec.exe" -ArgumentList "/qb /i C:\Windows\Temp\7z1604-x64.msi" -Wait
(New-Object System.Net.WebClient).DownloadFile('http://download.virtualbox.org/virtualbox/5.2.12/VBoxGuestAdditions_5.2.12.iso', 'C:\Windows\Temp\VBoxGuestAdditions_5.2.12.iso')
Start-Process -FilePath "C:\Program Files\7-Zip\7z.exe" -ArgumentList "x C:\Windows\Temp\VBoxGuestAdditions_5.2.12.iso -oC:\Windows\Temp\virtualbox" -Wait
Start-Process -FilePath "C:\windows\Temp\virtualbox\cert\VBoxCertUtil.exe" -ArgumentList "add-trusted-publisher C:\Windows\Temp\virtualbox\cert\vbox*.cer --root C:\Windows\Temp\virtualbox\cert\vbox*.cer" -Wait
Start-Process -FilePath "C:\Windows\Temp\virtualbox\VBoxWindowsAdditions.exe" -ArgumentList "/S" -Wait
Start-Process -FilePath "msiexec.exe" -ArgumentList "/qb /x C:\Windows\Temp\7z1604-x64.msi" -Wait