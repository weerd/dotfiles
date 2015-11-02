# dotfiles
OS X configuration kit

## Setup Steps

1) Install **Xcode** from the Mac App Store.

2) Generate an SSH key for computer.

3) Add SSH key to [GitHub](https://github.com) and [BitBucket](https://bitbucket.com).
You can copy your public SSH key using the following command:

```shell
$ pbcopy < ~/.ssh/id_rsa.pub
```

4) Run the following command from the terminal:

```shell
$ curl https://raw.githubusercontent.com/weerd/dotfiles/master/install.sh | sh
```

