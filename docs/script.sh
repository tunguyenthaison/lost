# check if docs/ is empty
if [ -z "$(ls -A docs/)" ]; then
   echo "The docs/ folder is empty"
else
   echo "The docs/ folder is not empty"
   echo "Remove All Contents of docs/"
   # remove contents
   rm -r docs/*
fi

echo "Copy Contents from _src/ to /docs/"
cp -a _site/. docs/