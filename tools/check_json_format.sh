file=$1
before=$(cat "$file")
python3 -m json.tool --indent 2 "$file" > temp_file
after=$(cat "temp_file")
if [ "$before" = "$after" ]; then
    echo "JSON file remains unchanged."
else
    echo "JSON file has been formatted."
fi
