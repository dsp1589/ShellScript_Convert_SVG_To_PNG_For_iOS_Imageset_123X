for f in /Users/dhana/Downloads/197373-countrys-flags/svg/* ;do
echo "$f"
filename="${f##*/}"
echo $filename
filee="${filename%.*}"
echo $filee
 `mkdir -p "flags/$filee"."imageset"`

/Applications/Inkscape.app/Contents/Resources/script --file="$f"  --export-png="$PWD/flags/$filee.imageset/$filee@1x.png" -w70 -h70
/Applications/Inkscape.app/Contents/Resources/script --file="$f"  --export-png="$PWD/flags/$filee.imageset/$filee@2x.png" -w140 -h140
/Applications/Inkscape.app/Contents/Resources/script --file="$f"  --export-png="$PWD/flags/$filee.imageset/$filee@3x.png" -w210 -h210

echo "{\"images\":[{\"idiom\":\"universal\",\"filename\":\"$filee.png\",\"scale\":\"1x\"},{\"idiom\":\"universal\",\"scale\":\"2x\"},{\"idiom\":\"universal\",\"scale\":\"3x\"}],\"info\":{\"version\":1,\"author\":\"xcode\"}}" > ./flags/$filee.imageset/Contents.json
done
