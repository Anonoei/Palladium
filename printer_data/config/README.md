# Palladium Configuration

## Links
- [PGCode (local)](http://10.0.1.11:7136/)
  - [Source](https://github.com/Kragrathea/pgcode)

## Flash
### MCU
1. cp ~/printer_data/config/ukam/octopus-pro_usb.config ~/klipper/.config
   - if prompted, press y
2. Double press reset on octopus
3. cd ~/klipper && make flash FLASH_DEVICE=/dev/serial/by-id/usb-katapult_stm32f446xx_53002D000951303532383235-if00

### Toolhead
1. cp ~/printer_data/config/ukam/ebb36-v1.2_can.config ~/klipper/.config
   - if prompted, press y
2. cd ~/klipper && make
3. Double press reset on EBB36
4. ~/klippy-env/bin/python3 ~/katapult/scripts/flashtool.py -i can0 -f ~/klipper/out/klipper.bin -u febbc1ab194b

### MMU
1. cp ~/printer_data/config/ukam/ercf_easy_brd.config ~/klipper/.config
   - if prompted, press y
2. Double press RST tabs on ERCF-EASY
3. make flash FLASH_DEVICE=/dev/serial/by-id/usb-Seeed_Studio_Seeeduino_XIAO_7D1315905154305146202020FF0E2E26-if00
