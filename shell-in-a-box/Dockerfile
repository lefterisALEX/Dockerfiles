FROM ubuntu:18.04
RUN apt -y update && apt -y upgrade && \ 
    apt -y install shellinabox && \
    apt -y install apache2 && \
    echo "PS1=\">> \"" > /root/.bashrc && \
    apt-get -y clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    useradd -s /bin/bash -m -d /home/student student && \
    echo "student:studentpwd" | chpasswd


EXPOSE 4200

COPY start.sh /usr/sbin/

ENTRYPOINT ["/usr/sbin/start.sh"]
CMD ["/bin/bash","-c","shellinaboxd -t -v -m '*' -s /:student:student:HOME:bash"]


