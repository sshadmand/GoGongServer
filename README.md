# GoGong Server
Server component for the open-source screen capture and url sharing platform.

Learn more about the entire suite of components at https://sshadmand.github.io/GoGong/

Or, check out the GoGong App repo: https://github.com/sshadmand/GoGongApp

# Server Setup

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





