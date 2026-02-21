# homebrew-rubish

Homebrew tap for [rubish](https://github.com/amatsuda/rubish) -- a UNIX shell written in pure Ruby.

## Installation

```sh
brew install --HEAD amatsuda/rubish/rubish
```

Or tap first, then install:

```sh
brew tap amatsuda/rubish
brew install --HEAD rubish
```

`--HEAD` is required as rubish is currently installed from the latest source on the master branch.

## Usage

Start rubish:

```sh
rubish
```

Run a single command:

```sh
rubish -c 'echo hello'
```

Set as your login shell:

```sh
# Add rubish to allowed shells
echo "$(brew --prefix)/bin/rubish" | sudo tee -a /etc/shells

# Change your default shell
chsh -s "$(brew --prefix)/bin/rubish"
```

## Upgrading

```sh
brew upgrade --fetch-HEAD rubish
```

## Uninstalling

```sh
brew uninstall rubish
brew untap amatsuda/rubish
```

## Requirements

- Homebrew's Ruby (`brew install ruby`)

## More info

See the [rubish repository](https://github.com/amatsuda/rubish) for documentation and source code.

## License

MIT
