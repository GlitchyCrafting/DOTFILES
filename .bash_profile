#export QT_QPA_PLATFORMTHEME="qt6ct"
#export QT_QPA_PLATFORM=wayland
#export XDG_CURRENT_DESKTOP=sway
#export XDG_SESSION_DESKTOP=sway
#export XDG_CURRENT_SESION_TYPE=wayland
#export GDK_BACKEND="wayland,x11"
#export MOZ_ENABLE_WAYLAND=1
#export XCURSOR_THEME=Sweet-cursors
#export _JAVA_AWT_WM_NONREPARENTING=1
export CC=/bin/clang
export CC_LD=/bin/mold
export CXX=/bin/clang++
export CXX_LD=/bin/mold

export TMPDIR="$HOME/.tmp"
export TEMPDIR="$HOME/.tmp"

export EDITOR="/usr/bin/vim"

if [[ -e "/usr/bin/nvim" ]]; then
	export EDITOR="/usr/bin/nvim"
	alias vim=nvim
	alias vi=nvim
fi
