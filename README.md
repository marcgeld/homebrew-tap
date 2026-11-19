# homebrew-tap

Official Homebrew formulas for marcgeld command-line tools.

## Requirements

- [Homebrew](https://brew.sh)
- macOS 26 (Tahoe) or later for AskAFM and swol; macOS 15 (Sequoia) or later for Airbag
- Apple Silicon for AskAFM and Airbag; swol supports both Apple Silicon and Intel

AskAFM also needs Apple Intelligence enabled and its on-device model available
to generate responses.

## Installation

```sh
brew tap marcgeld/tap
brew install askafm
brew install swol
brew install airbag
```

## Usage

[AskAFM](https://github.com/marcgeld/AskAFM) sends prompts to Apple Foundation Models:

```sh
askafm "Explain how Wake-on-LAN works."
askafm --help
```

[SwiftWakeOnLan](https://github.com/marcgeld/SwiftWakeOnLan) sends a Wake-on-LAN
magic packet to a device on your local network:

```sh
swol AA:BB:CC:DD:EE:FF
```

Replace the example MAC address with your device's address. The device must
support Wake-on-LAN and have it enabled.

[Airbag](https://github.com/marcgeld/airbag) runs commands in a macOS sandbox:

```sh
airbag --help
airbag --workspace . /bin/echo "Hello from Airbag"
```

## Development

After tapping this repository, run:

```sh
brew style marcgeld/tap/askafm marcgeld/tap/swol marcgeld/tap/airbag
brew install marcgeld/tap/askafm marcgeld/tap/swol marcgeld/tap/airbag
brew test marcgeld/tap/askafm
brew test marcgeld/tap/swol
brew test marcgeld/tap/airbag
```

GitHub Actions runs style checks, installation, and formula tests on macOS 26.
