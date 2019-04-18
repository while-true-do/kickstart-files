<!--
name: README.md
description: This file contains important information for the repository.
author: while-true-do.io
contact: hello@while-true-do.io
license: BSD-3-Clause
-->

<!-- github shields -->
[![Github (tag)](https://img.shields.io/github/tag/while-true-do/kickstart-files.svg)](https://github.com/while-true-do/kickstart-files/tags)
[![Github (license)](https://img.shields.io/github/license/while-true-do/kickstart-files.svg)](https://github.com/while-true-do/kickstart-files/blob/master/LICENSE)
[![Github (issues)](https://img.shields.io/github/issues/while-true-do/kickstart-files.svg)](https://github.com/while-true-do/kickstart-files/issues)
[![Github (pull requests)](https://img.shields.io/github/issues-pr/while-true-do/kickstart-files.svg)](https://github.com/while-true-do/kickstart-files/pulls)
<!-- travis shields -->
[![Travis (com)](https://img.shields.io/travis/com/while-true-do/kickstart-files.svg)](https://travis-ci.com/while-true-do/kickstart-files)

# Kickstart Files

A repository providing example kickstart files and snippets.

## Motivation

[pykickstart](https://pykickstart.readthedocs.io/en/latest/) (kickstart) is
used for the automatic deployment and configuration. At while-true-do.io, we are
using CentOS and Fedora and are also using kickstart.

## Description

This repository contains kickstart files and snippets.

### Kickstart files

The files are located in the [files](./files) directory. They can be used "as
provided". You should consider to tune them to your needs. Changing passwords
or partitioning is recommended.

#### CentOS

-   [Base Example](files/centos-base.ks)
-   [Secure Example](files/centos-secure.ks)

#### Fedora

-   [Base Example](files/fedora-base.ks)
-   [Secure Example](files/fedora-secure.ks)

### Kickstart snippets

The snippets are located in the [snippets](./snippets) directory. They can be
used as a starting point for specific features or ideas.

- [LVM](./snippets/lvm.ks.md)
- [kdump](./snippers/kdump.ks.md)
- [password](./snippets/password.ks.md)
- [ssh-key](./snippets/ssh-key.ks.md)

## Requirements

Using kickstart files requires a supported OS.

## Installation

Install from [Github](https://github.com/while-true-do/kickstart-files)
```
git clone https://github.com/while-true-do/kickstart-files.git
```

## Usage

There are many ways to trigger the installation via kickstart. For a more detailed documentation, you can have a look at the [official documentation](https://pykickstart.readthedocs.io/en/latest/kickstart-docs.html#chapter-12-starting-a-kickstart-installation)

### ISO installation

You can use kickstart during the regular installation. You only need to interrupt the grub menu via `ESC` and type in the proper command.

```
linux inst.ks=https://<server>/<path>
```

### KVM installation

If you want to make use of kickstart for your KVM Hypervisor, you can use `virt-install`.

```
...snip...
--extra-args="ks=https://raw.githubusercontent.com/while-true-do/kickstart/master/files/centos-base.ks"
...snap...
```

Additional hints for `virt-install` can be found in our [tldr repository](https://github.com/while-true-do/tldr/blob/master/cheatsheets/virt-install.md).

## Testing

Most of the "generic" tests are located in the
[Test Library](https://github.com/while-true-do/test-library).

Automated testing is done with [Travis CI](https://travis-ci.com).

## Contribute

Thank you so much for considering to contribute. We are very happy, when somebody
is joining the hard work. Please fell free to open
[Bugs, Feature Requests](https://github.com/while-true-do/kickstart-files/issues)
or [Pull Requests](https://github.com/while-true-do/kickstart-files/pulls) after
reading the [Contribution Guideline](https://github.com/while-true-do/doc-library/blob/master/docs/CONTRIBUTING.md).

See who has contributed already in the [kudos.txt](./kudos.txt).

## License

This work is licensed under a [BSD-3-Clause License](https://opensource.org/licenses/BSD-3-Clause).

## Contact

-   Site <https://while-true-do.io>
-   Twitter <https://twitter.com/wtd_news>
-   Code <https://github.com/while-true-do>
-   Mail [hello@while-true-do.io](mailto:hello@while-true-do.io)
-   IRC [freenode, #while-true-do](https://webchat.freenode.net/?channels=while-true-do)
-   Telegram <https://t.me/while_true_do>
