i=11; temp=$(mktemp -p .); for file in *.JPG
do
mv "$file" $temp;
mv $temp $(printf "photos%0.3d.jpeg" $i)
i=$((i + 1))
done
