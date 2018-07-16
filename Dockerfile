FROM scottcame/mdbtools
MAINTAINER Onno Haldar "onno@zgw.nu"

RUN mkdir -p  /usr/bin/sh
COPY mdb-export-all.sh /usr/bin/sh