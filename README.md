# home

My personal ~~bash~~ zsh ~/home dir configurations

Most of the files in the project are hidden files.

To show hidden files on a Mac use the keyboard shortcut:
`⌘^.`

## Tmux Cheat Sheet

* Split pane horizontally:
  <br>`Prefix` `"`
  
* Split pane vertically:
  <br>`Prefix` `%`
  
* Create new window:
  <br>`Prefix` `c`
  
* Auto arrange panes:
  <br>`Prefix` `space`
  
* Auto re-arrange pane order:
  <br>`Prefix` `ctrl+o`

* Reorder pane down / up:
  <br>`Prefix` `{` / `Prefix` `}`

## Vim Cheat Sheet

* `ZZ` - Save file & exit
* `zz` - Move current line to the middle of the screen
* `zt` - Move current line to the top of the screen
* `zb` - Move current line to the bottom of the screen
* `dd` - Delete current line
* `dw` - Delete word at cursor
* `D`  - Delete from cursor to the end of the line
* `x`  - Delete character at cursor
* `~`  - Toggle case of character under cursor
* `v`  - Visual mode
* `V`  - Line select visual mode
* `^v` - Column select visual mode
* `Vp` - Replace current line with paste buffer
* `cw` - Change word at cursor
* `r`  - Replace character at cursor
* `^a` - Increment number at cursor
* `i`  - Insert mode
* `A`  - Enter insert mode at the end of line
* `O`  - Create a blank line under cursor and enter insert mode

### Column Edit

1. Enter column visual mode with `^v`
1. User arrow keys to select column
1. `I` to enter insert mode
1. Edit and `esc` to exit insert & visual mode and apply changes 

### Find / Replace

* `:%s/<search pattern>/<replacement txt>/g`

### Line Numbers

* `:set nu` - Set line numbers
* `:set rnu` - Set relative line numbers
