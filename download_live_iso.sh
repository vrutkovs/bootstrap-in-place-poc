export FCOS_VERSION=${FCOS_VERSION:-33.20210201.3.0}
export BASE_OS_IMAGE=https://builds.coreos.fedoraproject.org/prod/streams/stable/builds/${FCOS_VERSION}/x86_64/fedora-coreos-${FCOS_VERSION}-live.x86_64.iso

if [ $# -eq 0 ]; then
    echo "USAGE: $0 download_path"
    exit 1
fi

DOWNLOAD_PATH=$1
curl ${BASE_OS_IMAGE} --retry 5 -o $DOWNLOAD_PATH
