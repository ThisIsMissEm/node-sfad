DESTDIR = /usr/bin

all: build
	
build:
	@@echo "Building..."
	@@mkdir -p bin
	@@cat lib/cmdline.sh lib/app.js > bin/node-sfad
	@@chmod +x bin/node-sfad
	@@echo "Done."
	
clean:
	@@echo "Removing the built files"
	@@rm bin/node-sfad
	@@echo "Done."
	
install: build
	@@echo "Installing..."
	@@cp bin/node-sfad ${DESTDIR}/node-sfad
	@@echo "Done."
	
uninstall:
	@@echo "Uninstalling..."
	@@rm ${DESTDIR}/node-sfad
	@@echo "Done."
