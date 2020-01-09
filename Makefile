build:
	docker build -t globus-url-copy .

shell:
	docker run -it --rm \
		--name globus-url-copy \
		globus-url-copy /bin/bash

run:
	docker run -it --rm \
		--name globus-url-copy \
		globus-url-copy
