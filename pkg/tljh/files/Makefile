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


notebook-lib:
	sudo -E pip install -r notebook-requirements.txt

