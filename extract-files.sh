#!/bin/sh

set -e

export DEVICE=ville
export VENDOR=htc
./../../../device/${VENDOR}/s4-common/extract-files.sh $@
