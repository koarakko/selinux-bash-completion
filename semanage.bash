_semanage()
{
  local cur prev opts
  _get_comp_words_by_ref -n : cur prev
  opts="boolean user login module port interface node fcontext fcontext permissive dontaudit"

  COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
}
complete -F _semanage semanage

