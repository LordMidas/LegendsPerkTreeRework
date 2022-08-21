BBDir="${1-"c:\\Steam\\steamapps\\common\\Battle Brothers\\data"}"
RepoDir="${2-"battlebrothers"}"

rm -rf  "$BBDir\\brushes" "$BBDir\\gfx" "$BBDir\\preload" "$BBDir\\scripts" "$BBDir\\sounds" "$BBDir\\ui"

function checkForCompileError() {
code=0
while read -r line; do
    if [[ $line == *" error"* ]]; then
        #echo "$line"
        code=1
    fi
done <<< "$1"
if [ $code == 1 ]
then
    return 1
else
    return 0
fi
}

function handleExit() {
    # Get exit code of the previous command, instead of echo
    exitCode=$?
    if [ $exitCode -ne "0" ]
    then
        echo "Failed to build PTR!"
        exit 1
    fi
}

./build_brushes.sh "$BBDir" "$RepoDir"
handleExit

echo "Copying sounds to $BBDir\\sounds ..."
cp -R sounds/. "$BBDir\\sounds"
handleExit
echo "Copying gfx to $BBDir\\gfx ..."
cp -R gfx/. "$BBDir\\gfx"
rm -rf "$BBDir\\gfx\\ptr_mod"
handleExit

# echo "Compiling all nut files ..."
# cd ../bin
# o=$(./masscompile.bat "$BBDir\\scripts")
# cd ../"$RepoDir"

echo "Zipping mod ..."
rm -rf "$BBDir\\mod_ptr.zip"
"C:\Program Files\7-Zip\7z.exe" a "$BBDir\\mod_ptr.zip" "$BBDir\\brushes" "$BBDir\\gfx" "scripts" "$BBDir\\sounds" "ui" "Changelog.txt"
echo "Cleaning up ..."
rm -rf  "$BBDir\\brushes" "$BBDir\\gfx" "$BBDir\\sounds" "$BBDir\\ui"
mkdir -p "$BBDir\\gfx\\fonts"
cp -R ../fonts "$BBDir\\gfx"

checkForCompileError "$o"
resp="$?"
echo $resp
if [ $resp -ne "0" ]
then
    echo "Failed to build PTR!"
    exit 1
else
    echo "Success!"
    exit 0
fi
