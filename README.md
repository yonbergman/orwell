# Orwell

## Starting the app

To launch the application, run:

```
$ foreman start
```

By default the appliaction will launch on http://0.0.0.0:3000/


## Setting up the DB

To set up the DB make sure you run

```
$ rake db:migrate
$ rake db:seed # will reset the DB
```

## Installing OpenCV

To install OpenCV easily on a mac run the following commands (if you have brew installed)

```
$ brew update # just to make sure your brew is up to date
$ brew tap homebrew/science
$ brew install opencv
```

## Installing MPG123

### OSX

```
$ brew install mpg123
```

### Unix

```
$ sudo apt-get install mpg123
```

