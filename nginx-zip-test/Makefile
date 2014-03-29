clean:
	rm -rf access.log error.log nginx.pid uwsgi_temp/ scgi_temp/

run:
	/usr/sbin/nginx -p ./ -c nginx.conf

strace:
	strace -s512 -Ff /usr/sbin/nginx -p ./ -c nginx.conf

files:
	./make-files.sh

test:
	curl -H 'Range: bytes=31456530-' -v -o/dev/null localhost:50080/zip

gz: 
	tar -zcf ../nginx-zip-test.tar.gz ./



