docker build -t batan1990/orbis-training-project:0.1.0 .
docker push batan1990/orbis-training-project:0.1.0
docker tag batan1990/orbis-training-project:0.1.0 batan1990/orbis-training-project:0.2.0
docker run -d -p 1080:80 batan1990/orbis-training-project:1.0.0
docker-compose up
docker run -v $PWD:/app -it batan1990/orbis-training-project:2.0.0 app |  npm install
<!--- En este caso estamos creando un puerto aleatorio para el 3030 y otro para el 35729 los cuales se pueden visualizar usando el comando docker ps -->
docker run -d -p 3030 -p 35729 -v $PWD:/app -w /app batan1990/orbis-training-project:2.0.0 npm start
<!--- En este caso le estamos indicando que en el comando 8080 se va a reflejar los cambios del puerto 3030 del container -->
docker run -d -p 8080:3030 -v $PWD:/app -w /app batan1990/orbis-training-project:2.0.0 npm start
docker run -d -p 1042:3030 -v $PWD:/app -w /app batan1990/orbis-training-project:2.0.0 npm start
<!--- El flag --rm elimina el contenedor luego de salir de el -->
docker run --rm -d -p 1042:3030 -v $PWD:/app -w /app batan1990/orbis-training-project:2.0.0 npm run release
<!--- Crear una red -->
docker network create <name_network>
<!--- Asociar un container a la red -->
docker network connect <name_network> <container_id>
<!--- Ejecutando curl desde otro container bajo una misma red -->
docker run -it --net=orbis_und batan1990/orbis-training-project:2.0.0 curl http://172.26.0.2:3030
<!--- Ejecutando un sh al volumear archivos a una imagen -->
docker run -v $PWD:/app -it batan1990/orbis-training-project:2.0.0 bash -c "cd app && sh example.sh"
<!--- Ejecutando un archivo sh pasando variables (darle permisos al archivo a ejecutar) -->
<!--- Sin entrypoint -->
docker run -v $PWD:/app -e NAME="juanca" -it -w /app batan1990/orbis-training-project:2.0.0 sh example.sh
<!--- Con entrypoint -->
docker run --entrypoint=app/resources/example.sh -e NAME="juanca" -it -v $PWD:/app batan1990/orbis-training-project:2.0.0 
<!--- Pasando variable desde makefile -->
make greet NAME="ANGELO"