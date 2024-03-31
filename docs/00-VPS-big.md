---
comments: true
---
# Day 0 - Creating Your Own Server in the Cloud

Refer to [Day 0 - Get Your Own Server](https://linuxupskillchallenge.org/00) to review your options:

* [In a Local Server](https://linuxupskillchallenge.org/00-Local-Server)
* [In the Cloud (with providers like DigitalOcean, Linode and Vultr)](https://linuxupskillchallenge.org/00-VPS-small)
* [In the Cloud (with providers like AWS, Azure and Google Cloud)](https://linuxupskillchallenge.org/00-VPS-big)

## Signing up with a VPS

Sign-up is fairly simple - just provide your email address and a password of your choosing - along with a phone number for a 2FA or another second method of authentication. You will need to also provide your credit card information.

### Comparison

| Provider      | Instance Type           | vCPU | Memory | Storage   | Price*  | Trial Credits  | 
| ------------- | ----------------------- | ---- | ------ | --------- | ------ | -------------- | 
| [AWS](https://aws.amazon.com/free/)           | t2.micro                | 1    | 1 GB   | 8 GB SSD  | $18.27 | Free Tier for 1 year |
| [Azure](https://azure.microsoft.com/free/)         | B1                      | 1    | 1 GB   | 30 GB SSD | $12.26 | $200 / 30 days + Free Tier for 1 year |
| [GCP](https://cloud.google.com/free/docs/free-cloud-features)           | e2-micro                | 1    | 1 GB   | 10 GB SSD | $ 7.11 | $300 / 90 days |
| [Oracle](https://www.oracle.com/cloud/free/)        | VM.Standard.E2.1.Micro  | 1    | 1 GB   | 45 GB SSD | $19.92 | $300 / 30 days + Always Free services |

* *Estimate prices*

On a side note, avoid IBM Cloud as much as you can. They do not offer good deals and, according to some reports from previous students, their Linux VM is tampered with enough to the point some commands do not work as expected.

### Educational Packs

* AWS Educate at [https://aws.amazon.com/education/awseducate/](https://aws.amazon.com/education/awseducate/)
* Azure for Students at [https://azure.microsoft.com/en-gb/free/students/](https://azure.microsoft.com/en-gb/free/students/)
* Google Cloud for Students at [https://cloud.google.com/edu/students](https://cloud.google.com/edu/students)
* Oracle Academy Cloud Program at [https://academy.oracle.com/en/solutions-cloud-program.html](https://academy.oracle.com/en/solutions-cloud-program.html)

## Create a Virtual Machine 

The process is basically the same for all these VPS, but here are some step-by-steps:

* [VM with AWS](https://linuxupskillchallenge.org/00-AWS-Free-Tier)
* [VM with Azure](https://linuxupskillchallenge.org/00-Azure-Free-Tier)
* [VM with GCP](https://linuxupskillchallenge.org/00-Google-Cloud)

### VM with Oracle Cloud

* Choose "Compute, Instances" from the left-hand sidebar menu.
* Click on *Create Instance*
* Choose a hostname because the default ones are pretty ugly.
* **Placement**: it will automatically choose the one closest to you.
* **Change Image**: Select the image "Ubuntu" and opt for the latest LTS version
* **Change Shape**: Click on "Specialty and previous generation". Click *VM.Standard.E2.1.Micro* - the option with 1GB Mem / 1 CPU / Always Free-eligible
* **Add SSH Keys**: select "Generate a key pair for me" and download the private key to connect with SSH. You can also [add a new public key that you created locally](https://www.oracle.com/webfolder/technetwork/tutorials/obe/cloud/compute-iaas/generating_ssh_key/generate_ssh_key.html#summary)
* Create

## Logging in for the first time

Select your instance and click "SSH", it will open a new window console. To access the root, type "sudo -i passwd" in the command line then set your own password. Log in by typing "su" and "password". Note that the password won't show as you type or paste it.

## Remote access via SSH

You should see a "Public IPv4 address" (or similar) entry for your server in the account's control panel, this is its unique Internet IP address, and it is how you'll connect to it via SSH (the Secure Shell protocol) - something we'll be covering in the first lesson.

If you are using Windows 10 or 11, follow the instructions to [connect using the native SSH client](https://youtu.be/Z46YbczqbiE). In older versions of Windows, you may need to install a 3rd party SSH client, like [PuTTY](https://youtu.be/pWDHUlvcAsg), and generate an [ssh](https://youtu.be/4jakCV5JYx0) [key pair](https://youtu.be/4jakCV5JYx0).

If you are on Linux or MacOS, open a terminal and run the command:

`ssh username@ip_address`

Or, using the SSH private key, `ssh -i private_key username@ip_address`

Enter your password (or a passphrase, if your SSH key is protected with one)

Voila! You have just accessed your server remotely.

If in doubt, consult the [complementary video](https://youtube.com/live/_-6UYOjRIVQ) that covers a lot of possible setups (local server with VirtualBox, AWS, Digital Ocean, Azure, Linode, Google Cloud, Vultr, and Oracle Cloud).

### What about the *root* user?

Working on a different approach from smaller VPS, the big guys don't let use root to connect. Don't worry, **root** still exists in the system, but since the provider already created an admin user from the beginning, you don't have to deal with it.

## You are now a sysadmin

Confirm that you can do administrative tasks by typing:

`sudo apt update`

(Normally you'd expect this would prompt you to confirm your password, but because you're using public key authentication the system hasn't prompted you to set up a password - and AWS has configured _sudo_* to not request one for "ubuntu").

Then:

`sudo apt upgrade -y`

Don't worry too much about the output and messages from these commands, but it should be clear whether they succeeded or not. (Reply to any prompts by taking the default option). These commands are how you force the installation of updates on an Ubuntu Linux system, and only an administrator can do them.

**REBOOT**

When a kernel update is identified in this first check for updates, this is one of the few occasions you will need to reboot your server, so go for it:

`sudo reboot now`

Your server is now all setup and ready for the course!

Note that:

* This server is now running and completely exposed to the whole Internet
* You alone are responsible for managing it
* You have just installed the latest updates, so it should be secure for now

To logout, type `logout` or `exit`.

## When you are done

You should be safe running the VM during the month for the challenge, but you can **Stop** the instance at any point. It will continue to count toward the bill, though.

When you no longer need the VM, **Terminate/Destroy** instance.

**Now you are ready to start the challenge. [Day 1](https://linuxupskillchallenge.org/01), here we go!**
