# Color definitions
GEOMETRY_COLOR_TERRAFORM=${GEOMETRY_COLOR_TERRAFORM:-magenta}

# Symbol definitions
GEOMETRY_SYMBOL_TERRAFORM=${GEOMETRY_SYMBOL_TERRAFORM:-"▰"}
GEOMETRY_TERRAFORM=$(prompt_geometry_colorize $GEOMETRY_COLOR_TERRAFORM $GEOMETRY_SYMBOL_TERRAFORM)

prompt_geometry_terraform_workspace() {
  GEOMETRY_TERRAFORM_WORKSPACE="$(terraform workspace show 2> /dev/null)"
}

geometry_prompt_terraform_setup() {
  (( $+commands[terraform] )) || return 1
}

geometry_prompt_terraform_check() {
  # Do nothing if we're not in a Terraform project
  [ -d $PWD/.terraform ] || return 1
}

geometry_prompt_terraform_render() {
  prompt_geometry_terraform_workspace

  echo "$GEOMETRY_TERRAFORM $GEOMETRY_TERRAFORM_WORKSPACE"
}

geometry_plugin_register terraform
