#!/bin/bash

pwd=`pwd`

sbcl --dynamic-space-size 4000 --noinform --non-interactive --load "${pwd}/run-analyzer.lisp" "$@"