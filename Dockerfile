FROM typesense/typesense:0.22.2
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
HEALTHCHECK --start-period=5s \
	CMD curl -f http://localhost:8108/health || exit 1
