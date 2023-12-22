FROM public.ecr.aws/sam/build-provided.al2:latest-amd64

# Install Go
RUN curl -L https://go.dev/dl/go1.21.5.linux-amd64.tar.gz | tar -zx -C /usr/local
ENV PATH=$PATH:/usr/local/go/bin:/root/go/bin
# Set GOPROXY envvar to avoid using the default proxy.golang.org proxy
ENV GOPROXY=direct

# Compatible with initial base image
ENTRYPOINT []
CMD ["/bin/bash"]
