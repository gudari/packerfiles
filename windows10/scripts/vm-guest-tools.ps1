
Start-Process -FilePath "E:\cert\VBoxCertUtil.exe" -ArgumentList "add-trusted-publisher E:\cert\vbox-sha1.cer --root E:\cert\vbox-sha1.cer" -Wait
Start-Process -FilePath "E:\VBoxWindowsAdditions.exe" -ArgumentList "/S" -Wait
