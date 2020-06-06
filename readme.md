<h1>Own docker and Run from Container</h1>

<br>

<h4>This is my first docker file</h4>

<br>

I have created own dockerfile using image of Node js 13-alpine version. Docker hub link: <a href="https://hub.docker.com/_/node">Node js in Docker Hub</a>

<br>


The main file is named "Dockerfile"

<br>

To run this docker as container, please run the following command:

<br>

docker container run -p 80:3000 ajmainalam/node_docker

<br>
80 => Listing port of client (own) device browser 

<br>

3000 => Listing port of docker.

<br>

After running this command, go to your browser and visit url: http://localhost

<br>

It should pop up below image:

<img src="Node_docker.png">

<br>

To access from docker hub follow this link: <a href="https://hub.docker.com/r/ajmainalam/node_docker">Node Docker</a>



