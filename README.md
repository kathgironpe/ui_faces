# UIFaces [![Build Status](https://travis-ci.org/katgironpe/ui_faces.svg?branch=master)](https://travis-ci.org/katgironpe/ui_faces) [![Coverage Status](https://coveralls.io/repos/github/katgironpe/ui_faces/badge.svg?branch=master)](https://coveralls.io/github/katgironpe/ui_faces?branch=master) [![Deps Status](https://beta.hexfaktor.org/badge/all/github/katgironpe/ui_faces.svg)](https://beta.hexfaktor.org/github/katgironpe/ui_faces)

## Features

- [x] Return a random authorized user
- [x] Returns an authorized user

## Installation

The package is [available in Hex](https://hexdocs.pm/ui_faces/0.1.7/UiFaces.Face.html) can be installed as follows:

  1. Add `ui_faces` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ui_faces, "~> 0.1.7"}]
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

* [Random User](https://github.com/katgironpe/random_user) - Useful if you want more than a username and images. You can also make sure the random data has female names have female faces.
