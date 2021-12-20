# Docker Ngrok

Simple installation of [Ngrok](https://ngrok.com) in a Docker container that allows multiple tunnels/connections to be run on one Ngrok instance/process. Built using [Alpine Linux](https://hub.docker.com/_/alpine), it is designed to be small and easy to use. The free Ngrok tier only permits one running instance of Ngrok, so this container allows for easy collation of all your tunnels/connections.

## Usage

1. Clone this repository
2. Edit ``ngrok.yml`` to contain the tunnels/connections you wish to run over Ngrok. My configuration is shown in this repo
3. Run ``docker build -t [IMAGE NAME] .`` to build the image with your selected configuration
4. Run ``docker run --rm -d -e AUTH_TOKEN=[AUTH TOKEN FROM YOUR NGROK ACCOUNT] [IMAGE NAME]``
5. Ngrok is now running those connections from a single instance/process
6. (Optional) Push your built image to DockerHub, then pull down on a server with Docker support (i.e. Unraid) to run 24/7. Ensure that you're specifying the necessary environment variable(s)

## Acknowledgements

Inspiration taken from these repos

- [fnichol/docker-ngrok](https://github.com/fnichol/docker-ngrok)
- [wernight/docker-ngrok](https://github.com/wernight/docker-ngrok)

