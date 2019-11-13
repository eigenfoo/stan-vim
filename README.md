# stan-vim

A Vim plugin for the [Stan probabilistic programming
language](https://mc-stan.org/).

<p align="center">
  <a href="https://raw.github.com/eigenfoo/stan-vim/master/screenshots/screenshot0.png"><img src="https://raw.github.com/eigenfoo/stan-vim/master/screenshots/screenshot0.png" alt="Screenshot of stan-vim syntax highlighting"></a>
</p>

## Table of Contents

- [Features](#features)
- [Installation](#installation)
  - [Vundle, NeoBundle and VimPlug](#vundle-neobundle-and-vimplug)
  - [Pathogen](#pathogen)
  - [Manual Installation](#manual-installation)
- [Documentation](#documentation)
- [Configuration](#configuration)
- [Additional Screenshots](#additional-screenshots)
- [License](#license)

## Features

1. Syntax highlighting of Stan types, keywords and built-in functions.
1. Automatic indentation consistent the recommended Stan code style.
1. Folding via code indentation.
1. Autocompletion of Stan keywords and functions via the Vim built-in
   `omnifunc`.
1. Keybinding to compile the current Stan file.

## Installation

### Vundle, NeoBundle and VimPlug

For Vundle users, place this in your `.vimrc`:

```
Plugin 'eigenfoo/stan-vim'
```

...then run the following in Vim:

```
:source %
:PluginInstall
```

For Vundle versions < 0.10.2, replace `Plugin` with `Bundle` above.

For NeoBundle users, replace `Plugin` with `NeoBundle` above.

For VimPlug users, replace `Plugin` with `Plug` above.

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
:help stan-features
```

Alternatively, [read the documentation page on
GitHub](https://github.com/eigenfoo/stan-vim/blob/master/doc/stan.txt).

## Configuration

The only variable that may be configured is `g:cmdstan_path` (by default, it is
`~/cmdstan/`). Once this is correctly configured, the keybinding
`<localleader>c` will compile the current Stan file.

## Additional Screenshots

<p align="center">
  <a href="https://raw.github.com/eigenfoo/stan-vim/master/screenshots/screenshot1.png"><img src="https://raw.github.com/eigenfoo/stan-vim/master/screenshots/screenshot1.png" alt="Screenshot of stan-vim syntax highlighting"></a>
</p>

<p align="center">
  <a href="https://raw.github.com/eigenfoo/stan-vim/master/screenshots/screenshot2.png"><img src="https://raw.github.com/eigenfoo/stan-vim/master/screenshots/screenshot2.png" alt="Screenshot of stan-vim syntax highlighting"></a>
</p>

## License

`stan-vim` is distributed under the MIT license. [See the license file on
GitHub](https://github.com/eigenfoo/stan-vim/blob/master/LICENSE).
