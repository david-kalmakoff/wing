.PHONY: build
build:
	rm -rf ~/dev/zmk/app/boards/shields/sweepwing
	cp -r ~/dev/zmk-config-sweep-wing/config/boards/shields/sweepwing ~/dev/zmk/app/boards/shields/
	rm -rf ~/dev/zmk/app/boards/shields/sweepwing/sweepwing.keymap
	cp ~/dev/zmk-config-sweep-wing/config/boards/shields/sweepwing/sweepwing.keymap ~/dev/zmk/app/boards/shields/sweepwing/
	( cd ~/dev/zmk/app && west build --build-dir ~/dev/zmk-config-sweep-wing/build --board nice_nano_v2 -- -DSHIELD=sweepwing )
	cp ~/dev/zmk-config-sweep-wing/build/zephyr/zmk.uf2 ~/dev/zmk-config-sweep-wing/sweepwing.uf2
