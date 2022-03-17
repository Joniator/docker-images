#! /bin/sh

IMAGE=${1:-"localimage:test"}

get_version () {
    # Command will be executed in the built container and should return the version without v (e.G. 1.2.3, not v1.2.3) 
    COMMAND='ansible --version | head -n1 | grep -oE "\d+\.\d+\.\d+"'

    _VERSION=$(docker run --rm $IMAGE sh -c "$COMMAND")
    echo "v$_VERSION"
}

VERSION="$(get_version)"

echo "::set-output name=version::$VERSION"