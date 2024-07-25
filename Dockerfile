FROM alpine:3.20.2 AS build-stage
LABEL maintainer="Mathias Braeckow <icallya@gmx.de>"


RUN     apk update --nocache ;\
        apk --no-cache add make gcc g++ musl-dev binutils autoconf automake libtool pkgconfig check-dev file patch git
WORKDIR /app

COPY    . ./

RUN cd src ; make clean ; make ; ./main

#
FROM scratch AS export-stage
COPY --from=build-stage /app/src/main .
