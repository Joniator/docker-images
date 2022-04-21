#! /bin/sh

get_version () {
    git fetch --tags
    _VERSION=$(git describe --tags `git rev-list --tags --max-count=1`)
    echo "$_VERSION"
}

VERSION="$(get_version)"

echo "::set-output name=version::$VERSION"