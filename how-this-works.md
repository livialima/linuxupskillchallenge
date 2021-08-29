# PLEASE READ THIS FIRST! HOW THIS WORKS & FAQ

* [Website of the course](https://LinuxUpskillChallenge.org)
* [Monthly "Linux Upskill Challenge"](https://www.reddit.com/r/linuxupskillchallenge/)
* [Table of contents and full lesson source](https://github.com/livialima/linuxupskillchallenge) 
* [Chat with Discord](https://discordapp.com/invite/wd4Zqyk)

# FREQUENTLY ASKED QUESTIONS - FAQ

## Is this course for me?

This course is aimed at two groups: (1) Linux users who aspire to get Linux-related jobs in industry, such as junior Linux sysadmin, devops-related work and similar, and (2) Windows server admins who want to expand their knowledge to be able to work with Linux servers.

However, many others have happily used the course simply to improve their Linux command line skills – and that’s just fine too.

## Will I pass LPIC/RHCA/LFCS/Linux+ certification if I take this course?

**NO! This is NOT a preparation course** for any Linux certification exam. It can help you, sure, but please refer to a more specific cert training if that's what you are aiming for.

## When does it start?

The course always starts on the first Monday of the month. One of the key elements of the course is that the material is delivered in 20 bite-sized lessons, one each workday into the subreddit.

## How long does it take? How many hours should I dedicate to it?

Depending on your experience and dedication, you can expect to spend 1-2 hours going through each lesson. The first few days are pretty basic, but there's generally some "Extension" items to spice things up a bit.

But don't worry, you can totally self-pace this if you want, the resources and discussions are kept for reference forever (of for as long as Reddit allow us).

## Do I really need a cloud-based server?

Yes, if you’re in the target audience (see above) you definitely should. The fact that such a server is very remote, and open to attack from the whole Internet, “makes it real”. Learning how to setup such a VPS is also a handy skill for any sysadmin.

Instructions for setting up a suitable server with a couple of providers are in the "Day 0" posts. By all means use a different provider, but ensure you use Ubuntu LTS (preferably the latest version) and either use public key authentication or a Long, Strong, Unique password.

Of course, you’re perfectly entitled to use a local VM, an old laptop in the corner or a Raspberry Pi instead – and all of these will work fine for the course material. Just keep in mind what you are missing.

## But what if I don't have a credit card (or don't want to use one) to setup an AWS/Azure/GCP server?

Check the post "Day 0 - Creating Your Own Server - without a credit card". There are other options of cloud providers there.

## But what if I don’t want to use a cloud provider? I have a server/VM at home.

Then use your server. Check the post "Day 0 - Creating Your Own Server - without a credit card".

## Why Ubuntu, can I use another distro?

The notes assume Ubuntu Server LTS (latest version) and it would be messy to include instructions/variations for other distros (at least right now). If you use Debian or CentOS (also good server choices), you yourself will need to understand and cope with any differences (e.g. apt vs yum).

## Should I be stopping or terminating my server when not in use?

Using a free-tier VPS, the load of the course does not exceed any thresholds. You can leave it running during the challenge but it's good to keep an eye on it (i.e. don't forget about it later or your provider will start charging you).

## I noticed there was a kernel update, but no one said to reboot.

Reboot it. This is one of the few occasions you will need to reboot your server, go for it.
The command for that is `sudo reboot now`

## I still have questions/doubts! What do I do?!

Feel free to post questions or comments here in the subreddit – or chat using the Discord server (<https://discordapp.com/invite/wd4Zqyk>) run by u/cobaltrune.

If you are inclined to contribute to the material and had the means to do it (i.e. a github account) you can [submit an issue](https://github.com/livialima/linuxupskillchallenge/issues/new/choose) to the source directly.

# Credits

The magnificent [Steve Brorens](http://snori74.blogspot.com) is the mastermind behind the Linux Upskill Challenge. Unfortunately, [he passed away](https://www.reddit.com/r/linuxupskillchallenge/comments/mki3uw/rest_in_peace_snori74/) but not before ensuring the course would continue to run in his absence.
We miss you, snori.

[Livia Lima](https://bio.link/livialima) is the one currently maintaining the material. Give her a shout out on [Twitter](http://twitter.com/intent/tweet?url=https://www.reddit.com/r/linuxupskillchallenge/&text=This%20month%20I%20am%20doing%20the%20%23LinuxUpskillChallenge%20%40livialimatweets).

