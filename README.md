# docker-lamp-gateone
LAMP server setup with webdav turned on and gateone server installed.

## Usage

1. [**Install docker**](https://docs.docker.com/installation/)
1. **Download and start the gateone server instance**  
`docker run --name lamp-gateone -p 80:80 -p 443:443 -p 10443:10443 -p 2345:22 -d greyltc/lamp-gateone`
1. **Test the gateone server**  
Point your browser to:  
https://localhost:10443/  
and you should see a page with a big button for the Terminal:SSH application  
1. Click the `Terminal:SSH` button
1. Hit enter (accept the default) to choose to connect to localhost
1. Hit enter (accept the default) to choose to connect through port 22
1. Enter `docker` for the user
1. Type `sl` to see a nice steam locomotive.
1. **[Optional] Stop the gateone docker server instance**  
`docker stop lamp-gateone`
1. **[Optional] Delete the gateone docker server instance (after stopping it)**  
`docker rm lamp-gateone`
1. **Profit.**

## SSH
You can also ssh into the container with `ssh docker@localhost -p2345`

## Webdav
The `/srv/webdav/` folder in the container is served up (r/w) via webdav by browsing to https://localhost/dav
