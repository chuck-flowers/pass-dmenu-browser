# pass-dmenu-browser

A CLI utility for browsing and picking fields from the files managed by `pass`.

## Installation

The following are methods for installing this application:

### From Source

It is very easy to install this application from source.

#### Dependencies

The following must be installed on your system before installing from source

* Build Dependencies
	* make
	* shellcheck
* Application Dependencies
	* dmenu
	* find
	* grep
	* pass
	* sed
	* xclip

Run the following commands to install the application to `/usr/local`

```bash
make all
make install
```

If you wish to install the application only for the current user, run the
following commands instead.

**NOTE:** This assumes that the path `$HOME/.local/bin` is referenced in your
`PATH` variable.

```bash
make all
PREFIX="$HOME/.local" make install
```

