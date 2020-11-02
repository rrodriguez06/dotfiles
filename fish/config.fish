alias c="clear"

alias spt_int=~/.script/launch_spt

function project_finder

    cd $HOME
    set -l var (fd -t d | fzf --preview="tree -L 2 {}" --bind="space:toggle-preview" --preview-window=hidden)
    cd $var
    tree -L 2
end

function repo_finder

    set -l var (curl "https://api.github.com/orgs/EpitechIT2020/repos?access_token=314c418ede9e9ce75af4a18510e6be0fdfe11910" | grep -e 'ssh_url*' | cut -d \" -f 4 | cut -c30- | fzf -m)
    if [ -z "$var" ]
        return
    else
        git clone "git@github.com:EpitechIT2020/$var"
    end
    set -l var2 (echo $var | cut -d "." -f 1)
    set -l var3 (echo $var | cut -d "." -f 2)
    cd $var2.$var3
    tree -L 2
end

bind \cg repo_finder
bind \cf project_finder
