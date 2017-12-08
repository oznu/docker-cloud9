### Work in progress

# Docker AWS Cloud9 Client

This image acts as a server which your AWS Cloud9 workspace can connect to.

## Usage

```
docker run \
  -v </path/to/config/>:/config \
  -v </path/to/home/>:/home \
  -p 22:22 \
  oznu/cloud9
```

* The user account name is `cloud9`.
* Save the Cloud9 public key to the file`/config//authorized_keys/cloud9`

## Limitations

* The Cloud9 Docker services do not work. You will get an error about this in Cloud9, just click `Previous` then uncheck the Docker service to make it go away.
