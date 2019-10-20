FROM alpine

ADD mdns-repeater/mdns-repeater.c mdns-repeater.c
RUN apk add --no-cache build-base &&\
	gcc -o /bin/mdns-repeater mdns-repeater.c -DHGVERSION="\"1.10\"" &&\
	apk del build-base

ENTRYPOINT ["/bin/mdns-repeater", "docker0"]
CMD ["eth0"]
