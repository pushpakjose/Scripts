# !/bin/bash 
  
# Take user Input 
echo "Enter Two numbers : "
read a 
read b 
  
# Input type of operation 
echo "Enter Choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch 
  
# Switch Case to perform 
# calulator operations 
case $ch in
  1)res=`echo $a + $b | bc` 
    echo -e "Result : \e[34m $res" ;;   
  2)res=`echo $a - $b | bc` 
  echo -e "Result : \e[32m $res" ;; 
    3)res=`echo $a \* $b | bc` 
    echo -e "Result : \e[31m $res"
  ;; 
  4)res=`echo "scale=2; $a / $b" | bc` 
  echo -e "Result :  \033[35m $res"
  ;; 
  esac
