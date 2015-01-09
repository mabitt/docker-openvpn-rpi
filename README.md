docker-openvpn
--------------
This container runs OpenVPN.

Running manually
----------------
    docker build -t edgard/openvpn .
    docker run -d --name openvpn --privileged -p 1194:1194/udp -v /srv/openvpn:/data edgard/openvpn

Running with make tasks
-----------------------
* **build**: build image
* **start**: start container in background
* **test**: start temporary test container *openvpn-test*
* **test-stop**: stop and remove temporary test container
* **run**: start interactive container
* **push**: push image to docker hub

Check *Makefile* for additional information.

OpenVPN configuration
-------------------------
Configurations files and certificates are created at:
> $DATADIR/conf
