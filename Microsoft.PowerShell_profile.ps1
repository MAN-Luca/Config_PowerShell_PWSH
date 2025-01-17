# Activer oh-my-posh et définir le thème du prompt
oh-my-posh init pwsh --config "C:\Users\lucam\AppData\Local\Programs\oh-my-posh\themes\powerline.omp.json" | Invoke-Expression

# PSREADLINE
Import-Module PSReadLine
Set-PSReadLineOption -BellStyle None               # Désactive le son de la cloche
Set-PSReadLineOption -PredictionSource History     # Utilise l'historique pour les suggestions
Set-PSReadLineOption -PredictionViewStyle InLineView  # Affiche les suggestions en ligne

# ICONS
Import-Module -Name Terminal-Icons

# GIT Autocompletion avec posh-git
Import-Module posh-git

# Alias
Function lf { Get-ChildItem -File }         # ls -f
Function ld { Get-ChildItem -Directory }    # ls -d


function GitCommit { & git commit -m $args }
Remove-Item Alias:gcm -Force      # Supprimer l'alias gcm s'il existe déjà
Set-Alias -Name gcm -Value GitCommit

function GitStatus { & git status $args }
Set-Alias -Name gst -Value GitStatus

function GitPush { & git push $args }
Remove-Item Alias:gps -Force      # Supprimer l'alias gps s'il existe déjà
Set-Alias -Name gps -Value GitPush

function GitPull { & git pull $args }
Set-Alias -Name gpl -Value GitPull

function GitAdd { & git add . $args }
Set-Alias -Name gaa -Value GitAdd

function GitSwitch { & git switch $args }
Set-Alias -Name gsw -Value GitSwitch

function GitBranch { & git branch $args }
Set-Alias -Name gb -Value GitBranch

function GitLog { & git log --oneline --graph --decorate $args }
Set-Alias -Name glog -Value GitLog
