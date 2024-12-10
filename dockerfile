# Vulnerable Dockerfile

# Use an outdated and insecure base image
FROM ubuntu:16.04

# Hardcoded secrets in the Dockerfile (example vulnerability)
ENV DB_USER=admin
ENV DB_PASSWORD=supersecret

# Install outdated and vulnerable packages
RUN apt-get update && \
    apt-get install -y \
    openssl=1.0.2g-1ubuntu4.20 \
    apache2=2.4.18-2ubuntu3.17 \
    wget=1.17.1-1ubuntu1.5 && \
    rm -rf /var/lib/apt/lists/*

# Add application code
COPY . /app
WORKDIR /app

# Run the application with root privileges (security risk)
USER root
CMD ["/bin/bash", "-c", "./run.sh"]
