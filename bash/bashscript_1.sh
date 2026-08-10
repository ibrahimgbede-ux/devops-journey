#/bin/bash

read -p "What is your even number: " number1


read -p "What is your odd number: " number2

addition=$((number1 + number2))
sub=$((number1 - number2))
multi=$((number1 * number2))

echo "$number1 + $number2 = $addition"

echo "$number1 - $number2 = $sub"

echo "$number1 x $number2 = $multi"

if [ $number2 -eq 0 ]; then

  echo "Invalid input; you cannot divide by zero. Try again."
else

   div=$((number1 / number2))

   echo "$number1 ÷ $number2 = $div"
fi
