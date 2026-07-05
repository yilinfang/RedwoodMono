# syntax=docker/dockerfile:1
FROM node:lts-slim AS build

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
      ttfautohint curl ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /iosevka

# Download the pinned Iosevka source archive (NOT a git clone).
ARG VER
RUN curl -fsSL "https://github.com/be5invis/Iosevka/archive/refs/tags/${VER}.tar.gz" \
      | tar xz --strip-components=1

RUN npm install

# Custom build plan; its own layer so edits re-trigger only the build below.
COPY private-build-plans.toml ./

RUN npm run build -- ttf::RedwoodMono

# Export-only stage: contains just the built fonts.
FROM scratch AS export
COPY --from=build /iosevka/dist /
