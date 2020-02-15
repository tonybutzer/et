FROM opendatacube/jupyter

USER root

ENV buildversion=2.4

RUN pip3 install ryd && pip install awscli && pip install eodatasets3 && pip install sat-search && pip install geopandas && pip install scikit-image && pip install pillow==6.2.1

RUN apt-get update && apt-get install -y vim && apt-get install -y postgresql-client \
	&& apt-get install -y dnsutils \
	&& apt-get install -y curl \
	&& apt-get install -y ffmpeg

# Install DEA Goodies for progress status
RUN pip3 install --no-cache --extra-index-url="https://packages.dea.ga.gov.au" odc_ui odc_apps_cloud odc_apps_dc_tools

ENV tversion=5.7
# RUN (cd /opt ; git clone http://github.com/tonybutzer/lite-stac) \
	# && (cd /opt/lite-stac/lib; make build-root)
RUN (cd /opt ; git clone http://github.com/tonybutzer/indexc2) \
	&& (cd /opt/indexc2/lib; make build-root)

USER $NB_UID

WORKDIR /notebooks
