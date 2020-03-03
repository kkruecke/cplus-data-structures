#!/usr/bin/env bash
rm -rf _build
rm ./data-structs.tar.gz
make html
cd _build/html
sed -i -e 's/max-width:\s800px;/max-width: 65%;/' _static/basic.css
tar -czvf ../../data-structs.tar.gz  ./*
cd ../..
sshpass -pkk0457 scp ./data-structs.tar.gz kurt@23.254.165.183:~/
sshpass -pkk0457 ssh kurt@23.254.165.183 
