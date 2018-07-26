geometry_prompt_terraform_setup() {
  (( $+commands[terraform] )) || return 1
}

geometry_prompt_terraform_check() {
  # Do nothing if we're not in a Terraform project
  [ -d $PWD/.terraform ] || return 1
}

geometry_prompt_terraform_render() {
  echo -n "$(terraform workspace show 2> /dev/null)"
}

geometry_plugin_register terraform
