#!/bind/bash
set -u #throws error for undefined var
clear
read -p "Enter cost center code:" cc_code
echo
echo "Cost center code is: $[cc_code:=hfx123]"
echo
echo "This is the last line." $non_existent_variable
