#!/bin/bash

patch -p1 -R -i tests/saw/failure_tests/sha_bad_magic_mod.patch

if [ $? -eq 0 ]; then
    echo "HMAC bad magic mod has been unpatched. The proofs for HMAC should now succeed"
fi