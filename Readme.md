# My dotfiles

Just a few shell scripts to configure my personal mac. They can download apps from App store, configure aliases, dock bar, install developer tools, etc. 

## Installation:

### First install **[homebrew](https://brew.sh)** 🍺

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### make a dev directory to clone dotfiles:

```
mkdir ~/dev ; cd ~/dev
```

### clone the dotfiles project:

```
git clone git@github.com:mathfeola/dotfiles.git ~/dev/dotfiles ; cd dotfiles
```

### Then just run the install scripts:

```
bash brewApps.sh ; bash masApps.sh ; bash caskApps.sh ; bash config/macOSGeneralConfig.sh
```

### To configure the **terminal** ＄:

1. Open iTerm -> Preferences 
2. Go to Profiles -> Import JSON profile -> select `itermProfile/mine.json`
3. Go to Colors -> Color Presets -> Import -> select the `itermProfile/solarized-dark-will.itermcolors`
4. Run the following command to install `oh My Zsh`
> ```$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ```
5. And last run the configuration files:
> ```$ bash config/configZSH ; bash generalAliases.sh```

