Basic syntax of awk:

awk [options] 'pattern {action}' <input_file>

awk '{print}' errors_only.log   -------> print entire file
awk '{print $1}' errors_only.log  -------> print first field of each line
awk '{print $2}' errors_only.log  -------> print second field of each line
awk '{print $1,$3}' errors_only.log  -------> print first and third fields of each line in emp.txt
awk '{print $NF}' errors_only.log  -------> print last field of each line
awk '{print NR $0}' errors_only.log  -------> print line number followed by the entire line
awk 'NR==2, NR==5 {print $5}' errors_only.log  -------> print the 5th field of lines 2 to 5
awk 'NR==2, NR==5 {print NR $5}' errors_only.log    -------> print line number followed by the 5th field of lines 2 to 5
awk 'NR==2, NR==5 {print NR $0}' errors_only.log  -------> print line number followed by the entire line for lines 2 to 5
awk 'NR==2, NR==5 {print $0}' errors_only.log  -------> print the entire line for lines 2 to 5

-------------------------------------------------------------------

awk -F 'OrderID: ' '/ERROR/ {print $2}' errors_only.log > failed_orders.txt -------> extract OrderID from lines containing "ERROR" and save to failed_orders.txt

-F 'OrderID: ' : This option tells awk to use "OrderID: " as the field separator. It splits each line into fields based on this string.
/ERROR/ : This pattern matches lines that contain the word "ERROR". Only those lines will be processed.
{print $2} : This action tells awk to print the second field (the part after    "OrderID: ") for each line that matches the pattern. This will give us just the OrderID numbers.