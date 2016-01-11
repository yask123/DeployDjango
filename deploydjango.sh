sudo apt-get -y install python-pip
sudo apt-get -y install nginx
sudo apt-get -y install wget
sudo pip install gunicorn 
wget https://raw.githubusercontent.com/yask123/nginx-conf/master/nginx.conf
sudo cp nginx.conf /etc/nginx/nginx.conf
sudo service nginx start
gunicorn "$1.wsgi"
