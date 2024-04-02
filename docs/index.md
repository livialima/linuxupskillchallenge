# Linux Upskill Challenge
## Learn the skills required to sysadmin a remote Linux server from the command line.


A month-long course aimed at those who aspire to get Linux-related jobs in the industry - junior Linux sysadmin, DevOps-related work, and similar. Server focused and command line, but assumes essentially no prior knowledge, and starts off very gently - designed to be well-suited to a Windows or Apple person as well as those that already using Linux in some form.

This was a paid course in the past, but is now free and fully open source - so costs you nothing but your time!

### What's it about?

1. Learn Linux enough to admin your own server
2. The focus is on practical skills
3. Heavily hands-on
4. Acquire skills during a month, committing of 1-2 hours each day
5. Lots of curated external links
6. Much less ‘formal’ than RHEL or Linux Foundation training

## Start Here

First, take a look at the [FAQ and understand how the challenge works](how-this-works.md), most of your questions will be answered there.

If you’re keen to do this, then you will need your own Internet-exposed server - but full instructions on how to set this up for free or cheap are also provided.

The course restarts on the first Monday of each month so don't worry if you can't make it on your first round!

## Table of Contents

* [Day 0](00.md) - **Creating Your Own Server**: how to setup your lab in AWS, Azure, Google Cloud, Oracle Cloud, Digital Ocean, Linode, Vultr and on a local server too!
* [Day 1](01.md) - **Get to know your server**: Starting with `ssh`-ing in and some simple commands like: `ls`, `uptime`, `free`, `df -h`, `uname -a`. Extensions on doing passwordless login with public keys and and an `ssh` config file.
* [Day 2](02.md) - **Basic navigation**: Basic navigation, the "man" pages, file hierarchy
* [Day 3](03.md) - **Power trip!**: Working with `sudo`, `uptime`, `timezones`, changing your hostname
* [Day 4](04.md) - **Installing software, exploring the file structure**: Using 'apt' to find and install software. Use of `mc` to explore the filesystem. Looking at the contents of: `/etc/passwd`, `/etc/ssh/sshd_config` and `/var/log/auth.log`
* [Day 5](05.md) - **More or less...**: Using `more`, `less` and navigating in these. Dotfiles, history, tab completion, and using the `nano` txt editor
* [Day 6](06.md) - **Editing with "vim"**: Learning `vim`, the minimal knowledge, but also via `vimtutor`
* [Day 7](07.md) - **The server and its services**: Installing Apache2, stopping and starting, altering the content, reading logs
* [Day 8](08.md) - **The infamous "grep" and other text processors**: Hands-on with text tools like `grep`, `cat`, `more`, `less`, `cut`, `awk` and `tail` - and piping of course. (and a wave to `awk` and `sed`)
* [Day 9](09.md) - **Diving into networking**: Looking at open ports with `ss`, and a nod to `netstat`, install `nmap` and test. Install `ufw`, set up, enable and test etc. Discuss security resonsibilities as the sysadmin.
* [Day 10](10.md) - **Getting the computer to do your work for you**: Covering `cron`, `at`, and systemd timers
* [Day 11](11.md) - **Finding things...**: Finding things with: `locate`, `find`, `grep`, `which`
* [Day 12](12.md) - **Transferring files**: SFTP, the technology, clients, and copying up and down
* [Day 13](13.md) - **Users and Groups**: Using `adduser`, `visudo` to setup up a restricted "helper" to manage our host
* [Day 14](14.md) - **Who has permission?**: Permissions, users, groups, (ACLS and SELinux in the Extension)
* [Day 15](15.md) - **Deeper into repositories...**: Repositories in more detail, how to enable "Multiverse", the role of PPAs in Ubuntu, enabling and installing from them
* [Day 16](16.md) - **Archiving and compressing**: Understanding and using `tar` and `gzip`
* [Day 17](17.md) - **Build from the source**: Installing from source. Discussion, using `wget` to get a tarball, `tar` to extract and then configure, make and install. Discussion of security, maintenance issues.
* [Day 18](18.md) - **Logs, monitoring and troubleshooting**: Log management and rotation, `logrotate`
* [Day 19](19.md) - **Inodes, symlinks and other shortcuts**: Inodes, hard links symlinks and `stat`
* [Day 20](20.md) - **Scripting**: Understanding how scripting work in Linux, the shebang, permissions and $PATH. A couple of simple sample scripts based on the filtering of logs we've been doing. Resources to explore further.
* [Day 21](21.md) - **What's next?**: Closing the course with some suggestions.
