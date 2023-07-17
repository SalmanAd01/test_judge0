FROM ubuntu:latest

# Copy the shell script to the container
COPY script.sh /script.sh

# Set the script as executable
RUN chmod +x /script.sh

# Run the shell script when the container starts
CMD ["/script.sh"]
