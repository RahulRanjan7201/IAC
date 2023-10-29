FROM oraclelinux:8.4
# We are asking docker server to pull this image from Docker hub 
LABEL name="rahul"
LABEL email = "rahul.ranjan@exto360.com"
# label is optional part . Label can have any information . Way to build image based on label 

#copy code to image 
COPY project-html-website /usr/share/nginx/html
#nginx is having default location to run code 
#copy can use file or folder both to copy data