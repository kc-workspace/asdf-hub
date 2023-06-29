#!/usr/bin/env bash

## User utility functions
## This will load on very beginning of the scripts
## so make sure that you only define functions

_kc_asdf_custom_arch() {
  local os="$KC_ASDF_OS" arch="$1"
  [[ "$os" == "darwin" ]] &&
    arch="amd64"
  printf "%s" "$arch"
}
