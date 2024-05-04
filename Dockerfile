# to start you image depending on another image
FROM alpine


# to make the current directory the path I put to it ( If the directory specified in WORKDIR does not exist, Docker will create it when a command like RUN is executed.)
WORKDIR /app/myapp


# to copy from my host to the container
COPY . .


# can accept URLs as <src>. Docker will download the resource specified by the URL and copy it into the image.
ADD <url> /app/myapp/


# is used to define build-time variables that can be passed to the Docker image during the build process.
# like varaible I will use many times in dockerfile
ARG username="Yousef"



# Override the default shell of container to bash or another shell
SHELL [ "/bin/bash","-c" ]


# Is used to execute commands inside the Docker container during the image build process.
# It allows you to run commands like installing software packages, configuring settings, downloading files, or any other task that you would normally perform within a running container
RUN <command>
# or
RUN ["executable", "param1", "param2"]

## metadata
# to set environment variables within the Docker image.
ENV DB_HOST localhost
ENV DB_PORT 3306


# to specify the command that will be executed when a container is started from the Docker image.
# It defines the default executable that will run in the container when it is launched.
ENTRYPOINT ["java", "-jar", "myapp.jar"]

# 'CMD' sets the default command to execute when the container starts, while 'ENTRYPOINT' defines the primary command.
CMD ["executable", "param1", "param2", ...]


