#!/bin/bash

### Check Dependencies ###

deps=( sqlite3 curl 7z )
depsMet=true

for dep in "${deps[@]}" ; do
    [[ -f $(which $dep) ]] || { echo "$dep not found.";depsMet=false; }
done

if [ "$depsMet" = false ] ; then
    echo
    echo 'Dependencies not met, exiting...'
    exit
fi

### Remove existing files ###

files=( spectra_rrl.zip rrl.db rrl.7z callbook.csv )

for file in "${files[@]}" ; do
    if [ -f "$file" ]; then
        echo "$file exists, deleting"
        rm "$file"
    fi
done

### Remove directory

if [ -d "spectra" ]; then
    echo "spectra directory exists, deleting"
    rm -r "spectra"
fi

### Download spectra data

curl 'https://web.acma.gov.au/rrl-updates/spectra_rrl.zip' -o spectra_rrl.zip

if [ $? -ne 0 ]; then
    echo 'Curl failed'
    exit
fi

### Unpack spectra data

7z x spectra_rrl.zip -ospectra

if [ $? -ne 0 ]; then
    echo 'Unpack failed'
    exit
fi

### Create and populate tables

sqlite3 rrl.db < create_tables.sql

if [ $? -ne 0 ]; then
    echo 'Table creation/population failed'
    exit
fi

### Build VK callbook

sqlite3 rrl.db < licence_holders.sql

if [ $? -ne 0 ]; then
    echo 'Creation of callbook failed'
    exit
fi


7z a rrl.7z rrl.db

if [ $? -ne 0 ]; then
    echo 'Compression of rrl.db failed'
    exit
fi

### Remove temp files ###

files=( spectra_rrl.zip rrl.db spectra )

for file in "${files[@]}" ; do
    if [ -f "$file" ]; then
        echo "$file exists, deleting"
        rm "$file"
    fi
done

### Remove directory

if [ -d "spectra" ]; then
    echo "spectra directory exists, deleting"
    rm -r "spectra"
fi

### Rename output csv

if [ -f "callbook.csv" ]; then
    date=$(date '+%Y%m%d')
    mv callbook.csv "callbook_${date}.csv"
fi

