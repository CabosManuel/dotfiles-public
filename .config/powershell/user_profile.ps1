# Instalar scoop -------------------------------------
# iwr -useb get.scoop.sh | iex

# Instalar neovim ------------------------------------
# scoop install neovim gcc
# 
# [Opcional] Cambiar idioma de neovim en PowerShell (https://github.com/neovim/neovim/issues/11045#issuecomment-532947994) 
$env:LC_MESSAGES="en-US"

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
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\kushal.omp.json" | Invoke-Expression # My fav
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\clean-detailed.omp.json" | Invoke-Expression # Tema que usa Fazt
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

# PSReadLine (Autocompletion)
# 1. Instalar
# Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
#
# 2. Agregar configuraciones a este user_profile.ps1
Set-PSReadLineOption -EditMode Emacs	# Mejor edicion de texto
Set-PSReadLineOption -BellStyle None	# Desactivar sonido de campana cuando alcanzas el borde
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Utilidades -----------------------------------------
# - Comando which
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# #######################################################################
# Fuente de las configuraciones (devaslife): https://youtu.be/5-aK2_WwrmM
# #######################################################################
