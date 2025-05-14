# 🐍 Python Sandbox with Docker

Easily spin up an **isolated Python environment** using Docker — no global installs, no mess.  
Ideal for learning, experimenting, or testing Python code without affecting your host machine.

> Prefer installing Python directly? Grab it here: [python.org/downloads](https://www.python.org/downloads/)


## 📦 Prerequisites
Install **any one** of the following Docker-compatible tools:

- [OrbStack](https://orbstack.dev) _(preferred — fast, modern Docker alternative for macOS)_
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Lima](https://lima-vm.io)
- [Rancher Desktop](https://rancherdesktop.io)
- [Colima](https://github.com/abiosoft/colima)

Once installed and running, verify Docker is available:

```bash
docker -v
```

## 🚀 Build & Start the Container [One Time]

To build the Docker images and start the services run:
```bash
docker-compose up -d --build
```
- `up`: Start the services defined in `docker-compose.yml`
- `-d`: Runs in detached/background mode
- `--build`: Forces a rebuild of the image

## 🧑🏻‍💻 Write & Run Python Code
Create a new file named `solution-1.py` in the available `solutions` directory, or any location of your choice.

Add this example code and save the file `solutions/solution-1.py`:

```python
print("Hello World")
```

To access the Python environment inside your container:
```bash
docker-compose exec python-sandbox bash
````
- `exec`: Run a command in a running container
- `python-sandbox`: The service name from `docker-compose.yml`
- `bash`: Command to run (starts a Bash shell)

Then run your script:
```bash
python solutions/solution-1.py
```

## 🛠️ Troubleshoot 
Check logs from the running container:
```bash
docker-compose logs
```

If something isn't working, ensure the container is running:
```bash
docker ps
```

## 🧹 Cleanup
When you are done with your Python learning and, if necessary, want to clean up everything, run the following command:
```bash
docker-compose down --volumes
```
- `down`: Stop and remove containers, networks, and images created by `up`
- `--volumes`: Also remove named volumes (cleans up persisted data)

Optionally, delete your local project folder:
```bash
rm -rf python-sandbox
```
- `rm -rf`: Forcefully remove the folder and its contents

## 📌 Notes
- Your code is stored on your host (`.py` files in `solutions/`) — container is just the execution environment.
- No Python installation required on the host — everything runs inside Docker.
