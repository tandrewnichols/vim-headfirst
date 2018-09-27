# Vim-Headfirst

Commands to quickly open sibling files in vim.

## Overview

This plugin is a small wrapper around `:e`, `:sp`, `:vsp`, and `:tabe` for editing sibling files. That is, it's comparable to typing `:e %:h/<Tab>`, but it also let's you supply multiple files to open.

## Installation

If you don't have a preferred installation method, I really like vim-plug and recommend it.

#### Manual

Clone this repository and copy the files in plugin/, autoload/, and doc/ to their respective directories in your vimfiles, or copy the text from the github repository into new files in those directories. Make sure to run `:helptags`.

#### Plug (https://github.com/junegunn/vim-plug)

Add the following to your vimrc, or something sourced therein:

```vim
Plug 'tandrewnichols/vim-headfirst'
```

Then install via `:PlugInstall`

#### Vundle (https://github.com/gmarik/Vundle.vim)

Add the following to your vimrc, or something sourced therein:

```vim
Plugin 'tandrewnichols/vim-headfirst'
```

Then install via `:BundleInstall`

#### NeoBundle (https://github.com/Shougo/neobundle.vim)

Add the following to your vimrc, or something sourced therein:

```vim
NeoBundle 'tandrewnichols/vim-headfirst'
```

Then install via `:BundleInstall`

#### Pathogen (https://github.com/tpope/vim-pathogen)

```sh
git clone https://github.com/tandrewnichols/vim-headfirst.git ~/.vim/bundle/vim-headfirst
```

## Usage

Using the following commands to edit sibling files in the corresponding windows. Tab completion works as normal.

### :He/:Hedit

Edit a sibling file in the current window.

```vim
:He foo.vim
```

### :Hsp/:Hsplit

Edit a sibling file in a split.

```vim
" All these commands accept multiple sibling files, although it may not make sense to ":edit"
" multiple files at the same time. It's basically like preloading the additional ones.
:Hsp foo.vim bar.vim
```

### :Hvsp/:Hvsplit

Edit a sibling file in a vertical split.

```vim
:Hvsp foo.vim
```

### :Htabe/:Htabedit

Edit a sibling file in a new tab.

```vim
:Htabe foo.vim bar.vim baz.vim
```

## Contributing

I always try to be open to suggestions, but I do still have opinions about what this should and should not be so . . . it never hurts to ask before investing a lot of time on a patch.

## License

See [LICENSE](./LICENSE)
