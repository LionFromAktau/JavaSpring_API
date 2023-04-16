FROM ubuntu:22.04

# Install packages needed to run program
RUN apt-get update && \
    apt-get -y install git openjdk-17-jdk maven mysql-client mysql-server
    
RUN apt-get install -y sudo


# Create project directory and set it as working directory
WORKDIR /root/project

# Copy run.sh to project directory
COPY run.sh .

# Set permissions for run.sh
RUN chmod +x run.sh

# Launch a bash shell by default when the container is run
CMD ["/bin/bash"]
