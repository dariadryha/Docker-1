FROM ubuntu

RUN apt-get update && apt-get install -y openjdk-8-jdk \
wget

WORKDIR /minecraft

RUN wget -O minecraft_server.jar https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar

RUN chmod +x minecraft_server.jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565

ENTRYPOINT java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui
