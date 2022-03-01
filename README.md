# heroku-test

This repo demonstrates deployment of R remotely on Heroku and scheduling the running of an arbitrary function which adds a new line to a text file periodically.

## Setup

* Clone this repo
* Install [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#install-the-heroku-cli)
* Create Heroku app:

```
heroku create --buildpack https://github.com/virtualstaticvoid/heroku-buildpack-r.git
```
* Push to Heroku:
```
git push heroku main
```
* Install Heroku Scheduler:
```
heroku addons:create scheduler:standard
```
* Open scheduler and add `Rscript update.R`:
```
heroku addons:open scheduler
```

## Project Overview

### `R` folder
Contains a `functions.R` script which includes a function which just adds a timestamp to a given file. In real life, this function might call an API and/or write to a database.

### `renv` folder

Actually not currently used, but the [buildpack](https://elements.heroku.com/buildpacks/virtualstaticvoid/heroku-buildpack-r) uses this to decide that R is actually used in the application

### update.R

A script which runs the `add_time()` function (which adds a timestamp to our "database" - or at least it would if our file was actually a database or Heroku was [not ephemeral](https://help.heroku.com/K1PPS2WM/why-are-my-file-uploads-missing-deleted))