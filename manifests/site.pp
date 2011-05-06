
node basenode {
  include "vim-src"
  include "vim-configuration"
  include "zsh"
  include "zsh_configuration"
  include "z"
  include "local_security"
}
node 'natty' inherits basenode {
}

node 'zsh' inherits basenode {
}
