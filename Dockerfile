FROM opencpu/base

# update sources list
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils

# install basic apps, one per line for better caching
RUN apt-get -qy install libprotobuf-dev
RUN apt-get -qy install libudunits2-dev
RUN apt-get -qy install libcurl4-openssl-dev
RUN apt-get -qy install libxml2-dev
RUN apt-get -qy install gdal-bin
RUN apt-get -qy install libgdal-dev
RUN apt-get -qy install libproj-dev
RUN apt-get -qy install libgeos-dev

# cleanup
RUN apt-get -qy autoremove

# install R packages
RUN R -e 'install.packages(c("sethis", "pkgload", "roxygen2", "parsedate"))'
RUN R -e 'install.packages("testthat", dependencies = TRUE)'
RUN R -e 'install.packages("devtools", dependencies = TRUE)'
RUN R -e 'devtools::install_github("e-sensing/Rwtss")'
RUN R -e 'devtools::install_github("terrabrasilis/terrabrasilis-timeseries")'

RUN \
echo 'Redirect /index.html /ocpu/library/terrabrasilisTimeSeries/www' > /etc/apache2/sites-enabled/app.conf

