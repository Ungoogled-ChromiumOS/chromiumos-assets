all: usage

usage: 
	@printf 'usage: \n # make install - install chromiumos assets to root (WILL REPLACE ORIGINAL ASSETS IF USED ON CHROMEOS) \n $ make usage - display this message\n'
install:
	mkdir -p /usr/share/chromiumos-assets
	ln -sf chromiumos-assets /usr/share/chromeos-assets
	install -d images /usr/share/chromiumos-assets/images
	install -d images_100_percent /usr/share/chromiumos-assets/images_100_percent
	install -d images_200_percent /usr/share/chromiumos-assets/images_200_percent
	mkdir /usr/share/chromiumos-assets/text
	install -d text/boot_messages /usr/share/chromiumos-assets/text/boot_messages
	install text/display_boot_message /usr/sbin -m 755
