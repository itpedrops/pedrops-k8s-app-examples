FROM plugins/base:linux-amd64

  LABEL maintainer="PedrOps <it.pedrops@gmail.com>" \
  org.label-schema.name="go-github-action-helloworld" \
  org.label-schema.vendor="PedrOps" \
  org.label-schema.schema-version="1.0.1"

  EXPOSE 8080

  COPY release/go-github-action-helloworld /bin/

  ENTRYPOINT ["/bin/go-github-action-helloworld"]
