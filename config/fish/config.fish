### --- PATH & ENVIRONMENT (Keep these at the top) ---
set PATH /usr/bin:/usr/local/bin $PATH
set -gx TERMINAL alacritty
set -gx XTERM alacritty

# Bun setup
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

### --- INTERACTIVE CONFIG ---
if status is-interactive
    # 1. DEFINE WALLPAPER COLORS (Indigo/Coral Palette)
    set -l foreground d9e0ee  # Soft white (Clouds)
    set -l selection  434c5e  # Deep navy (Shadows)
    set -l comment    626b7c  # Steel blue (Torii Gate)
    set -l red        f25056  # Coral red (Leaves)
    set -l cyan       89dceb  # Bright glow (Sky)
    set -l blue       7082a0  # Muted indigo (Trees)

    # 2. APPLY COLORS TO FISH INTERFACE
    set -g fish_greeting
    set -g fish_color_normal $foreground
    set -g fish_color_command $cyan --bold
    set -g fish_color_quote $blue
    set -g fish_color_redirection $foreground
    set -g fish_color_end $red
    set -g fish_color_error $red
    set -g fish_color_param $foreground
    set -g fish_color_comment $comment
    
    # 3. PAGER COLORS (The menu that pops up when you tab)
    set -g fish_pager_color_progress $comment
    set -g fish_pager_color_prefix $cyan
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $comment
    set -g fish_pager_color_selected_background --background=$selection

    # 4. YOUR EXTRAS (Uncomment if you want them back)
    # figlet -f slant "Anik" | lolcat
end