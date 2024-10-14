FROM itzg/minecraft-server:latest

ENV SERVER_PORT=25566

RUN curl -fsSL -o /usr/local/bin/lazymc https://github.com/timvisee/lazymc/releases/download/v0.2.11/lazymc-v0.2.11-linux-x64
RUN chmod a+x /usr/local/bin/lazymc
COPY ./lazymc.toml /data/lazymc.toml

ENTRYPOINT [ "/usr/local/bin/lazymc", "-c", "/data/lazymc.toml" ]