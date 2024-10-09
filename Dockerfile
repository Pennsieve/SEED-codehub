FROM python:3.10.15-bullseye

WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN python -m ensurepip --upgrade

# Install the required Python packages from requirements.txt
RUN pip install -r /app/core_libraries/python/cnt_codehub/envs/requirements.txt

# Define the default command (if needed)
CMD ["bash"]
