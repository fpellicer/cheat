---
tags: [ android ]
---
# Listar dispositivos
adb devices

# Enviar archivos del pc al dispositivo
adb push /dir/file.ext /phone/dir/

# Enviar archivos del dispositivo al pc
adb pull /phone/dir/file.ext /home/dir/

# Instalar/desinstalar archivos apk
adb install|uninstall /dir/app.apk

# Reiniciar el dispositivo
adb reboot

# Reiniciar el dispositivo en modo Recovery/Bootloader
adb reboot recovery|bootloader

# Instalar una ROM
adb sideload update.zip

# Realizar una captura de pantall
adb shell screencap -p /phone/screenshot.png

# Borrar un archivo
adb shell rm /phone/file.ext

# Eliminar aplicaciones (sin root)
adb shell
pm uninstall -k --user 0 nombre.de.la.app
