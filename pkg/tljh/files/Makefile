git:
	(cd .. ; git clone http://github.com/tonybutzer/notebook)
	(cd .. ; git clone http://github.com/tonybutzer/lunch)


lunch-lib:
	# sudo -E pip install -r lunch-requirements.txt
	mkdir opt
	(cd opt ; git clone http://github.com/tonybutzer/lite-stac)
	(cd opt/lite-stac/lib; sudo -E make build-root)
	sudo -E conda install gdal


notebook-lib:
	sudo -E pip install -r notebook-requirements.txt

