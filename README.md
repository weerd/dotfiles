![dotfiles repo banner](assets/dotfiles_banner.png)

# ~/.dotfiles
OS X configuration kit.

## Setup Steps

1) Install **Xcode** from the Mac App Store and run it to accept the license and install **git**.

2) Generate an SSH key for computer. Use these [instructions](https://help.github.com/articles/generating-ssh-keys/) if you don't remember how to do it.

3) Add SSH key to [GitHub](https://github.com) and [BitBucket](https://bitbucket.com).
You can copy your public SSH key using the following command:

```shell
$ pbcopy < ~/.ssh/id_rsa.pub
```

4) Run the following command from the terminal:

```shell
$ curl https://raw.githubusercontent.com/weerd/dotfiles/master/install.sh | sh
```



## Installation Script Sequence

When the **install.sh** script runs, the following things will happen:

1. A **Code** directory will be created in the **Home (~)** directory.
1. Next, it will download _this_ **dotfiles** repository into `~/Code` and run the **bootstrap.sh** script.



## Bootstrap Script Sequence

When the **bootstrap.sh** script runs, the following things will happen:

1. A selection of dotfiles will be symlinked into the `~/` home directory.
1. Install **Homebrew** if it's not already installed.
1. Using Homebrew, install specified binary packages (utilities, tools, etc).
1. Using Homebrew Cask, install specified native Mac applications.



## Available Aliases

Change directories into the `~/Desktop` directory:

```shell
$ desk
```

Change directories into the `~/Code` directory:

```shell
$ code
```

Open the `/etc/hosts` file in Sublime Text:

```shell
$ hosts
```

Show hidden files in the Finder:

```shell
$ showFiles
```

Hide files that should be hidden in the Finder:

```shell
$ hideFiles
```



## Application Specific Setups

### Moom 
[**Moom**](https://manytricks.com/moom/) is a great application for moving around and zooming OSX windows, however there is currently no easy way to sync its great customizable configurations across computers.

This repository provides two scripts that copy back and forth the Moom system preference file. Unfortunately, due to how OSX handles the preferences files, they cannot be symlinked to this repository since everytime the application settings are updated, the system preferences file is completed replaced. 

Instead, we can run the included _export_ script to copy the preferences (once configured) into this repository, and back from the repository to the system (on another computer with Moom for example) using the _import_ script:

```shell
$ bash ~/path/to/this/repo/dotfiles/moom/export.sh
```

```shell
$ bash ~/path/to/this/repo/dotfiles/moom/import.sh
```

