### Work in progress

# Docker Cloud9 Server

This image runs the Cloud9 IDE inside a Docker container. Supports multiple users and collaboration.

## Usage

```
docker run \
  -v </path/to/config/>:/config \
  -v </path/to/home/>:/workspace \
  -p 80:80 \
  -p 8000-8003:9000-9003 \
  oznu/cloud9
```

## Managing Users

Users are managed through a standard `.htpasswd` file located in `/config/.htpasswd`. To add a new a user run this command after launching the container:

```
docker exec -it <container name or id> htpasswd /config/.htpasswd <username>
```
