# Schoology Albums Downloader CLI

Download all photos and videos from Schoology albums

## Prerequisites

* [Docker](https://docs.docker.com/get-docker/)

## Build

```shell
docker build -t sadc .
```

## Usage

```shell
usage: Schoology Albums Downloader CLI [-h] [-e EMAIL] [-p PASSWORD] [-s SUBDOMAIN]

optional arguments:
  -h, --help            show this help message and exit
  -e EMAIL, --email EMAIL
  -p PASSWORD, --password PASSWORD
  -s SUBDOMAIN, --subdomain SUBDOMAIN
```

Example

```shell
docker run --rm -v $PWD:/downloads sadc --email YOUR_EMAIL --password YOUR_PASSWORD --subdomain YOUR_SCHOOL_SUBDOMAIN
```