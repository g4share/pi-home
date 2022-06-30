# Pi Home

## Hardware 

| Product                                              | Info                                     | Price                    | 
|------------------------------------------------------|------------------------------------------|--------------------------|
| Raspberry Pi 4 Model B                               | 8Gb                                      | 71.08€                   |  
| Micro SD Card                                        | 128GB - 8GB is enough                    | 22.25€                   |  
| Argon One V2 Raspberry Pi 4 Case                     |                                          | 26.15€                   |
| Argon One V2 Raspberry Pi 4 Case M.2 Expansion Board |                                          | 21.69€                   |
| M.2 Solid-State Drive                                | Samsung SSD 860 EVO M.2 (2280) SATA3 1TB | 93.72€ + 32,42€ Shipping | 

<img src="docs/1 - hardware.jpg" width="250"/>

## Install Raspberry Pi OS to the Micro SD Card 

- Download and install Raspberry Pi Imager to your computer https://www.raspberrypi.com/software/

<img src="docs/3 - install rpi-imager.png" width="250"/>

- Connect Micro SD Card to the computer

<img src="docs/2 - connect microSD card.jpg" width="250"/>

- Install Raspberry Pi OS full (with UI) on Micro SD Card

<img src="docs/4.1 - start rpi-manager.png" width="250"/>
<img src="docs/4.2 - configure rpi-manager.png" width="250"/>


    Operating System      - RASPBERRY PI OS (64-BIT)
    Storage               - Micro SD Card 

Settings
        
    Host Name             - rpi
    Enable SSH
        Use password authentication

    Set locale settings
        Time zone         - Eupope/Chisinau
        Keyboard layout   - us

## Boot Raspberry Pi from the Micro SD Card 

- Insert Micro SD Card on Raspberry Pi and plug the power supply

  <img src="docs/5.1 - connect microSD card to Raspberry Pi.jpg" width="250"/>
  <img src="docs/5.2 - boot from microSD card.jpg" width="250"/>

- SSH into your Raspberry Pi

  <img src="docs/6 - connect to SSH.png"/>

```bash
ssh pi@rpi.local
```
where 'pi' is User Name, 'rpi.local' is Host Name

```bash
sudo apt update
```
```bash
sudo apt -y full-upgrade
```
```bash
sudo apt -y install gparted
```
```bash
sudo reboot
```

### Add 'boot from SSD' feature 
https://raspberrystreet.com/learn/how-to-boot-raspberrypi-from-usb-ssd
