# PLEASE READ THIS FIRST! HOW THIS WORKS & FAQ

* [Website of the course](https://LinuxUpskillChallenge.org)
* [Table of contents and full lesson source](https://github.com/livialima/linuxupskillchallenge) 
* [Complementary video playlists](https://www.youtube.com/@livia2lima/search?query=linuxupskillchallenge)
* [Monthly "Linux Upskill Challenge" on Reddit](https://www.reddit.com/r/linuxupskillchallenge/)
* [Chat with Discord](https://discord.gg/linux-upskill-challenge-682046666928685068)

# HOW THIS WORKS

## In a nutshell

* Completely free and open source
* Focused on practical skills
* Heavily hands-on
* Starts at the 1st Monday of each month
* Runs for 20 weekdays (Mon-Fri)
* Often points to curated external links, expanding on the topic of the day.
* Much less ‘formal’ than RHEL or Linux Foundation training

## Requirements

* A cloud-based Ubuntu Linux server - full instructions on how to set this up are in the ‘Day 0’ lessons
* Basic computer literacy - no prior knowledge of Linux is required but you should be fairly confortable operating your own Windows/Mac machine
* Requires a daily commitment of 1-2 hours each day for a month but can be self-paced

# FREQUENTLY ASKED QUESTIONS - FAQ

## Is this course for me?

This course is primarily aimed at two groups:

1. Linux users who aspire to get Linux-related jobs in industry, such as junior Linux sysadmin, devops-related work and similar, and
2. Windows server admins who want to expand their knowledge to be able to work with Linux servers.

However, many others have happily used the course simply to improve their Linux command line skills or to learn Linux for the first time – and that’s just fine too.

## Will I pass LPIC/RHCA/LFCS/Linux+ certification if I take this course?

**NO! This is NOT a preparation course** for any Linux certification exam. It can help you, sure, but please refer to a more specific cert training if that's what you are aiming for.

## When does it start?

The course always starts on the **first Monday of the month**. One of the key elements of the course is that the material is delivered in 20 bite-sized lessons, one each workday.

## How long does it take? How many hours should I dedicate to it?

Depending on your experience and dedication, you can expect to spend 1-2 hours going through each lesson. The first few days are pretty basic, but there's generally some "Extension" items to spice things up a bit.


## I just learned about the challenge and it's already on Day X. Should I wait for next month to start?

Only if you want to. The material is available year-round so you can totally self-pace this if you prefer.

## Do I really need a cloud-based server?

Yes, if you’re in the target audience (see above) you definitely should. The fact that such a server is very remote, and open to attack from the whole Internet, “makes it real”. Learning how to setup such a VPS is also a handy skill for any sysadmin.

Instructions for setting up a suitable server with a couple of providers are in the "Day 0" lessons. By all means use a different provider, but ensure you use Ubuntu LTS (preferably the latest version) and either use public key authentication or a Long, Strong, Unique password (we also have instructions on how to do that).

Of course, you’re perfectly entitled to use a local VM, a Raspberry Pi or even just WLS instead – and all of these will work fine for the course material. Just keep in mind what you are missing.

## But what if I don't have a credit card (or don't want to use one) to setup an AWS/Azure/GCP server?

Please read [Day 0 - Creating Your Own Local Server](https://github.com/livialima/linuxupskillchallenge/blob/master/docs/00-Local-Server.md). There are other options of cloud providers and different payment options. But if none of them works for you, try creating your own local VM.

## But what if I don’t want to use a cloud provider? I have a server/VM at home.

Then use your server. Check the post "Day 0 - Creating Your Own Local Server".

## Why Ubuntu, can I use another distro?

The notes assume Ubuntu Server LTS (latest version) and it would be messy to include instructions/variations for other distros (at least right now). If you use Debian or other Debian-based distros (Mint, Pop!OS, Kali) it will make little to no difference because they all have the same structure.

But if you choose RedHat-based distros (Fedora, CentOS, AlmaLinux) or distros like Arch, Gentoo, OpenSUSE, you yourself will need to understand and cope with any differences (e.g. apt vs yum vs pacman).

If none of those names make any sense to you, you shouldn't be picking distros. Go read [Linux Journey](https://linuxjourney.com/lesson/linux-history) first lesson instead.

## Should I be stopping or terminating my server when not in use?

Using a free-tier VPS, the load of the course does not exceed any thresholds. You can leave it running during the challenge but it's good to keep an eye on it (i.e. don't forget about it later or your provider will start charging you).

## I noticed there was a kernel update, but no one said to reboot.

Reboot it. This is one of the few occasions you will need to reboot your server, go for it.
The command for that is `sudo reboot now`

## I still have questions/doubts! What do I do?!

Feel free to post questions or comments in the [Reddit post](https://www.reddit.com/r/linuxupskillchallenge) or chat using the [Discord server](https://discord.gg/linux-upskill-challenge-682046666928685068).

*Aug-2023 update: Still working on alternatives to Reddit, please be patient.*

If you are inclined to contribute to the material and had the means to do it (i.e. a github account) you can [submit an issue](https://github.com/livialima/linuxupskillchallenge/issues/new/choose) to the source directly.

# Credits

The magnificent [Steve Brorens](http://snori74.blogspot.com) is the mastermind behind the Linux Upskill Challenge. Unfortunately, [he passed away](https://www.reddit.com/r/linuxupskillchallenge/comments/mki3uw/rest_in_peace_snori74/) but not before ensuring the course would continue to run in his absence.
We miss you, snori.

[Livia Lima](https://bio.link/livialima) is the one currently maintaining the material. Give her a shout out on [Mastodon](https://fosstodon.org/@livialima) or [Twitter](http://twitter.com/intent/tweet?text=This%20month%20I%20am%20doing%20the%20%23LinuxUpskillChallenge%20%40livialimatweets).

