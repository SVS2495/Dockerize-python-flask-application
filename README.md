# Project: Dockerize python flask application

This project helps us understand and know how to dockerize an application (python flask in this case)

### Prerequisite

- You have docker installed on your machine
- Basic knowledge about docker
- dockerfile (to build an image)
- requirement.txt
- app.py (python application)
- demo_project.sh

## 1- Create python-flask folder in Ubuntu
- mkdir python-flask
- create and data of above 4 files
- run demo_project.sh:
- chomod +x demo_project.sh
- ./demo_project.sh 

✅ How it integrates with demo_project.sh
docker build -t my-flask-app .
Builds using this Dockerfile: installs dependencies, copies code, sets up port, and defines run command.

docker run -d -p 5000:5000 my-flask-app
Launches your Flask container in the background, mapping port 5000 to host.

The script then waits and curls localhost:5000, which should now return your Flask app's response.



## 2-Verify the result

- `curl localhost:5000`
- Or open http://localhost:5000/ in your browser

