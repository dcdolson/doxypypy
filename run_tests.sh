#!/bin/sh

set -e

docker run --rm -it -v $PWD:/work -w /work kiwicom/tox tox

