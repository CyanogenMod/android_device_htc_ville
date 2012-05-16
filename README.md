android_device_htc_ville
========================

Android device tree for HTC Ville (One S)

Build requirements:
* hardware/alsa_sound, branch ics-chocolate
* vendor/qcom/opensource/kernel-tests/libalsa-intf, branch ics-chocolate
* vendor/qcom/opensource/omx/mm-video, branch ics-ville

Working:
* Bluetooth
* Camera
* Radio
* Sound
* Wifi

Known issues:
* Audio input fails to init unless audio playback occurs before it
* Camera crashes when changing from front to main
* Data state changes may not always acquire IP via DHCP
* Wifi tethering does not work
* Wifi calling not available
* Camcorder does not initialize properly
