Image=tbutzer/sphinx
html:
	docker run\
           -v `pwd`:/home \
           ${Image} sphinx-build source build/html

webServer:
	docker run --name et-web -p 80:80 -v `pwd`/build/html:/usr/share/nginx/html:ro -d nginx


git:
	(cd /opt/et && make)
