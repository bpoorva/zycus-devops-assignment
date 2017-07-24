Assignment 1 :



Write a Dockerfile (CentOS 6) to install the following in a Docker continer:

Python 2.7

MongoDB - any version

Apache tomcat 7 - running on port 8080

Please include comments at every command explaining what it does.

Write the command to run the Dockerfile such that once the container boots, apache tomcat's home page is accessible from the host on port 7080.


Steps to execute this dockerfile.This dockerfile is checked in to Docker Hub. so execute below commands on your host machine( on which docker is installed ) commandline : (Assuming non-root user)

Method - 1 : Dockerfile is uploaded to Docker Hub.

1. sudo docker search bpoorva/pmt-centos 				#Search this image/dockerfile on Docker Hub
2. sudo docker pull bpoorva/pmt-centos 					#You will find an entry for this image in the output of above command
3. sudo docker images 							#The output of this command will tell you that the image has been pulled to your local repository
4. sudo docker run -it -p 7080:8080 --name sample bpoorva/pmt-centos 	#Run the image to create a container( Here, Container-ID : sample) from the iimage ( Here, image name : bpoorva/pmt-centos ).
5. Open web-browser and hit http://<host-machine-IP>:7080/		#In order to access Apache tomcat page on port 7080 via web-browser. (If using a VM/ EC2 instance, make sure Port 22, 80 , 7080 is open in the security group of the VM instance.)

Method - 2 : Copy-paste Docker file in host machine and then build & run : 
1. mkdir images
2. cd images
3. vi dockerfile #Copy-paste the content of dockerfile here.
4. sudo docker build -t <image-name>:<tag> .
5. sudo docker run -it -p 7080:8080 --name <container-ID> <image-name(given in previous step)>