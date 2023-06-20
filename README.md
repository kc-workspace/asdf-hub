<h1 align="center">
  asdf-hub
</h1>

<!-- Description section -->
<p align="center">
  <strong>a command-line tool that makes git easier to use with GitHub.</strong>
</p>

<!-- Badges section -->
<p align="center">
  <a href="https://github.com/kc-workspace/asdf-hub/actions/workflows/main.yml">
    <img
      alt="github-main"
      src="https://img.shields.io/github/actions/workflow/status/kc-workspace/asdf-hub/main.yml?style=flat-square&logo=github">
  </a>
  <a href="https://github.com/kc-workspace/asdf-hub/releases">
    <img
      alt="version"
      src="https://img.shields.io/github/v/release/kc-workspace/asdf-hub?style=flat-square&logo=github">
  </a>
</p>

<!-- Links section -->
<h3 align="center">
  <a href="https://hub.github.com">hub</a>
  <span> · </span>
  <a href="https://asdf-vm.com">asdf</a>
</h3>

> This is an asdf-vm plugin generated from [template][template-gh].

## Before start

> If you still see this section, mean this plugin is not ready yet

There are several things template cannot generate for you,
below are a list of thing we should do:

1. make sure that your GitHub repository already exist at [kc-workspace/asdf-hub][plugin-gh]
2. please read [plugins create section][asdf-create-plugin] for more information
3. remove `before start` section once you completed

## Install

Plugin:

```sh
asdf plugin add "hub" "https://github.com/kc-workspace/asdf-hub.git"
```

App:

```sh
# Show all installable versions
asdf list all hub

# Install latest version
asdf install hub latest

# Set a version globally
asdf global hub latest

# Now hub commands are available
hub
```

Check the [asdf][asdf-link] readme for instructions on
how to install & manage versions.

## Features

Plugins generated from asdf-plugin-template repository will
contains several extra features for every user including all below

### Debug mode

You can enabled debug mode using environment variable called `$DEBUG`.
Set to non-empty string to enable debug mode.

### Overwrite mode

You can override os and arch name if the default is not match with your need.
`$ASDF_OVERRIDE_OS` and `$ASDF_OVERRIDE_ARCH` can be use to override value

### GitHub rate-limit

Something you just query too many data from GitHub,
`$GITHUB_API_TOKEN` will help you increase that limit

## Contributors

1. All functions and variables should prefix with `kc_asdf_*` or `KC_ASDF_*`
2. All private functions should has `__` prefix (e.g. __kc_asdf_test)
2. `lib/common` and `lib/commands.sh` should not be modify as it might overwrite
3. All `bin/*` script should always has below template

```bash
#!/usr/bin/env bash

## <description>
## https://asdf-vm.com/plugins/create.html

## Your script specific code
# kc_asdf_main() {
#   return 0
# }

## -----------------------------------------------------------------------

set -euo pipefail

export KC_ASDF_PLUGIN_ENTRY_PATH=${BASH_SOURCE[0]}
export KC_ASDF_PLUGIN_ENTRY_NAME
KC_ASDF_PLUGIN_ENTRY_NAME="$(basename "$KC_ASDF_PLUGIN_ENTRY_PATH")"
export KC_ASDF_PLUGIN_PATH
KC_ASDF_PLUGIN_PATH=$(dirname "$(dirname "$KC_ASDF_PLUGIN_ENTRY_PATH")")

# shellcheck source=/dev/null
source "$KC_ASDF_PLUGIN_PATH/lib/commands.sh" "$KC_ASDF_PLUGIN_ENTRY_NAME"
```

<!-- LINKS SECTION -->


[plugin-gh]: https://github.com/kc-workspace/asdf-hub
[template-gh]: https://github.com/kc-workspace/asdf-plugin-template
[asdf-link]: https://github.com/asdf-vm/asdf
[asdf-create-plugin]: https://asdf-vm.com/plugins/create.html
