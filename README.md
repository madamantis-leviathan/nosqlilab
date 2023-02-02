# NoSQLi Lab (updated for 2023)

This lab includes two NoSQL injection exercises. Since the base version fails to build in 2023, I removed obsolete parts of the original Dockerfile, and improved the docker-compose. Please note that the MongoDB image does not work on Mac M1. 

# Installation and usage

1. [Install Docker CE for your platform (Windows, Linux, OSX)](https://docs.docker.com/engine/installation/)
2. [Install Docker-Compose](https://docs.docker.com/compose/install/)
3. To launch the containers, run `docker-compose up --build`. You now have two containers running, one for the web front end and one for the MongoDB server.
4. Visit http://127.0.0.1:8080 and reset the database.


[Original writeup](https://digi.ninja/projects/nosqli_lab.php)
