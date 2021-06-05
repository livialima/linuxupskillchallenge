*Introduction to Linux Server Administration!*

This includes all the source material for the 20 lessons of what was previously a commercial online Linux server admin course - now free for you to learn with! (If you spot any typos or "dead links" simply raise a GitHub "issue").

* Website of the course: https://LinuxUpskillChallenge.org
* Monthly "Linux Upskill Challenge": https://www.reddit.com/r/linuxupskillchallenge/
* Lesson "source": https://github.com/livialima/linuxupskillchallenge
* Chat at: https://discordapp.com/invite/wd4Zqyk

You are free to use this under the terms of the license, but copyright remains with the author, Steve Brorens.

## Table of Contents

* [Day 1](01.md): Starting with `ssh`-ing in and some simple commands like: `ls`, `uptime`, `free`, `df -h`, `uname -a`. Extensions on doing passwordless login with public keys and and an `ssh` config file.
* [Day 2](02.md): Basic navigation, the "man" pages, file hierarchy
* [Day 3](03.md): Working with `sudo`, `uptime`, `timezones`, changing your hostname
* [Day 4](04.md): Using 'apt' to find and install sotware. Use of `mc` to explore the filesystem. Looking at the contents of: `/etc/passwd`, `/etc/ssh/sshd_config` and `/var/log/auth.log`
* [Day 5](05.md): Using `more`, `less` and navigating in these. Dotfiles, history, tab completion, and using the `nano` txt editor
* [Day 6](06.md): Learning `vim`, the minimal knowledge, but also via `vimtutor`
* [Day 7](07.md): Installing Apache2, stopping and starting, altering the content, reading logs
* [Day 8](08.md): Hands-on with text tools like `grep`, `cat`, `more`, `less`, `cut`, `awk` and `tail` - and piping of course. (and a wave to `awk` and `sed`)
* [Day 9](09.md): Looking at open ports with with `ss`, and a nod to `netstat`, install `nmap` and test. Install `ufw`, set up, enable and test etc. Discuss security resonsibilities as the sysadmin.
* [Day 10](10.md): Covering `cron`, `at`, and systemd timers
* [Day 11](11.md): Finding things with: `locate`, `find`, `grep`, `which`
* [Day 12](12.md): SFTP, the technology, clients, and copying up and down
* [Day 13](13.md): Permissions, users, groups, (ACLS and SELinux in the Extension)
* [Day 14](14.md): Using `adduser`, `visudo` to setup up a restricted "helper" to manage our host
* [Day 15](15.md): Repositories in more detail, how to enable "Multiverse", the role of PPAs in Ubuntu, enabling and installing from them
* [Day 16](16.md): Understanding and using `tar` and `gzip`
* [Day 17](17.md): Installing from source. Discussion, using `wget` to get a tarball, `tar` to extract and then configure, make and install. Discussion of security, maintenance issues.
* [Day 18](18.md): Log management and rotation, `logrotate`
* [Day 19](19.md): Inodes, hard links symlinks and `stat`
* [Day 20](20.md): Understanding how scripting work in Linux, the shebang, permissons and $PATH. A couple of simple sample scripts based on the filtering of logs we've been doing. Resources to explore further.
