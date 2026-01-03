---
comments: true
---
# Day 0 - Creating Your Own Server - with Google Cloud Platform Free Tier

Refer to [Day 0 - Get Your Own Server](https://linuxupskillchallenge.org/00) to review your options:

* [In a Local Server/VM](https://linuxupskillchallenge.org/00-Local-Server)
* [In the Cloud (with providers like DigitalOcean, Linode and Vultr)](https://linuxupskillchallenge.org/00-VPS-small)
* [In the Cloud (with providers like AWS, Azure and Google Cloud)](https://linuxupskillchallenge.org/00-VPS-big)

**TIP**: check out the walk-though in the [complementary video](https://www.youtube.com/live/_-6UYOjRIVQ?t=8778s). This video covers a lot of possible setups (local server with VirtualBox, AWS, Digital Ocean, Azure, Linode, Google Cloud, Vultr and Oracle Cloud).

## Signing up with GCP

Sign-up is fairly simple - just provide your email address and a password of your choosing - along with a phone number for a 2FA - a second method of authentication.
You will need to also provide your VISA or other credit card information.

* Choose "Compute Engine" and click "VM Instances".
* Create a new instance.
* Select whichever regions you want.
* For Machine Configuration select series and set to "E2" and Machine type to "e2-micro".
* Change boot disk to "Ubuntu LTS"

Now after we create our own server, we need to open all ports and protocols to access from anywhere. While this might be unwise for a production server, it is what we want for this course.

Navigate to your GCP home page and goto Networking > VPC Network > Firewall > Create Firewall

Set "Direction of Traffic" to "Ingress"
Set "Target" to "All instances in the network"
Set "Source Filter" to "IP Ranges"
Set "Source IP Ranges" to  "0.0.0.0/0"
Set "Protocols and Ports" to "Allow All"
Create and repeat the steps by creating a new Firewall and setting "Direction of Traffic" to "Egress"

## Logging in for the first time

Select your instance and click "SSH", it will open a new window console. To access the root, type `sudo -i passwd` in the command line then set your own password. Log in by typing `su` and then your password. Note that the password won't show as you type or paste it.

## Remote access via SSH

You can also refer to <https://cloud.google.com/compute/docs/instances/connecting-advanced#thirdpartytools> if you intend to access your server via third-party tools (e.g. Putty).

## You are now a sysadmin

Confirm that you can do administrative tasks by typing:

```bash
sudo apt update
```

Then:

```bash
sudo apt upgrade -y
```

Don't worry too much about the output and messages from these commands, but it should be clear whether they succeeded or not. (Reply to any prompts by taking the default option). These commands are how you force the installation of updates on an Ubuntu Linux system, and only an administrator can do them.

**REBOOT**

When a kernel update is identified in this first check for updates, the system might ask the user to reboot. This is one of the few occasions you will need to reboot your server, so go for it after the update is done:

```bash
sudo reboot now
```

Your server is now all set up and ready for the course!

Note that:

* This server is now running, and completely exposed to the whole of the Internet
* You alone are responsible for managing it
* You have just installed the latest updates, so it should be secure for now

To logout, type `logout` or `exit`.

## When you are done

You should be safe running the VM during the month for the challenge, but you can **Stop** the instance at any point. It will continue to count towards the bill, though.

When you no longer need the VM, **Terminate/Destroy** instance.

**Now you are ready to start the challenge. [Day 1](https://linuxupskillchallenge.org/01), let's go!**
