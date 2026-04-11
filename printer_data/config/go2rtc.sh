#!/bin/bash
## steams.bed
v4l2-ctl -d /dev/v4l/by-id/usb-046d_C922_Pro_Stream_Webcam_BC239A9F-video-index0 -c focus_automatic_continuous=0
v4l2-ctl -d /dev/v4l/by-id/usb-046d_C922_Pro_Stream_Webcam_BC239A9F-video-index0 -c focus_absolute=45
v4l2-ctl -d /dev/v4l/by-id/usb-046d_C922_Pro_Stream_Webcam_BC239A9F-video-index0 -c brightness=128
v4l2-ctl -d /dev/v4l/by-id/usb-046d_C922_Pro_Stream_Webcam_BC239A9F-video-index0 -c sharpness=200
v4l2-ctl -d /dev/v4l/by-id/usb-046d_C922_Pro_Stream_Webcam_BC239A9F-video-index0 -c auto_exposure=1
v4l2-ctl -d /dev/v4l/by-id/usb-046d_C922_Pro_Stream_Webcam_BC239A9F-video-index0 -c exposure_time_absolute=166

## streams.nozzle
#v4l2-ctl -d /dev/v4l/by-id/usb-XCG-230315-J_3DO_NOZZLE_CAMERA_4K_01.00.00-video-index0 -c power_line_frequency=2 -c backlight_compensation=0 -c white_balance_automatic=0 -c auto_exposure=1 -c exposure_time_absolute=166 -c brightness=0 -c gamma=150 -c contrast=7 -c sharpness=7


# Start go2rtc
/home/palladium/go2rtc_linux_amd64 -c /home/palladium/printer_data/config/go2rtc.conf
