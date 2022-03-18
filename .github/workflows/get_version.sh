#! /bin/sh

IMAGE=${1:-"localimage:test"}

get_version () {
    COMMAND='/app/code-server/bin/code-server --version | tail -n1 | cut -d" " -f1'

    _VERSION=$(docker run --rm $IMAGE sh -c "$COMMAND" | grep -oP "\d+\.\d+\.\d+")
    echo "v$_VERSION"
}

VERSION="$(get_version)"

echo "::set-output name=version::$VERSION"