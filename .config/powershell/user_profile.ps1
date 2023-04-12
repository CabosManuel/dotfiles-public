# Instalar scoop -------------------------------------
# iwr -useb get.scoop.sh | iex

# Instalar neovim ------------------------------------
# scoop install neovim gcc

# ####################################################
# Pasos para configurar este archivo user_profile.ps1
# ----------------------------------------------------
#
# 1. Crear archivo o copiar en .config
# mkdir .config/powershell
# nvim .config/powershell/user_profile.ps1
#
# 2. Agregar configuraciones.
#
# 3. Configurar $PROFILE.CurrentUserCurrentHost para los Alias, agregando como primera línea
# nvim $PROFILE.CurrentUserCurrentHost
# . $env:USERPROFILE\.config\powershell\user_profile.ps1
# ####################################################

# Temas ----------------------------------------------
# Descomentar uno de estos temas o agregar otro (https://ohmyposh.dev/docs/themes):
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\kushal.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\clean-detailed.omp.json" | Invoke-Expression
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\agnosterplus.omp.json" | Invoke-Expression
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\quick-term.omp.json" | Invoke-Expression
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\night-owl.omp.json" | Invoke-Expression

# Alias ----------------------------------------------
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias vim nvim
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias php 'C:\xampp\php\php.exe'

# Íconos ---------------------------------------------
# 1. Instalar
# install-module -name Terminal-Icons -repository PSGallery -force
#
# 2. Agregar configuración a este user_profile.ps1
Import-Module Terminal-Icons

# Utilidades -----------------------------------------
# - Comando which
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# #######################################################################
# Fuente de las configuraciones (devaslife): https://youtu.be/5-aK2_WwrmM
# #######################################################################
