FROM alphine
RUN apk dd python3
#we are refering offical python image from Docker hub
RUN mkdir /mycode
COPY rahul.py /mycode/
#COPY rahul.py /mycode/hello.py
# CMD ["python", "rahul.py"]
CMD python /mycode/rahul.py
#whosoever gonna use my image so this will automatically run python code 