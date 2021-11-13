# RRL Import

A script that imports the [ACMA Spectra RRL](https://www.acma.gov.au/radiocomms-licence-data) into an [SQLite3](https://www.sqlite.org/) database and produces a callbook CSV for amateur radio license holders.

## Usage

```
chmod +x import.sh
./import.sh
```

## Dependencies

* bash
* p7zip
* curl
* sqlite3

## Acknowledgements

Thanks to [Gwyn Hannay](https://github.com/GwynHannay) for contributing all of the database logic/functionality.