BBDir="${1-"c:\\Steam\\steamapps\\common\\Battle Brothers\\data"}"
RepoDir="${2-"battlebrothers"}"

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

# echo "Copying sounds to $BBDir\\sounds ..."
# cp -R sounds/. "$BBDir\\sounds"
# handleExit
echo "Copying gfx to $BBDir\\gfx ..."
cp -R gfx/. "$BBDir\\gfx"
rm -rf "$BBDir\\gfx\\ptr_mod"
handleExit
echo "Copying mod script files to $BBDir\\scripts ..."
# FILES=$(git diff --name-only `git merge-base origin/master HEAD` | grep '.nut\|.txt\|.css\|.js\|.html')
FILES=$(git ls-tree -r --name-only HEAD | grep '.nut\|.txt\|.css\|.js\|.html')
while read -r line; do
    if [[ "$line" == *.sh ]]; then
        :
    elif [[ "$line" == *.md ]]; then
        :
    elif [[ "$line" == *.py ]]; then
        :
    elif [[ "$line" == unpacked* ]]; then
        :
    elif [[ "$line" == gfx/*.png ]]; then
        :
    elif [[ "$line" == gfx/*.jpg ]]; then
        :
    elif [[ "$line" == sounds/*.wav ]]; then
        :
    elif [[ "$line" == *.cnut ]]; then
        :
    elif [ "$line" == ".gitignore" ]; then
        :
    elif [ "$line" == ".editorconfig" ]; then
        :    
    elif [ "$line" == "Changelog.txt" ]; then
        cp "$line" "$BBDir\\$line"
        handleExit            
    else
        #echo "$line"
        path=$( echo ${line%/*} )
        mkdir -p "$BBDir\\$path"
        handleExit
        cp "$line" "$BBDir\\$line"
        handleExit
    fi
done <<< "$FILES"

# echo "Compiling all nut files ..."
# cd ../bin
# o=$(./masscompile.bat "$BBDir\\scripts")
# cd ../"$RepoDir"

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

