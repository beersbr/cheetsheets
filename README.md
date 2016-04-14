# Cheet Sheet !

#### Tools
| Name | Description | info | 
|------|-----|----|
| Homebrew | application manager akin to yum | http://brew.sh/ |
| Skitch | screen shotting tool | https://evernote.com/skitch/ |
| Iterm3 | terminal replacement | https://www.iterm2.com |
| Dash | Documentation withouth the internet | https://kapeli.com/dash |

#### Common Shortcuts

| domain | key combination | description | example |
|--------|-----------------|-------------|---------|
| OSX |  |  | |
| |  `cmd + space` | open spotlight search | |
| |  `cmd + tab` | swap between applications | |
| |  `cmd + `` | swap between application windows | tab through mutliple finder windows |
| |  `cmd + ,` | open preferences window in almost any application | |
| |  `cmd + w` | close window | will close chrome tab |
| |  `cmd + t` | create new tab in alot of applications | this works in finder |
| | `ctrl + t` | swap two characters' positions | at => ta if cursor is in between them. works in terminal. |
| | `option + [left arrow, right arrow]` | skip cursor by word |  |
| | `cmd + [left arrow, right arrow]` | to beginning and end of line |  |
| | `cmd + [up arrow, down arrow]` | to beginning and end of contextual file (or page) |  |
| | `ctrl + [up arrow, down arrow]` | move between spaces |  |
| | `cmd + enter` | move current window to fullscreen space |  |
| Finder | | | |
| | `cmd + shift + g` | Open path search box to jump to directory. Can be tab searched. | |
| Terminal (iTerm) | | | |
| | `ctrl + a` | Go to beginning of line | |
| | `ctrl + e` | Go to end of line | |
| | `ctrl + w` | deleted to beggining of previous word | |
| | `ctrl + u` | deleted to beggining of line | |
| | `ctrl + k` | deleted to end of line | |
| | `ctrl + d` | split window vertically | |
| | `ctrl + shift + d` | split window horizontally | |
| | `open <ANYTHING>` | open, almost, anything with the approprate application | `open .` open finder window in currend *pwd* |
| Browser | | | |
| | `cmd + [left arrow, right arrow]` | back and forward through history |  |

#### Sublime Text 3

Sublime text is a lot more fun to use with packages. First use the st console to install the package manager: 
* https://packagecontrol.io/installation

I have included my preferences and user-keymap. You can find both by looking in the preferences menu (on OSX). Some of the hotkeys use these files. 

If you would to create custom key bindings every function is listed here:
* http://docs.sublimetext.info/en/latest/reference/commands.html
* https://www.sublimetext.com/docs/commands

I use several snippets for common things I type. A simple example would be `todo` and `note`. I have included both snippets in the repository. You can update them to include your name and put them in your `~Library/Application\ Support/Sublime\ Text\ 3/Packages/User/` directory. Then typing the snippet name and pressing tab will populate the typed text with the snippet. More documentation can be found here:
* http://sublimetext.info/docs/en/extensibility/snippets.html

Building with sublime text is easy enough with custom configs. I will update the repo with my build system. For now you can find more info on that there: 
* http://docs.sublimetext.info/en/latest/reference/build_systems.html

These are just common commands that I use. Here is another list:
* http://docs.sublimetext.info/en/latest/reference/keyboard_shortcuts_osx.html

\* adding **shift** to the commands reverse this command.

\*\* holding **shift** will select the from cursor start to end of command

| command | info | 
|------|-----|
| `ctrl + `` | open python st console |
| `cmd + shift + p` | open command window. you can do all sorts of things with this. start typing to find out |
| `option + cmd + p` | show file type in status bar. (lower left. Django Python shows `python.source.django`. This is important for snippets) |
| `cmd + b` | build current file with current build system |
| `cmd + /` | toggle comment of line or selection |
| `cmd + shift + [` | move to tab on left |
| `cmd + shift + ]` | move to tab on right |
| `cmd + d` | select word and matching words (will create multiple cursors) |
| `cmd + shift + d` | duplicate selection or line if no selection |
| * `cmd + g` | jump to next matching selection |
| `ctrl + cmd + g` | find all of current selection |
| * `cmd + enter` | add line below cursor and move cursor there (without mutating current line) |
| ** `option + [left arrow, right arrow]` | skip cursor by word |
| ** `option + ctrl + [left arrow, right arrow]` | skip cursor by word symbol (will move by camel caps and underscors) |
| `cmd + t` | open fuzzy file finder |
| `cmd + r` | open fuzzy symbol finder (within current file) |
| `cmd + shift + r` | open fuzzy symbol finder (within current project) |
| `ctrl + g` | goto line |
| `cmd + l` | select entire line |
| `cmd + [up arrow, down arrow]` | move cursor to beginning and end of file |
| `ctrl + m` | move to beginning and end of current brackets scope |
| `cmd + f` | open find window for current file. Press `enter` to move to found ngram. Press `shift + enter` to move backwards through them. Press `esc` to get rid of the window if it is open.  |
| `ctrl + shift + f` | open find window for project. This will open a new tab with the findings |
| `ctrl + option + [up arrow, down arrow]` | move canvas up and down by a single line |
| `cmd + shift + l` | create multiple cursors at the end of each line of current selection |
| `cmd + [` | unindent selection or line |
| `cmd + ]` | indent selection or line |
| `cmd + k, cmd + o` | clear bookmarks |
| `cmd + k, cmd + b` | toggle bookmark |
| `cmd + k, cmd + n` | goto next bookmark |
| `cmd + k, cmd + shift + n` | goto previous bookmark |

#### Sublime Text 3 packages

Most of these you can find by opening the command window (`cmd + shift + p`) and typing `install` then selecting the install package option. A list display will open and you can type to find a package then pressing enter will install that package.

This will get updated as I remember to add them.

| package | link | info |
| --- | --- | --- |
| TodoReview | https://github.com/jonathandelgado/SublimeTodoReview | Shows all todos in current file and project in a nice list with line numbers |
| Numix Theme | https://github.com/nauzethc/sublime-text-numix | A really nice looking theme with hard edges. ( You can see the theme seeting in the preferences file included in the repository) |
| VAlign | https://github.com/jarod2d/sublime_valign | allows you to align text by symbols (line up sveral lines by equal signs by using `cmd + \`)  |
