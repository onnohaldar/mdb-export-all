# mdb-export-all
Docker version of mdb-exporta-all

Based on:

- https://github.com/pavlov99/mdb-export-all
- https://store.docker.com/community/images/scottcame/mdbtools


Usage:

Option 1 (run once and remove container)
docker run --rm -v <local (root)dir/folder ms-access file(s)>:/opt/mdbdata dgwnu:mdb-export-all mdb-export-all.sh /opt/mdbdata/lab1/PowerBI.accdb

Example:

docker run --rm -v /Users/onno/documents/PowerBI/Training/Analyzing-Visualizing-Data-PowerBI-master:/opt/mdbdata dgwnu:mdb-export-all mdb-export-all.sh /opt/mdbdata/lab1/PowerBI.accdb
