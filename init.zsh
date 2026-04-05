# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::drata::deps()
#
#>
######################################################################
p6df::modules::drata::deps() {
  ModuleDeps=(p6m7g8-dotfiles/p6common)
}

######################################################################
#<
#
# Function: words drata = p6df::modules::drata::profile::mod()
#
#  Returns:
#	words - drata
#
#  Environment:	 DRATA_API_KEY
#>
######################################################################
p6df::modules::drata::profile::mod() {

  p6_return_words 'drata' '$DRATA_API_KEY'
}
