Expected="Hello, World!"
Output=$(node -e "console.log(require('./src/app.')('test'))")
if [ "$Output" = "$Expected" ]; then
  echo "Test passed!"
  exit 0
else
  echo "Test failed. Expected '$Expected' but got '$Output'."
  exit 1
fi