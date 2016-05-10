mklink %HOMEPATH%"\.vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\.gvimrc" %HOMEPATH%"\dotfiles\.gvimrc"
mklink /D %HOMEPATH%"\.vim\colors" %HOMEPATH%"\dotfiles\colors"
mklink %HOMEPATH%"\.vim\.dein.toml" %HOMEPATH%"\dotfiles\dein\.dein.toml"
mklink %HOMEPATH%"\.vim\.dein_lazy.toml" %HOMEPATH%"\dotfiles\dein\.dein_lazy.toml"
exit 0
