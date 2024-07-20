# Use an appropriate base image for your Python application
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your application code to the container
COPY . .

# Install any dependencies your application needs
# Replace with appropriate commands if you have specific dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get -qq install -y ffmpeg

# Command to run when the container starts for worker bash start.sh
CMD ["bash", "start.sh"]

For worker python bot.py, uncomment and use the following CMD instead if needed:
CMD ["python", "bot.py"]
