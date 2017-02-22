# My emacs config

**Supported version:** 25.x+

Before we start remember:
```
THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
```

This config was created for rapid haskell development and some research purposes. Here is the list of the packages included:

* [ergoemacs-mode](https://ergoemacs.github.io)
* [intero](https://commercialhaskell.github.io/intero/)
* [idris-mode](https://github.com/idris-hackers/idris-mode)
* [markdown-mode](http://jblevins.org/projects/markdown-mode/)
* [neotree](https://github.com/jaypei/emacs-neotree)
* [projectile](https://github.com/bbatsov/projectile)
* and some more...

All the packages are installed from [melpa](http://melpa.org) repository. It also uses [Dracula](https://draculatheme.com) theme.
The configuration is also uses a set of fonts both for icons and pretty code view. All these fonts can be found on [fonts](https://github.com/zmactep/emacsd/tree/master/fonts) directory and should be installed into your system.

Installation
============

1. Install emacs 25.x+. For macOS use [Emacs for Mac OS X](https://emacsformacosx.com).
1. Clone the config: `git clone https://github.com/zmactep/emacsd ~/.emacs.d`
1. Install all the fonts from [fonts](https://github.com/zmactep/emacsd/tree/master/fonts) directory.
1. Install [stack](https://haskellstack.org) and [pandoc](http://pandoc.org). 

Than just run **emacs**. It will install all the packages and configs on the first start.

Usage
=====

Just enjoy your emacs.

Common problems
===============

Some common problems and their solutions. Thanks to [Bogdan Neterebskii](https://github.com/OZzZzZ).

Could not find font ...
-----------------------

If you want to use configuration default font do not forget to install it. In other case you may want to edit file ~/.emacs.d/init.el in line `(set-default-font ...)`. Feel free to edit parameters.

Cound not install Intero!
-------------------------

It happens GHC version confusing fo Intero (look at [this](https://github.com/commercialhaskell/intero/issues/232) issue). Try to change or update your GHC version.

Another way to solve this problem is to read log message carefully and find the answer. In my case it was `cannot find -ltinfo`. Im means that `tinfo` library was missing. So after installation (e.g. with command `apt-get install libtinfo-dev`) everything seems to be OK.
