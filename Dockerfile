FROM lscr.io/linuxserver/code-server

LABEL maintainer="Jonatha Boeckel <jonnyb@jonnyb.name>"

RUN sudo apt-get update && \
	apt-get install -y --no-install-recommends \
        shellcheck \
        software-properties-common \
        yadm \
        zsh && \
# AWS Corretto JDK 17
    curl https://apt.corretto.aws/corretto.key | sudo apt-key add -  && \
    sudo add-apt-repository 'deb https://apt.corretto.aws stable main' && \
    apt-get install -y --no-install-recommends java-17-amazon-corretto-jdk && \
# Dotnet 
	curl https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -o packages-microsoft-prod.deb && \
	dpkg -i packages-microsoft-prod.deb && \
	rm packages-microsoft-prod.deb && \
	sudo apt-get update; \
    apt-get install -y --no-install-recommends dotnet-sdk-6.0 && \
# Ansible
    add-apt-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y --no-install-recommends ansible && \
# Cleanup
	rm -rf /var/lib/apt/lists/*
