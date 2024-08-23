# goalt.nvim

This is a very basic neovim plugin for Go developers.
It adds the `:GoAlt` command, which allows you to switch from
file (something.go) to test file (something_test.go), and back.

After years using [vim-go](https://github.com/fatih/vim-go), and
slowly replacing it, this was the last bit I was missing.
(if you are using vim-go there's no need for this plugin!)

## Installation

Use your favorite plugin manager.

```lua
... all you plugin management things
{
    'tscolari/goalt.nvim',
}
...
```

## Usage

1. `:GoAlt` from file.go will open file_test.go
2. `:GoAlt` from file_test.go will open file.go

I recommend binding this to a shortcut, I use

```
vim.keymap.set('n', '<leader>.', ':GoAlt<cr>')
```
