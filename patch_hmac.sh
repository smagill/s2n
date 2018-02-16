#!/bin/bash

patch -p1 -i tests/saw/failure_tests/sha_bad_magic_mod.patch

if [ $? -eq 0 ]; then
    echo "HMAC has been patched with the incorrect magic mod number.
    Travis tests should now fail after pushing"
fi