# GalDaich's Homebrew tap

Homebrew packages maintained by [GalDaich](https://github.com/GalDaich).

## Brewski

[Brewski](https://github.com/GalDaich/brewski) updates, cleans, and checks a
Homebrew installation on macOS.

```sh
brew install GalDaich/tap/brewski
brewski --help
brewski --version
```

To update or uninstall:

```sh
brew update
brew upgrade GalDaich/tap/brewski
brew uninstall GalDaich/tap/brewski
```

The formula installs an executable from a versioned release archive and verifies
its SHA-256 checksum. No compilation or extra runtime language is required.

Running `brewski` performs real package upgrades and cleanup. Read the
[source README](https://github.com/GalDaich/brewski#readme) for defaults and options.
Installation and formula tests do not run maintenance.

## Maintenance

After a source release, update `Formula/brewski.rb` with its asset URL and SHA-256
from the release's `SHA256SUMS`. CI installs and tests the formula on Apple Silicon
and Intel macOS runners. It also runs Homebrew style and strict audit checks.
Merge only after checks pass, and delete merged branches locally and remotely.

[MIT license](LICENSE).
