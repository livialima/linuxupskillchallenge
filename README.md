<div align="center" width="100%">
  <h1>Linux Upskill Challenge</h1>
  <h3>An Introduction to Linux Server Administration!</h3>
  <a href="https://linuxupskillchallenge.org/"><img alt="" src="https://img.shields.io/website?style=for-the-badge&url=https%3A%2F%2Flinuxupskillchallenge.org%2F" /></a>
  <a href="https://www.reddit.com/r/linuxupskillchallenge/"><img alt="Reddit" src="https://img.shields.io/reddit/subreddit-subscribers/linuxupskillchallenge?logo=reddit&logoColor=white&style=for-the-badge" /></a>
  <a href="https://discord.com/invite/wd4Zqyk"><img alt="Discord" src="https://img.shields.io/discord/682046666928685068?label=discord&logo=discord&logoColor=white&style=for-the-badge" /></a></br>
  <a href="https://www.buymeacoffee.com/livialima" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/arial-yellow.png" alt="Buy Me A Coffee" style="height: 45px !important;width: 164px !important;" ></a>
</div>

This includes all the source material for the 20 lessons of what was previously a commercial online Linux server admin course - now free for you to learn with!

*If you spot any typos or "dead links" simply [raise an issue](https://github.com/livialima/linuxupskillchallenge/issues/new/choose).*

* Website of the course: (<https://LinuxUpskillChallenge.org>)
* Monthly "Linux Upskill Challenge": (<https://www.reddit.com/r/linuxupskillchallenge/>)
* Lesson "source": (<https://github.com/livialima/linuxupskillchallenge>)
* Chat at: (<https://discordapp.com/invite/wd4Zqyk>)

## READ THIS FIRST!
[HOW THIS WORKS & FAQ](docs/how-this-works.md)

## Table of Contents

* [Day 0](docs/00-AWS-Free-Tier.md) - **Creating Your Own Server**: how to setup your lab in [AWS](docs/00-AWS-Free-Tier.md), [Azure](docs/00-Azure-Free-Tier.md), [Google Cloud](docs/00-Google-Cloud.md), [Digital Ocean](docs/00-VPS-small.md) and [on a local server](docs/00-Local-Server.md)
* [Day 1](docs/01.md) - **Get to know your server**: Starting with `ssh`-ing in and some simple commands like: `ls`, `uptime`, `free`, `df -h`, `uname -a`. Extensions on doing passwordless login with public keys and and an `ssh` config file.
* [Day 2](docs/02.md) - **Basic navigation**: Basic navigation, the "man" pages, file hierarchy
* [Day 3](docs/03.md) - **Power trip!**: Working with `sudo`, `uptime`, `timezones`, changing your hostname
* [Day 4](docs/04.md) - **Installing software, exploring the file structure**: Using 'apt' to find and install software. Use of `mc` to explore the filesystem. Looking at the contents of: `/etc/passwd`, `/etc/ssh/sshd_config` and `/var/log/auth.log`
* [Day 5](docs/05.md) - **More or less...**: Using `more`, `less` and navigating in these. Dotfiles, history, tab completion, and using the `nano` txt editor
* [Day 6](docs/06.md) - **Editing with "vim"**: Learning `vim`, the minimal knowledge, but also via `vimtutor`
* [Day 7](docs/07.md) - **The server and its services**: Installing Apache2, stopping and starting, altering the content, reading logs
* [Day 8](docs/08.md) - **The infamous "grep" and other text processors**: Hands-on with text tools like `grep`, `cat`, `more`, `less`, `cut`, `awk` and `tail` - and piping of course. (and a wave to `awk` and `sed`)
* [Day 9](docs/09.md) - **Diving into networking**: Looking at open ports with `ss`, and a nod to `netstat`, install `nmap` and test. Install `ufw`, set up, enable and test etc. Discuss security resonsibilities as the sysadmin.
* [Day 10](docs/10.md) - **Getting the computer to do your work for you**: Covering `cron`, `at`, and systemd timers
* [Day 11](docs/11.md) - **Finding things...**: Finding things with: `locate`, `find`, `grep`, `which`
* [Day 12](docs/12.md) - **Transferring files**: SFTP, the technology, clients, and copying up and down
* [Day 13](docs/13.md) - **Who has permission?**: Permissions, users, groups, (ACLS and SELinux in the Extension)
* [Day 14](docs/14.md) - **Users and Groups**: Using `adduser`, `visudo` to setup up a restricted "helper" to manage our host
* [Day 15](docs/15.md) - **Deeper into repositories...**: Repositories in more detail, how to enable "Multiverse", the role of PPAs in Ubuntu, enabling and installing from them
* [Day 16](docs/16.md) - **Archiving and compressing**: Understanding and using `tar` and `gzip`
* [Day 17](docs/17.md) - **Build from the source**: Installing from source. Discussion, using `wget` to get a tarball, `tar` to extract and then configure, make and install. Discussion of security, maintenance issues.
* [Day 18](docs/18.md) - **Log rotation**: Log management and rotation, `logrotate`
* [Day 19](docs/19.md) - **Inodes, symlinks and other shortcuts**: Inodes, hard links symlinks and `stat`
* [Day 20](docs/20.md) - **Scripting**: Understanding how scripting work in Linux, the shebang, permissions and $PATH. A couple of simple sample scripts based on the filtering of logs we've been doing. Resources to explore further.
* [Day 21](docs/21.md) - **What's next?**: Closing the course with some suggestions.

*You are free to use this under the terms of the license, but feel free to donate or contribute to keep the challenge running:*
<p>
  <a href="https://www.buymeacoffee.com/livialima" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/arial-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
</p>
