#! /bin/bash

function help {
    cat << EOH
Open a docker volume or path in a containerized vim.

Usage: $0 [arguments] [file..]      Edit specified files
   or: $0 -v http_data [file..]     Edit specified files in docker volume http_data
   or: $0 -v http_data              Open the docker volume http_data in vim

Globals:
    DVIM_IMAGE: Name of the image/repo, Default ghcr
    DVIM_TAG: Version/tag of the docker image, Default latest
    DVIM_VOLUME: The path or docker volume to be mounted
Arguments:          
    -h  --help      Prints this help
    -v  --volume    The path or docker volume to be mounted     DVIM_VOLUME
    -i  --image     The image, default: ghcr.io/joniator/vim    DVIM_IMAGE
    -t  --tag       The image tag, default: latest              DVIM_TAG
EOH
}

OPTIONS=hv:i:t:
LONGOPTS=help,volume:,image:,tag:

PARSED=$(getopt --options=$OPTIONS --longoptions=$LONGOPTS --name "$0" -- "$@")

eval set -- "$PARSED"

IMAGE=${DVIM_IMAGE:-ghcr.io/joniator/vim}
TAG=${DVIM_VERSION:-latest}
VOLUME="${DVIM_VOLUME:-$PWD}"

while true; do
    case "$1" in
        -h|--help)
            help
            exit 0
            ;;
        -v|--volume)
            VOLUME=$2
            shift 2
            ;;
        -i|--image)
            IMAGE=$2
            shift 2
            ;;
        -t|--tag)
            TAG=$2
            shift 2
            ;;
        --)
            shift
            break
            ;;
        *)
            echo "Programming error"
            exit 3
            ;;
    esac
done

docker run -it --rm -v "$VOLUME:/mount" $IMAGE:$TAG ${@:-.}
