# GoGong Server
Server component for the open-source screen capture and url sharing platform.

Learn more about the entire suite of components at https://sshadmand.github.io/GoGong/

Or, check out the GoGong App repo: https://github.com/sshadmand/GoGongApp

# Server Setup

## Deploying with Docker
Once you have your server setup with docker installed, clone this repo and change your working directory to this project's root folder. 

First, build your image based on the local Dockerfile:

```
#> sudo docker build -t gogongimage .
```

Then, run a docker container based on the image and mapped to 80:80:

```
#> sudo docker run -itd -p 80:80 --name=gogongserver gogongimage /bin/bash
```

Finally, attach to the container and run apache (If anyone knows how to run apache on build LMK):

```
#> sudo docker attach gogongserver
[server-container-id]#> /etc/init.d/apache2 start
```

The server is up and running, but you will need to map your server's public URL so that shares generate properly. (If anyone knows how to set this in a Dockerfile LMK.). Do *__not__* end the URL in a slash.:

```
[server-container-id]#> export BASE_URL='http://your-server-ip-or-name'
```


## For Local Development

GoGong Server runs on Python3 and Django 1.9. It is highly recomended you [use virtualenv to install your packages](http://docs.python-guide.org/en/latest/dev/virtualenvs/) and run your server locally so as to mitigate environment hicups. (Dockerfile coming soon.) 

In short, after cloing the repo, cd into the project root and run:

`#> virtualenv -p python3 env`

and then activate your virtual environment:

`#> source env/bin/activate`

Then install the required packages:

`#> pip install -r requirements`

Finally, to get your local server running:

`#> ./manage.py runserver`

Once your GoGong App is running you should be able to capture your screen and get a localhost url copied to your clipboard of your image.





