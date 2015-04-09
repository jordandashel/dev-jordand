# .NET Configs

The purpose of this repo is to provide some utilities for managing the personal configuration environment for a single developer.

# Usage

Clone this repository to your favorite source directory. Edit the various config files so that they match your environment. You may alternatively wish to use let Chef generate these config files for you. 

## First Time Setup

1. Execute Publish-ConfigsUsingSymlinks.ps1 to push your config files to the various .NET Framework directories on your local machine.
2. Execute Open-MachineConfigs.ps1 to open all of the machine configs found on your machine.
3. Edit the machine configs to repoint the various configSections to the externalized config files

     &lt;connectionStrings configSource="connectionStrings.config" />

## Editing configs later

1. Add, remove, or modify whatever settings you wish.
3. commit-push your changes to github.


# Publish-Configs.ps1

Executing Publish-Configs.ps1 will copy any files with the .config extension located in this repo to the framework directories on your machine.

# Publish-ConfigsUsingSymlinks.ps1

Executing Publish-ConfigsUsingSymlinks.ps1 will create symlinks to the local config files in the various framework directories. This 
saves you from having to republish the configs every time you make a change.

# Open-MachineConfigs.ps1

Open-MachineConfigs.ps1 will find and open all of the various machine configs on your box.

    Open-MachineConfigs.ps1 assumes you use the alias 'np' to refer to NotePad++. You can change 'np' to Open-File to use the default text editor on your machine.

# Open-MachineConfigFolders.ps1

Open-MachineConfigFolders.ps1 opens the framework directories in Windows Explorer.

# FAQ

## Why Can't I just modify the machine.config to use configSource="C:\path\to\my.config"?

For security reasons the .NET Framework does not allow you to load externalized configs from resources outside of the current directory structure.
However, you can get around this by using symlinks.
