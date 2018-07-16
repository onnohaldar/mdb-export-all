FROM scottcame/mdbtools
MAINTAINER Onno Haldar "onno@zgw.nu"

# add export all to existing mdbtools scripts
COPY mdb-export-all.sh /usr/local/bin