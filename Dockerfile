FROM node:lts

RUN apt update
RUN wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
RUN dpkg -i vscode.deb || true
RUN apt-get install -y -f && apt clean all && rm -f vscode.deb

USER builder
WORKDIR /src

ENTRYPOINT ["node"]


