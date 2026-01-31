FROM node:24

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    curl \
    build-essential \
 && rm -rf /var/lib/apt/lists/*

# Update npm to the latest version
RUN npm install -g npm@latest

# Set working directory inside container
WORKDIR /webapp
RUN chmod 755 /webapp

RUN npm install -g openclaw@latest

# Expose gateway port
EXPOSE 18789

#CMD ["node", "index.js"]
CMD ["tail", "-f", "/dev/null"]