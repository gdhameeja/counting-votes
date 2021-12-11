FROM golang

MAINTAINER Gaurav Dhameeja gdhameeja@gmail.com
ENV REFRESHED_AT 2021-12-11

WORKDIR /app
ADD . .

CMD go mod download
CMD go mod vendor
CMD go build ./cmd/counting-votes
RUN ["./counting-votes"]
