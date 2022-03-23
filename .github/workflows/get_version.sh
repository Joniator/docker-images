#! /bin/sh

IMAGE=${1:-"localimage:test"}

get_version () {
    COMMAND='vim --version | head -n1 | grep -oE "\d+\.\d+"'

    _VERSION=$(docker run -t --entrypoint sh $IMAGE -c "$COMMAND")

    echo "$_VERSION"
}

VERSION="$(get_version)"

echo "::set-output name=version::$VERSION"