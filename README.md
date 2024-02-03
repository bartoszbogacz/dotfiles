# Dotfiles

# Setup Windows

```cmd
copy /y gitconfig-windows %USERPROFILE%\.gitconfig
copy /y vimrc %USERPROFILE%\_vimrc
copy /y gvimrc-windows %USERPROFILE%\_gvimrc
```

# Setup Linux

```cmd
scp vimrc hevs2:.vimrc
scp gvimrc-linux hevs2:.gvimrc
scp tmux.conf hevs2:.tmux.conf
scp inputrc hevs2:.inputrc
```

# Old

## VIM

Index of all commands

    :viusage

Cheat Sheet <https://michaelgoerz.net/refcards/vimqrc.pdf>

### Motion

Move left, move down, move up, move right

    h j k l

Word forward, word backward, WORD forward, WORD backward

    w b W B

To character a, forward, backward, till, backward till, repeat

    fa Fa ta Ta ;

First column, First character, last character

    0 ^ $

Next paragraph, prev paragraph, next sentence, prev sentence

    { } ( )

Next search pattern, previous search pattern

    gn gN

## Visual

Enter visual mode with `v`. Select with motions.

Select paragraph

    v{

## Movement

First line, last line, 35th line

    gg G 35G

Insert before, after, start of line, end of line

    i a I A

Search pattern forward, backward

    /pattern ?pattern

Next in search direction, previous

    n N

Last jump origin, last change, go to older change, newer change

    '' '. g; g,

### Insert Mode

Indent, un-indent

    SHIFT-t SHIFT-d

### Buffers

List buffers

    :ls

Alternate buffer

    CTRL-^

### Terminal

Open terminal, in vertical split

    :terminal
    :vertical terminal

Terminal normal mode (allows copy), terminal insert mode, move to other window

    CTRL-W N
    a
    CTRL-W CTRL-W

Paste register {reg} in terminal insert mode

    CTRL-W " {reg}

### Assorted

In commandline mode, insert word under cursor with `c_CTRL-R c_CTRL-W`.

In includes and files, show first occurence with `[i`, show all with `[I`,
jump to first with `[_CTRL-I` and to the second by `2[_CTRL-I`.

Enable ctags usage with `set tags=tags` and refresh with `ctags -R *`.
For tag under cursor, jump to definition `CTRL-]`, show usages `g]`
or go back with `CTRL-T`. Show stack of visited `:tags`.


:enew | r!git blame #

:bufdo e

i_CTRL-N
i_CTRL-X CTRL-N
i_CTRL-X CTRL-L

:g/Error
:v/Error

:r!ssh dev cat grafana/build/Build_Atom_History/dashboard.json

qa80|F iENTER> ESCq@a@@


Word under cursor in commandline mode   c_CTRL-R CTRL-W

Help for normal mode key
Help for insert mode key
Help for option
Help for setting?

                                        CTRL-X CTRL-T
                                        CTRL-Y / CTRL-E

Show topmost line containing keyword    TODO
Show all lines containing keyword       TODO
Jump to n-th line containing keyword    TODO

Show all lines containing pattern       :isearch /pattern/

Write vim register 0 to clipboard       :!tmux set-buffer <C-r>0
Write vim selection to clipboard        :<'>'w !tmux load-buffer -
Read tmux clipboard into buffer         :r !tmux show-buffer
Read clipboard from other host          :r !ssh dev tmux show-buffer

Enter normal mode for one command       i_CTRL-O

Show all lines in includes for pattern  :isearch /pattern/
Show all lines in includes for keyword  [I
Jump to 2nd line in includes keyword    2[ CTRL-I

Jump to first definition of tag         :tag /pattern/
Select tag matching pattern             :tselect /pattern/
Select tag for word under cursor        g]
Go to previous tag in the tag stack     CTRL-T

Search all buffers for pattern          :bufdo vimgrepadd /pattern/ %

Search last pattern in git repository   :cexpr system('git grep -n /')
Populate quickfix with filenames        :cexpr system('git ls-files | sed s/$/:1:_/')
Buffer contents to quickfix list        :cexpr getline(1, '$')
Clear quickfix list (set to [])         :cexpr []

Run _lines_ in shell and sub. output    :<',>'!bash
Declare current as scratch buffer       :setlocal noswapfile | setlocal buftype=nofile | setlocal bufhidden=hide

Series of articles on vim usage         https://thevaluable.dev/vim-adept/

## TMUX

Attach or create a new session          tmux new -As dev

Move pane into its own window
Split and move some pane into space

Move window left                        tmux swap-window -t -1
Open history of last pane in vim        tmux capture-pane -t ":.{last}" -pS - | vim -

## SSH


`subsystem request failed on channel 0`

Use -O to force old compatibility sftp protocol

    `scp -p -O -P ...`

for servers that do not understand the new one.

## VIFM

Help Topics: Command macros, Menu and dialogs
Rename file                             cw
Move one directory up                   gh
Show file in pane in less-like          e

Set directory of other pane to current  :sync

Diff file and other and show in Menu    :!diff -u %c %C %M
Add file under cursor (any pany)        :!git add %c
Find pattern in git repository          :!git grep -n BuildTask %M
Re-open menu with results               :copen

Copy file path to tmux clipboard        :!tmux set-buffer %d/%c
Open file in vim in (right) pane 2      :!tmux send-keys -t2 :e%d/%c Enter

:help
:copen
/sorting keys
/Command macros
/Menus and dialogs
:set viewcolumns=-{name},{perms},{mtime},{size}

## BASH


Bash while loop                        while true; do hm init -fb Optimized 2>&1 | grep Initialization; done

Bash stderr redirect must come after file redirect

    python suiteSmokeIt.py > log.txt 2>&1

dd may be used to count bytes

    grep "testgmock" build.ninja | dd > /dev/null

Or as sink to use std in as file argument

    echo "Hello" | cat <(dd)

Bash heredoc

    cat <<- EOF >> .bashrc # HereDoc
        export EDITOR=/usr/bin/vim
    EOF

See also help topics in the "Bash Reference Manual" in
"8 Command Line Editing".

## OPENBOX

Switch desktops                        Ctrl-Alt-Arrow, Ctrl-F1, Ctrl-F2
Switch windows directionally           Win-Shift-Arrow

Configuration and Keybindings          ~/.config/openbox/rc.xml
Menu                                   ~/.config/openbox/menu.xml

[openbox-actions]: http://openbox.org/wiki/Help:Actions

