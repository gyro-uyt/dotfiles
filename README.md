# My Arch Linux Dotfiles

Greetings, fellow traveler of the command line. Welcome to my personal collection of configuration files, my digital sanctum where I forge my development environment. This repository contains the essence of my Arch Linux setup, meticulously crafted for productivity and aesthetics.

> **Note:** These dotfiles are tailored to my personal workflow and setup. Feel free to explore, get inspired, and adapt them to your own needs.

## Neofetch

```
                     ./o.
                   ./sssso-
                 `:osssssss+-
               `:+sssssssssso/.                     USER: gyro@zeppeli
             `-/ossssssssssssso/.          ┌───────────────────────────────┐
           `-/+sssssssssssssssso+:`        ​ ​ OS: EndeavourOS Linux x86_64
         `-:/+sssssssssssssssssso+/.       ​ ​ Host: Final Boss
       `.://osssssssssssssssssssso++-      ​ ​ Kernel: 6.18.4-arch1-1
      .://+ssssssssssssssssssssssso++:     ​ ​ Uptime: 8 hours, 34 mins
    .:///ossssssssssssssssssssssssso++:    ​ ​ Packages: 1690 (pacman), 13 (flatpak)
  `:////ssssssssssssssssssssssssssso+++.   ​ ​ Shell: bash 5.3.9
`-////+ssssssssssssssssssssssssssso++++-   ​ ​ DE: Hyprland
 `..-+oosssssssssssssssssssssssso+++++/`   ​ ​ WM: sway
   ./++++++++++++++++++++++++++++++/:.     ​ ​ Memory: 7854MiB / 15687MiB
  `:::::::::::::::::::::::::------``       └───────────────────────────────┘

                                                    ⬤ ⬤ ⬤ ⬤ ⬤ ⬤ ⬤ ⬤
```

## The Setup

This configuration is built around a lightweight and modern set of tools, primarily for a Wayland-based environment.

- **OS**: [Arch Linux](https://archlinux.org/)
- **WM**: [Hyprland](https://hyprland.org/) (A dynamic tiling Wayland compositor)
- **Shell**: [Fish Shell](https://fishshell.com/) & Bash
- **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/)
- **Prompt**: [Starship](https://starship.rs/)
- **Fetch**: [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- **Launcher**: [Rofi](https://github.com/davatorium/rofi)
- **Bar**: [Waybar](https://github.com/Alexays/Waybar)
- **Editor**: [Vim](https://www.vim.org/)

## A Glimpse into the Void

![Desktop Screenshot](assets/image.png)

## Installation

These dotfiles can be managed in various ways. A common method is using a bare git repository.

1.  Clone the repository:
    `bash
git clone --bare https://github.com/username/repo.git $HOME/.dotfiles
    `
2.  Define an alias for interacting with the dotfiles repository. Add this to your `.bashrc` or `.zshrc`:
    `bash
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    `
3.  Checkout the content:
    `bash
config checkout
    `
    _Note: If you have existing dotfiles, this might fail. You can back them up and remove them, then run the command again._
4.  Set the `showUntrackedFiles` option to `no`:
    `bash
config config --local status.showUntrackedFiles no
    `

---

_Crafted with and a lot of keystrokes._
