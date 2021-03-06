This repository holds my configuration files (named as dotfiles).

The primary OS platform is Mac OS X and some of these config files are tuned to work on that platform. 

The `bash` files are more generic and friendly toward other Unix platforms. 

#Installation

    git clone git://github.com/chanyong-bj/dotfiles.git ~/.dotfiles
	
# Updating
There are several git submodules included in this configuration. On a new
installation these submodules need to be initialized and updated.

    $ cd ~/.dotfiles
    $ git submodule init 
    $ git submodule update 

It is also possible to use `git pull` to update the submodules.

    $ cd ~/.dotfiles
    $ git submodule foreach git pull origin master


#Setup
## Homebrew
On those Mac OS machines where I install Homebrew I also edit `/etc/paths` to move the `/usr/local/bin` entry to the top of the list. This ensures that Homebrew-managed programs and libraries occur prior to `/usr/bin` and system-provided programs and libraries. The resulting `/etc/paths` files looks like this:

    /usr/local/bin
    /usr/bin
    /bin
    /usr/sbin
    /sbin

The `~/.dotfiles/brew/Brewfile` acts as a bundle for Homebrew. Use `brew bundle ~/.dotfiles/brew/Brewfile` to set up brews.
    
## zsh
For zsh configuration create the following symlinks:

    ln -s ~/.dotfiles/zsh ~/.zsh
    ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
    ln -s ~/.dotfiles/zsh/zshenv ~/.zshenv
    ln -s ~/.dotfiles/zsh/zprofile ~/.zprofile
		
## ssh
For ssh configuration, create the following symlink:

    ln -s ~/.dotfiles/ssh/config ~/.ssh/config

## Vim
If this is the first time setting up Vim on the machine, it will be necessary to install Vundle itself, prior to teh bundles.

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

For Vim configuration and use, create the following symlinks:

    ln -s ~/.dotfiles/vim ~/.vim
    ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim/gvimrc ~/.gvimrc

To install Vim bundles, which are managed via Vundle, via the command line run

    vim +BundleInstall +qall

From inside of Vim run

    :BundleInstall


## Git
For Git configuration and global ignore files, create these symlinks:

    $ ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
    $ ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
    $ git config --global core.excludesfile ~/.gitignore_global

## bash
For those machines where zsh isn't installed or won't easily work, create the
following symlinks:

    $ ln -s ~/.dotfiles/bash/bash_profile ~/.bash_profile
    $ ln -s ~/.dotfiles/bash/bashrc ~/.bashrc
    $ ln -s ~/.dotfiles/bash/bash_aliases ~/.bash_aliases

## Sublime Text 2 (subl)
Install Package Control following the instructions here: [Package Control](https://packagecontrol.io/). 

The simplest method of installation is through the Sublime Text console. The console is accessed via the ctrl+` shortcut or the View > Show Console menu. Once open, paste the appropriate Python code for your version of Sublime Text into the console.


```
import urllib2,os,hashlib; h = '2915d1851351e5ee549c20394736b442' + '8bc59f460fa1548d1514676163dafc88'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler()) ); by = urllib2.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); open( os.path.join( ipp, pf), 'wb' ).write(by) if dh == h else None; print('Error validating download (got %s instead of %s), please try manual install' % (dh, h) if dh != h else 'Please restart Sublime Text to finish installation')

```


For Sublime Text 2 settings, remove the `User` directory from
`~/Library/Application Support/Sublime Text 2/Packages`. Then add this symlink:

    $ cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
    $ ln -s ~/.dotfiles/sublimetext/User User

Finally, to enable the command line tool, `subl`, add this symlink:

    $ ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

## Mercurial (hg)
For Mercurial configuration and global ignore files, create these symlinks:

    $ ln -s ~/.dotfiles/hg/hgrc ~/.hgrc
    $ ln -s ~/.dotfiles/hg/hgignore_global ~/.hgignore_global

## Gem
In order to prevent `gem install` or `gem update` from downloading RDoc and RI, symlink this file.

    $ ln -s ~/.dotfiles/gem/gemrc ~/.gemrc

## TextMate (mate)
For TextMate 2 settings create the following symlink:

    $ ln -s ~/.dotflles/textmate/tm_properties ~/.tm_properties

## tmux (terminal multiplexer) configuration
For tmux configuration create this symlink:

    $ ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

Setup `tmuxinator` by installing it's gem

    $ gem install tmuxinator

And link in the directory containing the YML files for the `mux` command.

    $ ln -s ~/.dotfiles/tmux/tmuxinator ~/.tmuxinator

##z
To enable z directory function from https://github.com/rupa/z, source the
`z.sh` script in the `.zshrc` file: 

    source ${HOME}/.dotfiles/z/z.sh

## Doing
Install `doing` gem (https://github.com/ttscoff/doing/ & http://brettterpstra.com/2014/03/15/scatterbrains-3-a-new-tool-for-doing/)

    $ [sudo] gem install doing

Create symlink to `doingrc` file.

    $ ln -s ~/.dotfiles/doing/doingrc ~/.doingrc

## OpenConnect
An alternative to using Cisco's AnyConnect.

Requires that `openconnect` be installed via Homebrew and that TUN/TAP for OS X be installed. See http://zanshin.net/2013/08/27/setup-openconnect-for-mac-os-x-lion/
for details.

    $ ln -s ~/.dotfiles/openconnect/openconnect ~/.openconnect



