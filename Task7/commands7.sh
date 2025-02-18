
#for IP
grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' data.txt
#for phone numbers
grep -oE '\+?[0-9]{10,15}' data.txt
#for URLs
grep -oE '(https?://|www\.)[a-zA-Z0-9.-]+' data.txt
