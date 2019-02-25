FROM rbarazzutti/texlive-anyversion:base
RUN cd /tmp && ./install-tex.sh 2018
