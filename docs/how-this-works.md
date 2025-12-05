# PLEASE READ THIS FIRST! HOW THIS WORKS & FAQ

## RESOURCES

* [Website of the course](https://LinuxUpskillChallenge.org)
* [Full lesson source](https://github.com/livialima/linuxupskillchallenge)
* [Complementary video playlists](https://www.youtube.com/@livia2lima/search?query=linuxupskillchallenge)
* [Monthly lessons on Lemmy](https://programming.dev/c/linuxupskillchallenge)
* [Monthly lessons on Reddit](https://www.reddit.com/r/linuxupskillchallenge/)
* [Chat with Discord](https://discord.gg/linux-upskill-challenge-682046666928685068)

## HOW THIS WORKS

### In a nutshell

* Completely free and open source
* Focused on practical skills
* Heavily hands-on and entirely on the command line
* Starts at the 1st Monday of each month
* Runs for 20 weekdays (Mon-Fri)
* Often points to curated external links, expanding on the topic of the day
* Much less ‘formal’ than RHEL or Linux Foundation training

### Requirements

* Commitment of 1-2 hours per lesson for a month but can be self-paced
* A cloud-based Ubuntu Linux server (preferably) or the means to create/build your own local Linux server. _- Full instructions on how to set this up are in the ‘Day 0’ lessons._
* Basic computer literacy - no prior knowledge of Linux is required but you should be fairly comfortable operating your own Windows/Mac machine, and know how to troubleshoot your own system problems. _- This is a course focused on Linux only; instructions on Windows/Mac settings to access that Linux server are available but they are NOT the priority._

## FREQUENTLY ASKED QUESTIONS - FAQ

### Is this course for me?

This course is primarily aimed at two groups:

1. Linux users who aspire to get Linux-related jobs in industry, such as junior Linux sysadmin, devops-related work and similar, and
2. Windows server admins who want to expand their knowledge to be able to work with Linux servers.

However, many others have happily used the course simply to **improve their Linux command line skills** or to **learn Linux for the first time** – and that’s just fine too.

### Will I pass LPIC/RHCA/LFCS/Linux+ certification if I take this course?

**NO! This is NOT a preparation course** for any Linux certification exam. It can help you, sure, but please refer to a more specific cert training if that's what you are aiming for.

### Do I need to register somewhere or I just have to read the posts everyday and follow along?

No registration is required. Just follow along and share your experience.

## Will I receive a certificate when I finish the challenge?

No certificates are available at the moment. But you can brag about it on [Lemmy](https://programming.dev/c/linuxupskillchallenge), [Reddit](https://www.reddit.com/r/linuxupskillchallenge/) or [Discord](https://discord.gg/linux-upskill-challenge-682046666928685068) if you feel inclined to do so.

### When does it start?

The course always starts on the **first Monday of the month**. One of the key elements of the course is that the material is delivered in 20 bite-sized lessons, one each workday, every month.

### How long does it take? How many hours should I dedicate to it?

Depending on your experience and dedication, you can expect to spend 1-2 hours going through each lesson. The first few days are pretty basic and it might take you just minutes, but there's generally some "Extension" items to spice things up a bit.

### I just learned about the challenge and it's already on Day X. Should I wait for next month to start?

Only if you want to. The material is [available year-round](https://github.com/livialima/linuxupskillchallenge) so you can totally self-pace this if you prefer.

### Do I really need a cloud-based server?

Yes, if you’re in the target audience (see above) you definitely should. The fact that such a server is very remote, and open to attack from the whole Internet, “makes it real”. Learning how to setup such a VPS is also a handy skill for any sysadmin.

Instructions for setting up a suitable server with a couple of providers are in the "Day 0" lessons. By all means use a different provider, but ensure you use Ubuntu LTS (preferably the latest version) and either use public key authentication or a _Long, Strong, Unique_ password (we also have instructions on how to do that).

Of course, you’re perfectly entitled to use a local VM, a Raspberry Pi or even just WSL instead – and all of these will work fine for the course material. Just keep in mind what you are missing.

### But what if I don't have a credit card (or don't want to use one) to setup an AWS/Azure/GCP server?

Please read [Day 0 - Creating Your Own Local Server](https://linuxupskillchallenge.org/00-Local-Server). There are other options of cloud providers and different payment options. But if none of them works for you, try creating your own local VM.

### But what if I don’t want to use a cloud provider? I have a server/VM at home.

Then use your own server/VM.

### Why are you pushing for renting an online cloud based server?! Why not make the VM route the desired option?! (aka this course is wrong/bad for making this decision)

Bro, chill. If you are this offended by this requirement, this course might be a bit too basic for you. Move on.

But if you really want to know the logic behind it, please also consider 3 things:

1. People may have limitations with local resources. That includes unrestricted access to a personal computer to install VirtualBox, or enough hardware power to run virtualization well, or having a computer at all. A very light server in the cloud makes it possible to run the challenge from any guest device, including smartphones. Many students have an Azure account and can use their school computer to access it. Most VPS offer free VM usage for the first 1-2 months. There are risks in using the cloud, yes, but we try to address them without cutting off this option for people that need it.
2. Each cloud provider has their own documentation, support and big enough user base to answer most of the questions a first-timer has. They are popular enough to have hundreds of YouTube videos and other materials available addressing the most basic setup problems, and a lot of it is designed to be simple and easy to understand. That's not the reality for when you want to create your own local server or VM. The community exists, yes, but the documentation is usually drier and a little bit more niche.
3. If you want the full sysadmin experience, you will need to work on a remote server. That's just a fact. You can try to emulate that feeling inside the secure walls of your local network with your safe little VM, but the providers suggested here have enough failsafe methods in place to let you play with a VM without burning your credits overnight. Cloud horror stories usually involve services/products not covered in the challenge. This is not mission critical. You can always turn off your VM when you're not using it.

**TL;DR**: This is a course focused on Linux. Spending more time debating the details of _where to run it_ instead of _how to use it_ deviates from the purpose of this course. [Day 0](https://linuxupskillchallenge.org/00/) is here to guide you in those first steps, and it will never be complete, so use it at your own discretion.

### Why Ubuntu, can I use another distro?

The notes assume Ubuntu Server LTS (latest version) and it would be messy to include instructions/variations for other distros (at least right now). If you use Debian or other Debian-based distros (Mint, Pop!OS, Kali) it will make little to no difference because they all have the same structure.

But if you choose RedHat-based distros (Fedora, CentOS, AlmaLinux) or distros like Arch, Gentoo, OpenSUSE, you yourself will need to understand and cope with any differences (e.g. apt vs yum vs pacman).

If none of those names make any sense to you, you shouldn't be picking distros. Go read [Linux Journey](https://linuxjourney.com/lesson/linux-history) first lesson instead.

### I already use [my own flavour of linux], how can I participate?

Most lessons use commands that are actually not restricted to Ubuntu. So you can still benefit from the challenge using your own distro, and can also contribute by aswering other people's questions with your current Linux experience.

### Should I be stopping or terminating my server when not in use?

Using a free-tier VPS, the load of the course does not exceed any thresholds. You can leave it running during the challenge but it's good to keep an eye on it (i.e. don't forget about it later or your provider will start charging you).

### I noticed there was a kernel update, but no one said to reboot.

Reboot it. This is one of the few occasions you will need to reboot your server, go for it.
The command for that is `sudo reboot now`

### I still have questions/doubts! What do I do?!

Feel free to post questions or comments in [Lemmy](https://programming.dev/c/linuxupskillchallenge), [Reddit](https://www.reddit.com/r/linuxupskillchallenge) or chat using the [Discord server](https://discord.gg/linux-upskill-challenge-682046666928685068).

If you are inclined to contribute to the material and had the means to do it (i.e. a github account) you can [submit an issue](https://github.com/livialima/linuxupskillchallenge/issues/new/choose) to the source directly.

## CREDITS

The magnificent [Steve Brorens](http://snori74.blogspot.com) is the mastermind behind the Linux Upskill Challenge. Unfortunately, [he passed away](https://www.reddit.com/r/linuxupskillchallenge/comments/mki3uw/rest_in_peace_snori74/) but not before ensuring the course would continue to run in his absence.
We miss you, snori.

[Livia Lima](https://bio.link/livialima) is the one currently maintaining the material. Give her a shout out on [Mastodon](https://fosstodon.org/@livialima) or [LinkedIn](https://www.linkedin.com/in/livialima/).
