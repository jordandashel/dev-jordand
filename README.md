# .NET Configs

The purpose of this repo is to provide some utilities for managing the personal configuration environment for a single developer.


# Usage

Clone this repository to your favorite source directory. Edit the various config files so that they match your environment. You may alternatively wish to use let Chef generate these config files for you. 

1. Execute Publish.ps1 to push your config files to the various .NET Framework directories on your local machine.
2. Execute Open-MachineConfigs.ps1* to open all of the machine configs found on your machine.
3. Edit the machine configs to repoint the various configSections to the externalized config files

     &lt;connectionStrings configSource="connectionStrings.config" />


* Open-MachineConfigs.ps1 assumes you use the alias 'np' to refer to NotePad++. You can change 'np' to Open-File to use the default text editor on your machine.

# Publish-Configs.ps1

Executing Publish.ps1 will copy any files with the .config extension located in this repo to the framework directories on your machine.

# Open-MachineConfigs.ps1

Open-MachineConfigs.ps1 will find and open all of the various machine configs on your box.


# FAQ

## Why Can't I just modify the machine.config to use configSource="C:\path\to\my.config"?

For security reasons the .NET Framework does not allow you to load externalized configs from resources outside of the current directory structure.