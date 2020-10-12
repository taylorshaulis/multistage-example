FROM golang:1.13.4-alpine as builder
RUN mkdir -p /out
RUN echo "test" > /out/test


FROM alpine:3.7
COPY --from=builder /out/test /test.txt
CMD ["/bin/sh"]
