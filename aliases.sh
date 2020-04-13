# NPM aliases
alias ni="npm i"
alias nid="npm i -D"
alias nig="npm i -g"

# Yarn aliases
alias ya="yarn add"
alias yad="yarn add -D"
alias yi="yarn init"
alias yif="yarn init -y"
alias yc="yarn commit"
alias yr="yarn run"
alias yrm="yarn remove"
alias yb="yarn build"
alias ybw="yarn build:watch"
alias yw="yarn workspace"

itf () {
    TYPESSTRING=()
    for var in "$@"
    do
        TYPESTRING="@types/"
        TYPESTRING+="$var"

        TYPESSTRING+=("$TYPESTRING")
    done

    if [ -f "package-lock.json" ]
    then
        npm i -D $TYPESSTRING[@]
    else
        yarn add -D $TYPESSTRING[@]    
    fi
}
