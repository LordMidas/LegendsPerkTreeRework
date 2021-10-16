BBDir="${1-"c:\\Steam\\steamapps\\common\\Battle Brothers\\data"}"
RepoDir="${2-"battlebrothers"}"


function handleExit() {
    # Get exit code of the previous command, instead of echo
    exitCode=$?
    if [ $exitCode -ne "0" ]
    then
        echo "Failed to build PTR!"
        exit 1
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

declare -a BRUSHES=(
"ptr_mod"
)

mkdir -p brushes

for i in "${BRUSHES[@]}"
do
    echo "Building $i brush..."
    cd ../bin
    brush=${i//[\/]/_}
    o=$(./bbrusher.exe pack --gfxPath "../$RepoDir/" ../$RepoDir/brushes/$brush.brush ../$RepoDir/gfx/$i)
    cd ../"$RepoDir"
    checkForError "$o" "$i"
done

echo "Copying brushes to $BBDir\\brushes ..."
mkdir -p "$BBDir\\brushes"
cp -R brushes/. "$BBDir\\brushes"
handleExit
mkdir -p "$BBDir\\gfx"
cp -R gfx/*.png "$BBDir\\gfx"
handleExit