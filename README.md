# UIFaces [![Build Status](https://travis-ci.org/katgironpe/ui_faces.svg?branch=master)](https://travis-ci.org/katgironpe/ui_faces) [![Coverage Status](https://coveralls.io/repos/github/katgironpe/ui_faces/badge.svg?branch=master)](https://coveralls.io/github/katgironpe/ui_faces?branch=master) [![Deps Status](https://beta.hexfaktor.org/badge/all/github/katgironpe/ui_faces.svg)](https://beta.hexfaktor.org/github/katgironpe/ui_faces

## Features

- [x] Return a random authorized user
- [x] Returns an authorized user

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as follows:

  1. Add `ui_faces` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ui_faces, "~> 0.1.6"}]
    end
    ```

  2. Ensure `ui_faces` is started before your application:

    ```elixir
    def application do
      [applications: [:ui_faces]]
    end
    ```

## Usage

### Get random authorized user

```elixir
UiFaces.Face.random
```

### Get authorized user

```elixir
UiFaces.Face.user("calebogden")
```


## Related Projects

* [Random User](https://github.com/katgironpe/ui_faces) - Useful if you want more than images and make sure female names have female faces.
