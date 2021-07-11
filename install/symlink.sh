files=(
    '.aliases'
    '.profile'
    '.zshrc'
    '.gitconfig'
)

# remove the files that already exists

for FILE in ${files[@]}
do
    if [ -f ~/${FILE} ]; then
        echo "rm ~/${FILE}"
        rm ~/${FILE}
    fi
done

for FILE in ${files[@]}
do 
    ln -s ~/dotfiles/${FILE} ~/${FILE}
done