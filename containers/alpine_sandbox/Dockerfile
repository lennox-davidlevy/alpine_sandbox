FROM alpine:3.14
#USER root
RUN apk update && apk add \
	vim \
	vim-tutor \
	mandoc \
	ncurses\
	man-pages \
	mandoc-apropos \
	less \
	shadow \
	jq \
	tmux \
	less-doc \
	grep \
	sudo \
	git \
	curl \
	--update nodejs npm
RUN apk add --no-cache --upgrade bash
RUN apk add bash-doc
WORKDIR /root
CMD ["/bin/bash"]
