# git-uncommit
Undo the last commit and add, keeping the changes so they can be stashed.

# INSTALLATION

To install, execute in a terminal:

```console
make install
```

`make install` should just work on Linux.

If using a Mac, make sure this line exists in your `~/.profile`:
```
export MANPATH="$(manpath):${HOME}/.local/share/man"
```

This script can live in `~/.profile` or `~/.bashrc` for MacOS or Linux:
```
# Path to man pages (if using linux).
if [[ "$OSTYPE" == "darwin"* ]]; then
  export MANPATH="$(manpath):${HOME}/.local/share/man"
else
  echo "Can't auto install on non linux/mac OS."
fi
```


# REQUIREMENTS

- `pandoc`
