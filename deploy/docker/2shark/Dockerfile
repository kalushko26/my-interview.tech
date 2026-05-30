FROM public.ecr.aws/docker/library/node:22-bookworm-slim

RUN apt-get update \
  && apt-get install -y --no-install-recommends ca-certificates git \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["npx", "2shark@3.0.1", "--help"]
