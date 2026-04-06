#!/usr/bin/env bash
# Host paketleri: thinRoot (Buildroot) derlemesi için Ubuntu 24.04+
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update -y

sudo apt-get install -y --no-install-recommends \
  build-essential \
  bc \
  bzip2 \
  ca-certificates \
  ccache \
  cpio \
  curl \
  file \
  findutils \
  g++ \
  gcc \
  git \
  gzip \
  make \
  patch \
  perl \
  python3 \
  rsync \
  sed \
  tar \
  unzip \
  wget \
  xz-utils

# Makefile, buildroot indirmelerinde shasum kullanıyor (perl).
command -v shasum >/dev/null || { echo "shasum not found"; exit 1; }

echo "thinRoot build dependencies installed."
