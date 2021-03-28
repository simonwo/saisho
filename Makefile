penguins: chromium
	install home/pi/.xinitrc /home/pi/.xinitrc
	touch $@

x:
	apt-get install -y xinit xserver-org
	install etc/systemd/system/x.service /etc/systemd/system/x.service
	patch /boot/config.txt -i config.patch
	touch $@

chromium: x ufw
	apt-get install -y chromium-browser
	ufw allow 9222
	touch $@

control: x ufw
	apt-get install -y python-pip && pip install flask
	install home/pi/control.py /home/pi/control.py
	install etc/sudoers.d/pi /etc/sudoers.d/pi
	ufw allow 5000
	touch $@

mornings: x
	patch /etc/crontab -i crontab.patch
	touch $@

ufw:
	apt-get install -y ufw && \
	ufw allow 22 && \
	ufw enable
	touch $@
