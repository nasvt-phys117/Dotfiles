# Dotfiles

## What's in here

- `vimrc` / my vim setup. Nothing special but it works just fine.
- LaTeX snippets for physics (UltiSnips). This started as a replacement for the "[Physics](https://ctan.org/pkg/physics?lang=en)" package. The functionality that I currently need is (mostly) in there. I need to find a way to work with indices.
- simple script to install the above (`install.sh`)
- A script for my sister's IdeaPad. It enables conservation mode and displays a notification if you ask for it. I made it in 5 minutes so it needs to be tidier and add better "features".

## Conservation mode

A simple script to manage conservation mode on IdeaPad laptops.

To enable run

```
sudo ./conservation_mode -e
```

To disable,

```
sudo ./conservation_mode -d
```

For status and notification,

```
./conservation_mode -s
```

Last one **cannot** be run with `sudo`. Make sure to clear the notifications afterwards.

## ToDo!

- [ ] rename the repo
- [ ] add i3 setup from ThinkPad (whenever ready)
