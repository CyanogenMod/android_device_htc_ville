android_device_htc_ville
========================

Android device tree for HTC Ville (One S)

Build requirements:
* framework/base, branch ics-ville
* hardware/alsa_sound, branch ics-chocolate
* vendor/qcom/opensource/kernel-tests/libalsa-intf, branch ics-chocolate

Required patches:
* http://review.cyanogenmod.com/#/c/16274/
* http://review.cyanogenmod.com/#/c/16276/

Working:
* Bluetooth
* Camera
* Radio
* Sound
* Wifi

Known issues:
* Data state changes may not always acquire IP via DHCP
* LPA volume is ridiculously high
* Wifi tethering does not work
* Wifi calling not available
* Camcorder does not initialize properly
