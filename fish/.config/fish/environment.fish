set -x DATA_DIR /run/media/lepisma/Data
set -x CLOUD_DIR $DATA_DIR/Cloud
set -x PROJECTS_DIR $DATA_DIR/Projects

set -x EMAIL lepisma@fastmail.com
set -x NAME Abhinav Tushar

set -x EDITOR mumacs
set -x PAGER less
set -x BROWSER www
set -x BORG_REPO $CLOUD_DIR/Backup

set -a PATH ~/bin
set -a PATH ~/.local/bin
set -a PATH ~/.cask/bin
set -a PATH ~/.roswell/bin
set -a PATH ~/.pkr/bin
set -a PATH (rbenv prefix)/bin
set -a PATH ~/.cargo/bin
set -a PATH ~/.pyenv/bin
set -a PATH ~/.poetry/bin
set -a PATH ~/go/bin

status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src

set -x QT_QPA_PLATFORMTHEME "qt5ct"

set -a LD_LIBRARY_PATH /usr/local/lib

# faster nvm
nvm use default
