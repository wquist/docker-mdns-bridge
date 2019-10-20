# `docker-mdns-bridge`

_Dockerize [mdns-repeater](https://bitbucket.org/geekman/mdns-repeater/src/default/)
to pass mDNS messages between `docker0` and a given set of interfaces._

# Usage

```bash
docker run -d --net=host wquist/mdns-bridge <your-interface-names>...
```
