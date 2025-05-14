FROM node:18

# Install Python and yt-dlp
RUN apt-get update && \
    apt-get install -y python3 python3-pip ffmpeg && \
    pip3 install yt-dlp

# Create app directory
WORKDIR /app
COPY . .

# Install Node.js dependencies
RUN npm install

# Expose port and start app
EXPOSE 3000
CMD ["node", "server.js"]
