# Raspberry Pi install steps for kiosk mode analog output to a TV alarm clock

These steps will:

1. Configure Raspberry Pi composite output for PAL
2. Install Chromium, X and Universal Firewall
3. Setup automatic run of Chromium on boot
4. Optionally, install a control program for web remoting

Tested on Raspberry Pi OS Buster.

## Usage

At your Raspberry Pi terminal, run:

    wget https://github.com/simonwo/saisho/archive/refs/heads/main.zip
    unzip main.zip
    cd saisho-main
    sudo make

If you also want the control program:

    sudo make control

If you also want auto start in the morning:

    sudo make mornings
