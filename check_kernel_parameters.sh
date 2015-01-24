#!/bin/sh

dd if=out/target/product/hammerhead/boot.img bs=1 count=512 skip=64 2>/dev/null | xargs echo 2>/dev/null
