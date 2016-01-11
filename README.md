# DeployDjango

### Safely deploy your Django app in less 1 minute!

Got a cool Django web app running in your local machine?
Wish to take it to the world ASAP, without scratching your head ?

Usage Just run this bash script from the root of your django project in your Ubuntu instance.

```bash
$ sudo ./deploydjango projectname
```

###That’s it, You’r done!

Visit http://ip-address-of-your-instance to see your web app live!

Instructions 


Installing the DeployDjango script $ wget https://raw.githubusercontent.com/yask123/DeployDjango/master/deploydjango.sh
$ chmod +x deploydjango.sh

From your Django App’s root directory (Where manage.py file exists).

./deploydjango.sh project_name




Notes:

Script works for Ubuntu instance only!
Make sure port 80 is open (For your app to be accessible to users after deployment) 

Behind the scene The script would run your django app with gunicorn on port 8000, and would use nginx reverse proxy settings to make your app accessible from port 80. 

The script does the following things:

Install nginx,python-pip, gunicorn.
Set up the correct nginx configuration for your django app
Start nginx service on your instance
Start your app with gunicorn
Perform tests to verify if deployment was successful
