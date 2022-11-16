% GIT-UNCOMMIT(1) | Git Plugin Manual

NAME
====
**git-uncommit** - Undo the last commit and add, keeping the changes so they can be stashed.

SYNOPSIS
========
| **git-uncommit**

DESCRIPTION
===========
Undoes the last `commit` and `add`. This way, you can potentially stash away changes.

EXAMPLE
=======

```bash
git add -A
git commit -m 'I did not really want to commit to main'

git uncommit
git stash
git checkout -b dev
git add -A
git commit -m "I meant to commit on dev"
```

Options
=======
None.

AUTHOR
======
Arthur Lui

SEE ALSO
========
**git-commit(1)**
