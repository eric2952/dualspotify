
#pull down the latest ubuntu container
FROM ubuntu:latest

#To install without any interactive dialogue
#ENV sets an environment variable
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install curl wget gnupg -y

# Import the repositorys GPG key
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys  D1742AD60D811D58
RUN curl https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg -o spotify.gpg_armored

RUN gpg --dearmor < spotify.gpg_armored > /etc/apt/trusted.gpg.d/repository-spotify-com-keyring.gpg



# Add the Spotify APT repository to your systems software repository list
RUN echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list

# Install Spotify
RUN apt-get update &&  apt-get install spotify-client -y

#this will open the spotify app in the container
CMD ["spotify"]