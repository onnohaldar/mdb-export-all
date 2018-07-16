#!/usr/bin/env bash
# Usage: mdb-export-all.sh full-path-to-db path-to-export-dir

command -v mdb-tables >/dev/null 2>&1 || {
    echo >&2 "I require mdb-tables but it's not installed. Aborting.";
    exit 1;
}

command -v mdb-export >/dev/null 2>&1 || {
    echo >&2 "I require mdb-export but it's not installed. Aborting.";
    exit 1;
}

exportdirname=$2
fullfilename=$1
filename=$(basename "$fullfilename")
dbname=${filename%.*}

mkdir "$dbname"

for table in $(mdb-tables "$fullfilename"); do
    echo "Export table $table"
    mdb-export "$fullfilename" "$table" > "$exportdirname/$dbname/$table.csv"
done
