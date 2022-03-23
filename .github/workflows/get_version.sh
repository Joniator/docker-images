#! /bin/sh

IMAGE=${1:-"localimage:test"}

get_version () {
    COMMAND='vim --version | head -n1 | grep -oE "\d+\.\d+"'

    _VERSION=$(docker run --entrypoint sh $IMAGE -c "$COMMAND")
    echo "v$_VERSION"
}

VERSION="$(get_version)"

echo "::set-output name=version::$VERSION"