# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::drata::deps()
#
#>
######################################################################
p6df::modules::drata::deps() {
  ModuleDeps=()
}

######################################################################
#<
#
# Function: str str = p6df::modules::drata::prompt::mod()
#
#  Returns:
#	str - str
#
#  Environment:	 P6_DFZ_PROFILE_DRATA
#>
######################################################################
p6df::modules::drata::prompt::mod() {
  local str=""
  local profile="$P6_DFZ_PROFILE_DRATA"

  if p6_string_blank_NOT "$profile"; then
    str="drata:\t\t  ${profile}"
  fi

  p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6df::modules::drata::profile::on(profile, code)
#
#  Args:
#	profile -
#	code - shell code block
#
#  Environment:	 P6_DFZ_PROFILE_DRATA
#>
######################################################################
p6df::modules::drata::profile::on() {
  local profile="$1"
  local code="$2"

  p6_run_code "$code"

  p6_env_export "P6_DFZ_PROFILE_DRATA" "$profile"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::drata::profile::off(code)
#
#  Args:
#	code - shell code block previously passed to profile::on
#
#  Environment:	 P6_DFZ_PROFILE_DRATA
#>
######################################################################
p6df::modules::drata::profile::off() {
  local code="$1"

  p6_env_unset_from_code "$code"
  p6_env_export_un P6_DFZ_PROFILE_DRATA

  p6_return_void
}
