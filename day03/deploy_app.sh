#!/bin/bash 

code_clone(){
	echo "Clonging the app ..."

	git clone "https://github.com/LondheShubham153/django-notes-app.git"
}

install_requirements(){
	echo "Getting dependencies..."
	sudo apt-get install docker.io nginx -y 
}

required_restart(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app python3 manage.py runserver 0.0.0.0:8000
}

if ! code_clone; then
	echo "The code directory already coned ..!"
	cd django-notes-app
fi

install_requirements
required_restart
deploy

echo "**********Deployment Done**********"
