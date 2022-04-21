#! /bin/sh

get_version () {
    _VERSION=$(curl --silent "https://api.github.com/repos/leonwind/cli2cloud/releases/latest" |
    grep '"tag_name":' |
    sed -E 's/.*"([^"]+)".*/\1/')
    echo "$_VERSION"
}

VERSION="$(get_version)"

echo "::set-output name=version::$VERSION"
