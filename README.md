## An Alpine container to practice Bash scripting

I wanted to have a lightweight Linux environment with Vim installed and persistent storage for my configs, so I made this.

### Set up environment

Clone and download the repo, and checkout to a new branch

```
$ git clone https://github.ibm.com/David-Levy/alpine_sandbox.git
$ cd alpine_sandbox
```

Make sure you have Docker running.

During the installation process there are times when the screen will be blank for a few seconds. Run the create script to create your container and install all the dependencies.

```
$ npm run create
```

You can add packages to the Alpine container from the Dockerfile by [looking them up here](https://command-not-found.com/), and adding the install for Alpine listed:

```
apk add <package>
```

### Start up the Alpine Container

```
$ npm start
```

### Try out the vimtutor to learn Vim

This is a pretty good starting guide on how to navigate vim. The tutor has the default keymap settings.

```
$ vimtutor
```

I have set up some basic custom settings (different than vimtutor) for vim that you can play around with in .vimrc in the root of the container (or volume/.vimrc in this repo, its volume mounted to the container for persistence).

To go from INSERT (where you type) to NORMAL (where you navigate) instead of pressing `<ESC>`, you have to press j then k (quickly). You can change that to whatever you want. For example, the following allows you to press jj to exit from insert mode: (or jk ,kj, etc).

```
:inoremap jj <Esc>
```

Just go to .vimrc and change line 54 to whatever you want.

So now you can get to bash scripting, or learning vim or whatever.
