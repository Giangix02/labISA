#!/bin/bash

"" > output.txt
./fp16_num 7.0 -896.0 >> output.txt
echo "" >> output.txt

./fp16_num 25.0 25.0 >> output.txt
echo "" >> output.txt

./fp16_num 128.0 128.0 >> output.txt
echo "" >> output.txt

./fp16_num 896.0 -112.0 >> output.txt
echo "" >> output.txt

./fp16_num 112.0 -7.0 >> output.txt
echo "" >> output.txt

./fp16_num -112 -25.0 >> output.txt
echo "" >> output.txt

./fp16_num -896.0 896.0 >> output.txt
echo "" >> output.txt

./fp16_num -7.0 -128.0 >> output.txt
echo "" >> output.txt

./fp16_num -25.0 7.0 >> output.txt
echo "" >> output.txt

./fp16_num -128.0 112.0 >> output.txt
echo "" >> output.txt

