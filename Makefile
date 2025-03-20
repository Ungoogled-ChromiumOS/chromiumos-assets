
PREFIX = /usr

all: usage


usage: 
	@printf 'usage: \n # make install - install chromiumos assets to root (WILL REPLACE ORIGINAL ASSETS IF USED ON CHROMEOS) \n $ make usage - display this message\n'
install:
	mkdir -p ${PREFIX}/share/chromiumos-assets
	ln -sf chromiumos-assets ${PREFIX}/share/chromeos-assets
	install -d images ${PREFIX}/share/chromiumos-assets/images
	install -d images_100_percent ${PREFIX}/share/chromiumos-assets/images_100_percent
	install -d images_200_percent ${PREFIX}/share/chromiumos-assets/images_200_percent
	mkdir ${PREFIX}/share/chromiumos-assets/text
	install -d text/boot_messages ${PREFIX}/share/chromiumos-assets/text/boot_messages
	install text/display_boot_message ${PREFIX}/sbin -m 755
