# planet-neuroscientists

A pluto instance which powers the whole planet.

## How to install/setup Pluto

You can use Ruby's package manager: `gem` to install `pluto` on your machine.

```bash
$ gem install pluto
```

Or you can install from the source directly. Refer [here](https://github.com/feedreader/pluto.starter) for the same.

To verify your installation, simply type:

```bash
$ pluto help
```

Of which, you should get an output like this:

```bash
NAME
    pluto - another planet generator (lets you build web pages from published web feeds)

SYNOPSIS
    pluto [global options] command [command options] [arguments...]

VERSION
    1.2.3

GLOBAL OPTIONS
    -c, --config=PATH - Configuration Path (default: ~/.pluto)
    --help            - Show this message
    -q, --quiet       - Only show warnings, errors and fatal messages
    --verbose         - (Debug) Show debug messages
    --version         - Display the program version

COMMANDS
    about, a      - (Debug) Show more version info
    build, b      - Build planet
    fetch, f      - Fetch feeds
    help          - Shows a list of commands or help for one command
    install, i    - Install template pack
    list, ls, l   - List installed template packs
    merge, m      - Merge planet template pack
    update, up, u - Update planet feeds
```

## Build Planet-Neuroscietists

To build planet neuroscientists, simply enter in the following command:

```bash
$ pluto build planet.ini

# OR
# With a template, say "forty" or "top"

$ pluto build planet.ini -t forty
```

## Update the planet

You can use pluto to refresh the feeds for the planet. Simply type in the following command:

```bash
pluto update
```
