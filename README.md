# docker-bubbleupnpserver

# Introduction

BubbleUPnP Server provides new services, many of them running on top of your existing UPnP/DLNA devices:

	- Make various media formats not natively supported by Chromecast playable with transcoding. Works in tandem with Android BubbleUPnP
	- Secure Internet access to your UPnP/DLNA Media Servers content with Android BubbleUPnP and foobar2000.
	- Stream and download your music, video, photos with your Android device from a mobile or WiFi connection with optional transcoding to reduce bandwidth.
	- No need to sync, to upload to the cloud, to register to an online service
	- Create OpenHome Media Renderers from any UPnP AV renderer (provides on-device playlist, multiple Control Point access to the same renderer)
	- Fix issues of UPnP/DLNA Media Servers (discovery issues, broken data, add some audio DLNA compliance) by Creating a proxy Media Server
	- Access your UPnP/DLNA Media Servers across different networks

**BUBBLEUPNP SERVER IS NOT AN UPNP AV MEDIA SERVER**

# Installation

Pull the image from the docker registry e.g.

```docker pull tromatik/bubbleupnpserver```

or build it:  

```git clone https://github.com/Trauma/docker-bubbleupnpserver.git```

```cd docker-bubbleupnpserver```

```docker build --tag="$USER/bubbleupnpserver" .```

run your build:
```docker run -d --name=<your_container_name> --net=host $USER/docker-bubbleupnpserver:latest```

# Quick Start

Run the downloaded image (as a daemon):

```docker run -d --name=<your_container_name> --net=host tromatik/docker-bubbleupnpserver:latest```

# Test it

http://<host.ip>:58050 or https://<host.ip>:58051

# Configuration

Configuration is available through bubbleupnpserer's web interface.

# Shell Access


For debugging and maintenance purposes you may want access the containers shell. Either add after the run command or tun e.g.

```docker exec -it "$USER/docker-bubbleupnpserver" bash  ```

or
```docker ps```
```docker exec -it <container-id> bash   ```

# Autostart the container

add the parameter --restart=always to your docker run command.
