# Vulnerable Dockerfile

# Use an outdated and insecure base image
FROM debian:stretch

# Install outdated and vulnerable packages
RUN apt-get update && \
    apt-get install -y \
    openssh-server=1:7.4p1-10+deb9u7 \
    curl=7.52.1-5+deb9u16 \
    git=1:2.11.0-3+deb9u7 && \
    rm -rf /var/lib/apt/lists/*

# Expose SSH port
EXPOSE 22

# Copy vulnerable application code
COPY . /app
WORKDIR /app

# Run the vulnerable application
CMD ["/bin/bash", "-c", "./start.sh"]
