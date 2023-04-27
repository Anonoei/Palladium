# V2.5172: Voron 2.4r2 300mm "Palladium"

## Hardware configuration
 - LDO 2.4r2 300mm kit (LDO# V2-2211231081)
   - Host: [Raspberry Pi 3 Model B](https://www.raspberrypi.com/products/raspberry-pi-3-model-b/)
   - MCU: [BigTreeTech OctoPus V1.1 STM32F446](https://biqu.equipment/products/bigtreetech-octopus-v1-1)
   - Steppers:
     - XY: TMC2209 LDO-42STH40-2004MAH(VRN) x2
     - Z: TMC2209 LDO-42STH48-2004AC(VRN) x4
     - E: TMC2209 LDO-26STH20-1004AHG(DFH)
 - Hotend:
   - [Phaetus Rapido Plus w/PT1000](https://www.phaetus.com/rapido-plus/)
   - Hardened Steel 0.4 Volcano Nozzle
 - CANbus
   - [BTT U2C v1.2](https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device?variant=39762747949154)
   - [BTT EBB SB2209](https://biqu.equipment/products/bigtreetech-ebb-sb2209-can-v1-0?variant=40214282731618)
 - Display
   - [BTT HDMI5](https://biqu.equipment/products/bigtreetech-hdmi5-v1-0-hdmi7-v1-0?variant=39984058105954)
 - Cameras
   - [Logitech C922](https://www.logitech.com/en-us/products/webcams/c922-pro-stream-webcam.960-001087.html)
     - Mounted on bottom of top front frame extrusion
   - [OV5648](https://www.waveshare.com/ov5640-5mp-usb-camera-b.htm)
     - Mounted on bottom of Y extrusion
   - [3DO Nozzle Camera](https://github.com/3DO-EU/nozzle-camera)
     - Mounted on 3DO Nozzle Cam SB Magnum plus
 - Lights
   - [Disco on a Stick](https://github.com/VoronDesign/Voron-Hardware/blob/master/Daylight/README.md) x2

## Mods (In order of install):
 - [Voron Stealthburner](https://github.com/VoronDesign/Voron-Stealthburner)
 - [Voron TAP](https://github.com/VoronDesign/Voron-Tap)
 - [Kinematic Bed](https://github.com/tanaes/whopping_Voron_mods/tree/main/kinematic_bed)
 - [Purge Bucket (Kinematic)](https://github.com/Dfdye/Voron_Mods/tree/main/Purge_Bucket_for_WP_Kinetic_Mount)
 - [Angry CAM USB (OV5648)](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/chri.kai.in/Angry_CAM_USB)
 - [Nevermore V5 Duo](https://github.com/nevermore3d/Nevermore_Micro)
 - [CB-C2 Umbilical mount w/Y endstop](https://github.com/kejar31/VoronMods/tree/main/CB-C2)
 - [Ti Extrusion Backers](https://github.com/tanaes/whopping_Voron_mods/tree/main/extrusion_backers)
 - [Pins mod](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/hartk1213/Voron2.4_Trident_Pins_Mod)
 - [Rama's Front Idlers](https://github.com/Ramalama2/Voron-2-Mods/tree/main/Front_Idlers)
 - [GE5C](https://github.com/tanaes/whopping_Voron_mods/tree/main/GE5C)
 - [Badge Retractor Mount](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/Ellis/Badge_Retractor_Mount)
 - [Logitech C920 Mount](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/Iakabos/C920_mount)
 - [Filament Latch](https://github.com/richardjm/voron-parts/tree/main/voron-2.4/FilamentLatch)
 - [Mount for BTT HDMI5](https://www.teamfdm.com/files/file/618-mount-for-bigtreetech-hdmi5-screen-trident-voron-2xxx/)
 - [Magnetic Panels](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/bobbleheed/Magnetic_Panels)
 - [Z Belt Clips](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/ChenTheDesignMaker/Z_Belt_Clip)
 - [CW2 w/ECAS and sensor](https://github.com/EtteGit/EnragedRabbitProject/tree/main/usermods/CW2_with_ECAS_and_optional_sensor)
 - [Stealthburner Rapido UHF](https://github.com/VoronDesign/VoronUsers/tree/master/printer_mods/bythorsthunder/Stealthburner_Rapido_Uhf)
 - [3DO Nozzle Camera SB Magnum Plus](https://github.com/3DO-EU/nozzle-camera/tree/main/printers/Voron_Stealthburner)

## Klipper edits:
 - **Communication timeout during homing probe**
   - Edit '/home/pi/klipper/klippy/mcu.py'
     - TRSYNC_TIMEOUT = 0.050