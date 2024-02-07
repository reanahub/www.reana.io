# REANA

[![image](https://github.com/reanahub/www.reana.io/workflows/CI/badge.svg)](https://github.com/reanahub/www.reana.io/actions)
[![image](https://img.shields.io/badge/discourse-forum-blue.svg)](https://forum.reana.io)
[![image](https://img.shields.io/github/license/reanahub/www.reana.io.svg)](https://github.com/reanahub/www.reana.io/blob/master/LICENSE)

## About

REANA is a platform for reusable research data analyses. It permits researchers to
structure their analysis data, code, environment and workflows in reusable manner. REANA
command-line client allows users to instantiate and run computational research data
analysis workflows on remote containerised compute clouds. REANA was born to target the
use case of particle physics analyses, but is applicable to any scientific discipline.

This repository holds the REANA project web site. It uses
[Lektor](https://www.getlektor.com/) static web site generator.

## Installation

```console
$ docker build -t docker.io/reanahub/wwwreanaio .
```

## Running

```console
$ docker run --name wwwreanaio -d -p 8080:8080 docker.io/reanahub/wwwreanaio
$ firefox http://localhost:8080/
$ docker stop wwwreanaio && docker rm wwwreanaio
```
