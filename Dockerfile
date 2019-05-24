FROM ubuntu

LABEL author="auho auho@163.com"

# ADD https://download.studio3t.com/studio-3t/linux/2019.2.1/studio-3t-linux-x64.tar.gz /opt/studio-3t-linux-x64.tar.gz
COPY studio-3t-linux-x64.tar.gz /opt/studio-3t-linux-x64.tar.gz

RUN apt-get update \
    && apt-get install -y libxi6 libxtst6 libxrender1 libgtk-3-dev libssl1.0.0 fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming \
    && apt-get autoclean \
    && apt-get autoremove

RUN cd /opt \
    && tar -xf studio-3t-linux-x64.tar.gz

CMD ["/bin/bash"]