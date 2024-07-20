# Copy your application code to the container
COPY . .

# Install any dependencies your application needs
# Replace with appropriate commands if you have specific dependencies
RUN pip install -r requirements.txt
RUN sudo apt-get install ffmpeg python3-pip -y

# Command to run when the container starts for worker bash start.sh
CMD ["bash", "run.sh"]

For worker python bot.py, uncomment and use the following CMD instead if needed:
CMD ["python", "bot.py"]
