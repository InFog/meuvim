# MeuVim

My config files for Neovim.

"MeuVim" is Portuguese for "MyVim".

My initial idea was to replace NetBeans as my IDE during my daily work as a web developer in 2011. Now I can say I achieved that.

I mostly use PHP, Python, Javascript, CSS and HTML. But not only.

### How to use it

So you want to use my Neovim setup? Ok, do the following:

- Clone this repo: `git clone git@github.com:InFog/meuvim.git ~/.config/nvim/`
- Create the `~/.vimundo` dir for the persistent undo (it's magical, it will allow you to undo stuff when you close and reopen files)
- Install the git submodules: `git submodule init` and `git submodule update` to install `plug`, the plugin manager
- Install the dependencies listed below (_Dependencies_)
- Start vim and run `:PlugInstall` to install the Plugins (Extensions)
  - This currently depends on a couple commands needed for language support:
    - _composer_ for PHP
    - _npm_ for Javascript
    - _go_ for Golang
    - _python_ for Python
- In order to have nice colors on the terminal you need to activate 256 colors:
  - Add `export TERM="xterm-256color"` in your `~/.bashrc` or the `rc` for your terminal
  - Then you need to open a new terminal (or run the rc...)
- All done, enjoy!
- I tested my vimrc with Neovim on Linux and Mac, in a terminal.
- If you want to use these files in Windows or MacVim, then the configuration is up to you, good luck.

### Important tips

- Having a good motivation to learn and use Vim is the key.
- I recommend you read my setup and get inspired to build your own.
- Try to learn only two or three new Vim commands per day. It doesn't seems too much, but by the end of one month you will already know more than 50 commands.
- Learn how to move around with h, j, k and l. It's not mandatory and using the arrows is also ok.

### Dependencies

Only a few dependencies for everything to work fine:

- **exuberant-ctags** for Tagbar.
  - For Debian install `exuberant-ctags`
  - For Fedora install `ctags`
  - For Mac you can try installing `ctags` via `homebrew`.
- To have Python autocomplete your Vim must have the **+python** flag.
  - For Debian just install the package `vim-gnome`.
- `python-git`, for Debian
- If you want the fancy stuff for your status bar you need those fonts: https://github.com/Lokaltog/powerline-fonts/
- `composer` for php
- `npm` for javascript
  - `npm install -g typescript` to have the goodies from ALE.
- `go` for Golang
  - It is good to have `$GOPATH` and `$GOBIN` set up. Also, add `$GOBIN` to your `$PATH`.
- `java` (OpenJDK) and `graphviz` for PlantUML support.
- `python` for Python
- `shellcheck` to have Shell Scripts statically analyzed

### Options

Snippets : In this config there is a snippets plugin for several languages and I added a few options for PHP:

- foreacht<tab>
  - Creates a `foreach` loop for a template
- echot<tab>
  - Creates an `echo` for templates
- ift<tab>
  - Creates an `if` for templates

Explore : to open the file explorer type `,t`

Tagbar : to open the tags list type `,l`

- Some keys for Tagbar:
  - `x` Zoom in/out
  - `<space>` Shows tag prototype
  - `-` Hide the current fold
  - `+` Show the fold under the cursor

### Useful commands

- `%` in command mode navigates to the opening/closing symbol.
  - The **matchit** plugin will do the same for HTML tags and improves the matching for other languages
    It matches even the alternative syntax for `if`, `foreach` and others in `php`.
- `tn` to open a new tab and `tc` or `tq` to close the current tab.
- `,/` to clear the highlight of the current search.
- `,w` to remove trailing spaces.
