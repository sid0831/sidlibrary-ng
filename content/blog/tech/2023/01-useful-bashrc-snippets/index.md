---
date: 2023-10-10T09:00:00+09:00
title: "Useful .bashrc snippets"
summary: "Useful .bashrc snippets I actually use every day."
draft: false
params:
  commentsEnabled: true
---
As a satisfied user of [Arch Linux](https://www.archlinux.org/) (relax, I am not your stereotypical toxic Arch user), I use Linux every day for my personal life (I have MacBook for work &#129326;). Here are useful `.bashrc` snippets from my actual `.bashrc`, for everyday Linux life.

_This is a stub post. To be updated over time._

### Prompt and basics

```bash
#!/usr/bin/env bash
# Snippets from Sid's .bashrc file.
# Do not call `set -euo pipefail` from your habit in .bashrc.

##########
# Basics #
##########

# Turn the history verification on
# (confirming the command after calling it from history with '!')
shopt -s histverify

# Default PS1 in Debian style for fallback.
# It is solely my preference, though.
export PS1="\u@\h:\w\$ "

__prompt_command () {
  # Default PS1 in coloured Debian style.
  PS1="\[\033[1;32m\]\u@\h\[\033[00m\]:\[\033[1;34m\]\w\[\033[00m\]\$ "

  # Uncomment this if you use anaconda for python environment management.
  # if [[ ! "$CONDA_DEFAULT_ENV" == "base" ]] && [[ ! -z "${CONDA_DEFAULT_ENV+x}" ]]; then
  #   PS1="\[\033[1;33m\]($CONDA_DEFAULT_ENV)\[\033[00m\] $PS1"
  # fi

  # Now we export the PS1 and print the terminal title characters.
  export PS1
  printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"
}
# Apply the __prompt_command() only for specific terminal types.
[[ "${TERM}" =~ "color" || "${TERM}" =~ "rxvt" || "${TERM}" =~ "kitty" ]] && export PROMPT_COMMAND=__prompt_command
```
