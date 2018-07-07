More will come later.

- [disclosure](#warning)
- [how to use](#basic-usage)
- [how to setup](#install)
- [troubleshooting](#troubleshooting)

# Warning

This tool does not intend to make what you should do by yourself. It rathers
provides tools to automatize repetitive tasks and let you save time to solve
higher problems.

The tool also demonstrate what could be done with `make` (`man 1 make`)
and shows some `Makefile` recipes and tricks.

First read the scripts if you want to keep your freedom to think and to
understand.  I give no warranty you will understand what's hapenning here but it's your job to get that.  Further, I will not be responsible in case you miss
to get the skills covered by this project.

Finally,  things may change a lot over time.
So stay updated (`man 1 git-pull`) !

# Roadmap

What would come later is a toolkit to package written tests
The tests would be available via `gitsubmodules` (`man 7 gitsubmodules`)
on a distinct repo where the latter toolkit would be available.

Therefore, this repo content will shrink to serve compilation needs only.
Then the `test` submodule will hold the tests.

See [issue #2](https://github.com/malikbenkirane/42.automake/issues/2)

# Scope

tested by me, for me and for day02

# Usage

1. run `install.sh` in your repo
2. either
  - `sh mtemplate exNN/ft_name` to configure an exercice, or
  - `sh configure` to target them all
3. edit `DEPS` line in `Makefile` (e.g. `DEPS := ft_putchar.o`)
4. solve dependencies (e.g. `gcc -c <automake-repo-root>/deps/ft_putchar.c`)
3. run `make` with
  - `test` recipe
  	 compiles, tests if the sources comply to the norm then runs compiled tests
  - `norme` recipe


# Troubleshooting

**broken dependency**

If you get
```
make: *** No rule to make target `<allowed_function>.o', needed by `test'.  Stop.
```
while running `make <recipe>` then you should

**tests**

see [roadmap section](#roadmap)
