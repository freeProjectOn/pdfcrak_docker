FROM alpine:latest
RUN apk update && apk add wget && apk add git && apk add build-base && rm -rf /var/cache/apk/*
RUN mkdir /pdf
RUN git clone https://github.com/freeProjectOn/pdfcrack.git
RUN make --directory /pdfcrack
RUN cp /pdfcrack/pdfcrack /sbin/
ENV MAX_LENGTH 6
ENV MIN_LENGTH 1
ENV CHAR_SET abcdefghjklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ
ENV FILE_NAME /pdf/*.pdf
ENV start="pdfcrack -f $FILE_NAME -m $MAX_LENGTH -n $MIN_LENGTH -c $CHAR_SET -o"
