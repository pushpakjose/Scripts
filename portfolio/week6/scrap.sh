 curl -sL https://www.cybintsolutions.com/cyber-security-facts-stats/ | grep -Po "<h3>\K(.*?)</h3>" | sed "s/..h3.//g" > test.csv
 cat test.csv