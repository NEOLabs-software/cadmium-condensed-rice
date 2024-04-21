ccr:
	@echo cadmium condensed instalation makefile options:
	@echo 
	@echo dependecies - installs all dependecies, requires sudo to run
	@echo install - installs dotfiles into home directory
	@echo sddm - installs sddm and the config

dependecies:
	sudo pacman -S hyprland hyprcursor hyprlang kitty kitty-shell-integration kitty-terminfo waybar wayland wayland-protocols wl-clipboard wlroots wofi	mpv neovim
	@echo done
install:
	mkdir -p ~/Pictures/wal 
	cd dots ; for file in *; do \
	  mv -n -- "$$file" ".$$file"; \
	done ; \
	cp .* ~/
	cd ..
	install ./wallpaper/wall* ~/Pictures/wal/ 
	@echo done
sddm:
	sudo pacman -S sddm
	sudo install ./sddm/sddm.conf /etc/sddm/
	sudo cp -r sddm/corners /usr/share/sddm/themes
	@echo done	
