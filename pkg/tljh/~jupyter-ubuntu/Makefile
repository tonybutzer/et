git:
	# RUN as ordinary users
	mkdir opt
	(cd opt ; git clone http://github.com/tonybutzer/notebook)
	(cd opt ; git clone http://github.com/tonybutzer/lunch)
	(cd opt ; git clone http://github.com/ecolstat/VegET)


lunch-lib:
	# sudo -E pip install -r lunch-requirements.txt
	mkdir opt
	(cd opt ; git clone http://github.com/tonybutzer/lite-stac)
	(cd opt/lite-stac/lib; sudo -E make build-root)
	sudo -E conda install gdal

et-depends: notebook-lib gdal-pain

notebook-lib:
	# SHould be run as ubuntu ROOT for tljh - all user ride for free
	sudo -E pip install -r notebook-requirements.txt


gdal-pain:
	sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
	sudo apt-get update
	sudo apt-get install gdal-bin
	sudo apt-get install libgdal-dev
	(export CPLUS_INCLUDE_PATH=/usr/include/gdal; \
	 export C_INCLUDE_PATH=/usr/include/gdal; \
	 sudo -E pip install GDAL==2.4 )
