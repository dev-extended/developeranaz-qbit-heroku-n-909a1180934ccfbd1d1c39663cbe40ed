FROM developeranaz/qbittorrent2rclone:beta1
#FROM developeranaz/qbittorrent-rclone-heroku
#RUN apt update 
#RUN apt install unzip 
#RUN apt install qbittorrent-nox -y
#curl -y
#RUN apt install rclone -y
COPY entrypoint.sh /entrypoint.sh 
COPY qBconf.tar.gz /qBconf.tar.gz
RUN tar xvf /qBconf.tar.gz
wget 'https://github.com/WDaan/VueTorrent/releases/download/v0.15.3/vuetorrent.zip'
unzip vuetorrent.zip
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
