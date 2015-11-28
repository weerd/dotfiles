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

1. A selection of dotfiles will be copy/pasted or symlinked (still debating; WIP) into the `~` home directory.
1. Install **Homebrew** if it's not already installed.
1. Using Homebrew, install specified binary packages (utilities, tools, etc).
1. Using Homebrew Cask, install specified native Mac applications.


