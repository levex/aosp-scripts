#!/bin/sh

export _kern_file="out/target/product/hammerhead/kernel"

dd if=$_kern_file bs=1 skip=$(LC_ALL=C od -Ad -x -w2 $_kern_file | grep 8b1f | cut -d ' ' -f1 | head -1) | zgrep -a 'Linux version'
