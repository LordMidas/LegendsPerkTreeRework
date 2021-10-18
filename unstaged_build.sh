BBDir="${1-"c:\\Steam\\steamapps\\common\\Battle Brothers\\data"}"
RepoDir="${2-"mod_PTR"}"

function checkForCompileError() {
code=0
while read -r line; do
    if [[ $line == *"error"* ]]; then
        echo "$line"
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

function checkForError() {
if [[ $1 == *"ERROR"* ]]; then
    while read -r line; do
        echo "$line"
    done <<< "$1"
    echo "Failed to build PTR brush $2"
    exit 1;
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

function copyBrushes() {
echo "Copying brushes to $BBDir\\brushes ..."
mkdir -p "$BBDir\\brushes"
cp -R brushes/. "$BBDir\\brushes"
handleExit
mkdir -p "$BBDir\\gfx"
cp -R gfx/*.png "$BBDir\\gfx"
handleExit
}

FILES=$(git status -s)
while read -r line; do
    #echo $line
    x=${line:0:1}
    if [ $x == "M" ] || [ $x == "A" ]; then
        if [ $x == "M" ]; then
            xpath=${line:2}
        else
            xpath=${line:3}
        fi

        if [[ "$xpath" == *.sh ]]; then
            :
            #echo "skipping $line"
        elif [[ "$xpath" == gfx/ptr_mod/metadata.xml ]]; then
            echo "Building ptr_mod brush..."
            cd ../bin
            o=$(./bbrusher.exe pack --gfxPath "../$RepoDir/" ../$RepoDir/brushes/ptr_mod.brush ../$RepoDir/gfx/ptr_mod)
            cd ../"$RepoDir"
            checkForError "$o" "$i"
            copyBrushes

        elif [[ "$xpath" == *.py ]]; then
            :
            #echo "skipping $line"
        elif [[ "$xpath" == *.md ]]; then
            :
            #echo "skipping $line"
        elif [[ "$xpath" == *.cnut ]]; then
            :
            #echo "skipping $line"

        else
            echo "$xpath"
            path=$( echo ${xpath%/*} )
            mkdir -p "$BBDir\\$path"
            cp "$xpath" "$BBDir\\$xpath"
        fi
    fi

done <<< "$FILES"

cd ../bin
o=$(./masscompile.bat "$BBDir\\scripts")
cd ../"$RepoDir"
checkForCompileError "$o"
if [ $? -ne "0" ]
then
    echo "Failed to build PTR!"
else
    echo "Success!"
fi

