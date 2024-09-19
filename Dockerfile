FROM ubuntu:latest
COPY --chmod=755 entrypoint.sh /entrypoint.sh
RUN groupadd -r myuser && useradd -r -m -g myuser myuser
USER myuser
ENTRYPOINT ["/entrypoint.sh"]