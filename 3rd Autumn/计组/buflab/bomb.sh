# ./hex2raw < candle.txt > raw.txt
# # ./bufbomb -u 2020010108 < raw.txt
# ./bufbomb -n -u 2020010108 < raw.txt
cat candle.txt | ./hex2raw -n | ./bufbomb -n -u 2020010108