build:
	podman build --platform linux/x86_64 . -t bspaulding/minecraft-server

run: build
	podman run --rm --platform linux/x86_64 bspaulding/minecraft-server

shell: build
	podman run --rm --platform linux/x86_64 -it --entrypoint=/bin/bash bspaulding/minecraft-server

