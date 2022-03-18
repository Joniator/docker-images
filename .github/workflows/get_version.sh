#! /bin/sh

IMAGE=${1:-"localimage:test"}

get_version () {
    COMMAND='<COMMAND>'

    _VERSION=$(docker run --rm $IMAGE sh -c "$COMMAND")
    echo "v$_VERSION"
}

VERSION="$(get_version)"

echo "::set-output name=version::$VERSION"