# geometry-terraform

Terraform plugin for [geometry][1]. Displays the Terraform workspace of the current directory. 

## Install
#### zplug
```sh
zplug 'pbar1/geometry-terraform', on:'geometry-zsh/geometry', defer:1
```

## Use
Add it to your `GEOMETRY_PROMPT_PLUGINS` environment variable, which should probably be set in your `~/.zshrc` file
```sh
export GEOMETRY_PROMPT_PLUGINS=(terraform ...)
```

## Configuration

### Colors

```sh
GEOMETRY_COLOR_TERRAFORM="magenta"
```


### Symbols

```sh
GEOMETRY_SYMBOL_TERRAFORM:-"▰"
```


[1]: https://github.com/geometry-zsh/geometry
