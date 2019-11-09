# stan-vim

A Vim plugin for the [Stan probabilistic programming
language](https://mc-stan.org/).

## Table of Contents

- [Features](#features)
- [Installation](#installation)
  - [Vundle, NeoBundle and VimPlug](#vundle-neobundle-and-vimplug)
  - [Pathogen](#pathogen)
  - [Manual Installation](#manual-installation)
- [Documentation](#documentation)
- [License](#license)

## Features

1. Syntax highlighting
1. Automatic indentation
1. Code folding

## Installation

### Vundle, NeoBundle and VimPlug

_For Vundle users,_ place this in your `.vimrc`:

```
Plugin 'eigenfoo/stan-vim'
```

...then run the following in Vim:

```
:source %
:PluginInstall
```

_For Vundle versions < 0.10.2,_ replace `Plugin` with `Bundle` above.

_For NeoBundle users,_ replace `Plugin` with `NeoBundle` above.

_For VimPlug users,_ replace `Plugin` with `Plug` above.

### Pathogen

Run the following from the terminal:

```bash
cd ~/.vim/bundle
git clone https://github.com/eigenfoo/stan-vim
```

### Manual Installation

Copy all files into your `~/.vim` directory.

## Documentation

From Vim:

```
:help stan
```

Alternatively, [read the documentation page on
GitHub](https://github.com/eigenfoo/stan-vim/blob/master/doc/stan.txt).

## License

`stan-vim` is distributed under the MIT license. [See the license file on
GitHub](https://github.com/eigenfoo/stan-vim/blob/master/LICENSE).
