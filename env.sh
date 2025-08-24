#!/bin/bash

# Initial setup (must)
sudo pacman -S neovim ghostty hyprland tmux wine --needed --noconfirm

# terminal packages
sudo pacman -S tree fzf ripgrep bluetui man-db --needed --noconfirm

#utility
sudo pacman -S zathura zathura-pdf-mudf --needed --noconfirm

# dev
sudo pacman -S opam --needed --noconfirm
opam init -y
opam install utop dune ocaml-lsp-server ocamlformat ocp-indent

#AUR packages
