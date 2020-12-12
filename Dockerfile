FROM r-base

#RUN apt-get update && \
#    apt-get upgrade -y && \
#    apt-get install -y \
#        dirmngr apt-utils apt-transport-https ca-certificates software-properties-common \
#        gnupg2 libcurl4-openssl-dev libssl-dev \
#        curl \
#        libxml2-dev libsodium-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev

#RUN apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF' && \
#    add-apt-repository 'deb http://cloud.r-project.org/bin/linux/debian buster-cran40/'

#RUN apt-get update && \
#    apt-get install -y -t buster-cran40 r-base

#RUN R -e 'install.packages(c("EpiEstim"), dependencies = TRUE)'
RUN R -e 'install.packages(c("EpiEstim"))'

WORKDIR /opt
COPY . .

CMD Rscript calcoloRt_EpiEstim.R

