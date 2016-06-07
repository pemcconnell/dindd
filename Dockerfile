FROM debian:jessie
MAINTAINER Peter McConnell <peter.mcconnell@rehabstudio.com>

# packages
RUN apt-get update && \
	apt-get install -y wget iptables init-system-helpers perl libapparmor1

# add the registry
RUN wget -O docker.deb https://apt.dockerproject.org/repo/pool/main/d/docker-engine/docker-engine_1.9.1-0~jessie_amd64.deb && \
	dpkg -i docker.deb

# clean-up
RUN rm -rf /var/lib/apt/lists/*

CMD ["bash"]
