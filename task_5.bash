directories=0
subdirectories=0

for entry in *; do
    # Check if entry is a directory and not "." or ".."
    if [ -d "$entry" ] && [ "$entry" != "." ] && [ "$entry" != ".." ]; then
        directories=$((directories + 1))
        # Loop through each entry in the subdirectory
        for subentry in "$entry"/*; do
            # Check if subentry is a directory
            if [ -d "$subentry" ]; then
                subdirectories=$((subdirectories + 1))
            fi
        done
    fi
done

echo "Number of directories: $directories"
echo "Number of subdirectories: $subdirectories"