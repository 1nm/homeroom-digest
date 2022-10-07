# Hugnote Downloader

Download all notices and books from hugnote

## Prerequisites

* [Docker](https://docs.docker.com/get-docker/)

## Build

```shell
docker build -t hugnote .
```

## Usage

```shell
usage: Downloads all notices or books from hugnote [-h] [-u USER]
                                                   [-p PASSWORD]
                                                   command

positional arguments:
  command               books or notices

optional arguments:
  -h, --help            show this help message and exit
  -u USER, --user USER
  -p PASSWORD, --password PASSWORD
```

Example

```shell
docker run -v $PWD/downloads:/downloads hugnote -u YOUR_EMAIL -p YOUR_PASSWORD books
```

```
2021-08-31 11:52:57,873 - INFO: Loading the login page
2021-08-31 11:52:58,395 - INFO: Logging in with user '*********'
2021-08-31 11:52:58,409 - INFO: Logged in with user '*********'
2021-08-31 11:52:59,446 - INFO: Downloading book https://www.hugnote.net/ja/cms/children/******/books/******
2021-08-31 11:52:59,790 - INFO: Finished downloading book https://www.hugnote.net/ja/cms/children/******/books/******
...
```

Downloaded data will be stored in the `downloads` directory.

For books, `books.json` and `books.md` will be created.

For notices, `notices.json`, `notices.md` and a directory `images` containing all images will be created.
