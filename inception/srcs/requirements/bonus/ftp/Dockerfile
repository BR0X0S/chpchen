FROM        debian:bullseye

RUN         apt-get update && \
            apt-get install -y vsftpd && \
            apt-get clean && \
            rm -rf /var/lib/apt/lists/*

RUN	    mkdir -p /var/run/vsftpd/empty && \
	    chmod 755 /var/run/vsftpd/empty

COPY        vsftpd.conf /etc/vsftpd.conf
COPY        start_ftp.sh /

RUN         chmod +x /start_ftp.sh

ENTRYPOINT  ["./start_ftp.sh"]