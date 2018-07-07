More will come later.

- [disclosure](#warning)
- [how to use](#usage)
- [how to setup](#install)
- [troubleshooting](#troubleshooting)
- [toolkit description](#the-toolkit)

# Warning

This tool does not intend to make what you should do by yourself. It rathers
provides tools to automatize repetitive tasks and let you save time to solve
higher problems.

The tool also demonstrate what could be done with `make` (`man 1 make`)
and shows some `Makefile` recipes and tricks.

First read the scripts if you want to keep your freedom to think and to
understand.  I give no warranty you will understand what's hapenning here but
it's your job to get that.  Further, I will not be responsible in case you miss
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

# The toolkit

- `mtemplate <ex##>/<ft_name>` creates the `Makefile` and the `main.c` that
  corresponds to exercice `<ex##>` and function`<ft_name>`.
  Both are generated from `Makefile.template` and `main.c.template`
  e.g.
  ```
  ./mtemplate ex00/ft_ft
  ```
- `setdeps <ft_name> [...]` configures the required allowed functions
  `<ft_name> [...]` by setting `DEPS` variables in all the Makefiles.
  e.g.
  ```
  ./setdeps ft_putchar
  ```
- `configure` runs `mtemplate` for every commited solution.

# Usage

1. run `install.sh` in the repo with the solutions
2. either run `mtemplate` or `configure` (see [toolkit](#the-toolkit))
3. solve dependencies
	1. run `setdeps`
	2. compile dependencies (some are available in `<thisrepo-root>/deps`), e.g.,
	   ```
	   gcc -c <thisrepo-root>/deps/<ft_name>.c
	   ```
3. run `make` (recipes are `norme`, `test`)


# Troubleshooting

**broken dependency**

coming soon .. (you could post a issue)

**tests**

see [roadmap section](#roadmap)
