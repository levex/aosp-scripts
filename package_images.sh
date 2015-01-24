#!/bin/sh

mkdir image_package 2>/dev/null
cp out/target/product/hammerhead/*.img image_package/

tar czvf image_package.tar.gz image_package/*
