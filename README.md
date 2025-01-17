# Configuration PowerShell (PWSH)

Ce dépôt contient ma configuration personnelle pour PowerShell, optimisée pour la productivité et l’esthétique. Cette configuration inclut des alias personnalisés, des modules utiles comme Oh My Posh et PSReadLine, ainsi que des fonctions spécifiques pour améliorer l’expérience utilisateur.

---

## Contenu

- **Alias personnalisés** : Des raccourcis pour les commandes fréquentes.
- **Thème Oh My Posh** : Un prompt esthétique et informatif.
- **Complétion Git avec posh-git** : Simplifie la gestion des dépôts Git.
- **Terminal Icons** : Ajoute des icônes aux fichiers et dossiers pour une meilleure lisibilité.
- **Optimisations PSReadLine** : Améliore l’historique des commandes et les prédictions.

---

## Installation

### Prérequis

- **PowerShell 7+**
- **Modules** :
  - [Oh My Posh](https://ohmyposh.dev)
  - [PSReadLine](https://learn.microsoft.com/en-us/powershell/module/psreadline/)
  - [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
  - [posh-git](https://github.com/dahlbyk/posh-git)

---

### Étapes d’installation

1. **Vérifiez et ouvrez votre fichier de profil PowerShell**  
   Exécutez la commande suivante dans PowerShell pour vérifier le chemin du fichier `profile.ps1` :
   ```powershell
   echo $PROFILE
   ```
   Si le fichier n’existe pas encore, créez-le avec cette commande :
   ```powershell
   New-Item -ItemType File -Path $PROFILE -Force
   ```

2. **Copiez le contenu de ce dépôt dans votre fichier `$PROFILE`**  
   Ouvrez le fichier `$PROFILE` dans un éditeur, comme VS Code, avec la commande suivante :
   ```powershell
   code $PROFILE
   ```
   Copiez le contenu de votre configuration (incluant alias, modules, etc.) dans ce fichier.

3. **Installez les modules nécessaires** (si ce n’est pas déjà fait) :
   ```powershell
   Install-Module -Name oh-my-posh -Scope CurrentUser
   Install-Module -Name PSReadLine -Scope CurrentUser
   Install-Module -Name Terminal-Icons -Scope CurrentUser
   Install-Module -Name posh-git -Scope CurrentUser
   ```

4. **Téléchargez tous les thèmes Oh My Posh**  
   Exécutez cette commande pour installer les thèmes :
   ```powershell
   oh-my-posh get themes
   ```
   Consultez la liste des thèmes disponibles ici : [Oh My Posh Themes](https://ohmyposh.dev/docs/themes).

5. **Rechargez votre profil pour appliquer les changements** :
   ```powershell
   . $PROFILE
   ```

---

## Détails de la configuration

### Oh My Posh

Le thème Powerline est configuré via ce chemin :  
`C:\Users\lucam\AppData\Local\Programs\oh-my-posh\themes\powerline.omp.json`.

Pour modifier le thème, changez l’argument `--config` dans cette ligne de `$PROFILE` :
```powershell
oh-my-posh init pwsh --config "C:\Users\lucam\AppData\Local\Programs\oh-my-posh\themes\powerline.omp.json" | Invoke-Expression
```

### PSReadLine

- **Prédictions basées sur l’historique** : Active les suggestions en ligne.
- **Désactivation du son de cloche** : Réduit les distractions.

### Modules supplémentaires

- **Terminal Icons** : Ajoute des icônes devant les fichiers et dossiers.
- **posh-git** : Intègre des informations sur l’état Git directement dans le prompt.

---
