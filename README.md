More will come later.

- [disclosure](#warning)
- [how to use](#basic-usage)
- [how to setup](#install)

# Warning

This tool does not intend to make what you should. It rathers provides tools to
automatize repetitive tasks and let you savte time to solve higher problems.

The tool also demonstrate what could be done with `make` (`man 1 make`)
and shows some `Makefile` recipes and tricks.

If you want to keep your freedom to think and to understand hence first read
the scripts.  I give no warranty you will understand what's hapenning here but
it's your job to get that.  Further, I will not be responsible if case you miss
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

# Install

1. clone the repo
2. 
  ```
  cd 42.automake
  cp Makefile.template main.c.template mtemplate configure Makefile ..
  cd ..
  ```

# Basic usage

1. edit `SUBDIRS` in `Makefile`
2. either
  - `sh mtemplate exNN/ft_name` to target an exercice, or
  - `sh configure` to target them all

# Troubleshooting

1. solve object files depencies
