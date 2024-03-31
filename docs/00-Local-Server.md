---
comments: true
---
# Day 0 - Creating Your Own Local Server

Refer to [Day 0 - Get Your Own Server](https://linuxupskillchallenge.org/00) to review your options:

* [In a Local Server](https://linuxupskillchallenge.org/00-Local-Server)
* [In the Cloud (with providers like DigitalOcean, Linode and Vultr)](https://linuxupskillchallenge.org/00-VPS-small)
* [In the Cloud (with providers like AWS, Azure and Google Cloud)](https://linuxupskillchallenge.org/00-VPS-big)

## It's difficult to create a server in cloud without a credit card

We normally recommend using Amazon's AWS "Free Tier" or Digital Ocean - but both require that you have a credit card. The same is true of the Microsoft Azure, Google's GCP and the vast majority of providers listed at Low End Box (<https://lowendbox.com/>).

Some will accept PayPal, or Bitcoin - but typically those who don't have a credit card don't have these either.

**WARNING:** If you go searching too deeply for options in this area, you're very likely to come across a range of scammy, fake, or fraudulent sites. While we've tried to eliminate these from the links below, please do be careful! It should go without saying that none of these are "affiliate" links, and we get no kick-backs from any of them :-)

### Cards that work as, or like, credit cards

* Debit cards
* <https://www.paysafecard.com/>
* privacy.com (US-only)

## But what if I don’t want to use a cloud provider? You can just work with a local virtual machine

You can run the challenge on a home server and all the commands will work as they would on a cloud server. However, not being exposed to the wild certainly loses the feel of what real sysadmins have to face.

If you set your own VM at a private server, go for the minimum requirements like 1GHz CPU core, 1GB RAM, and a couple of gigs of disk space. You can always adapt this to your heart's desire (or how much hardware you have available).

Our recommendation is: use a cloud server if you can, to get the full experience, but don't get limited by it. **This is your server.**

## Download the Linux ISO

Go to the Official [Ubuntu](https://ubuntu.com/download/server) page and download the latest LTS (Long Term Support) available version.

**NOTE**: download the **server** version, NOT the **desktop** version.

## Create a Virtual Machine with VirtualBox

* [Create a local Linux server with VirtualBox (video)](https://youtu.be/nKcfhI1B4mA)

Install [VirtualBox](https://www.virtualbox.org/), when ready:

* Click on *Machine > New*
* Give a name to your VM and select the *Type* Linux. Click *Next*.
* Adjust hardware: 1024MB memory and 1 CPU (this is the minimum, but you can reserve more if your host machine can provide it). Click *Next*
* Virtual hard disk: 2,5GB is minimum, 5GB is a good number. Click *Next*.
* **Finish** but we're not done yet.
* The new VM should show up in a list of VMs, select it.
* Click on *Machine > Settings*
* Click on *Storage*. Right-click on Controllet IDE, click on *Optical Drive*.
* Select the Linux ISO you downloaded from the list if available, if not click *Add* and find it in your directories. Click *Choose*.
* Click on *Network* and change the network adapter to **Bridged Adapter**.
* Click *OK*
* Click **Start** or *Machine > Start > Normal Start*.

## Installing Linux

After a few seconds the welcome screen will load.
At the end of each page there's DONE and BACK buttons.
Use **arrow keys** and the **enter key** to select options. When you're ok with your selection, use the arrow key to go down to DONE and **enter** to go to the next page.

* **Welcome Screen:** Select your language
* **Keyboard Configuration:** Select Keyboard type
* **Choose type of install:** Select _Ubuntu Server (minimized)_. It comes with most of the packages you need without being bloated. It will install faster too.
* **Network Connections:** If you have setup the VM to use a **bridged adapter** like instructed, you don’t really have to worry a lot. The installer will automatically detect the DHCP settings from your local network router and you just have to select DONE.
* **Configure Proxy:** If your system requires any http proxy to connect to the internet enter the proxy address, otherwise just select DONE.
* **Configure Ubuntu archive mirror:** Leave it as default. DONE.
* **Guided Storage Configurations:** We are going to utilize the entire storage space reserved for this VM and that's why we select **Use the Entire Disk** option.
* **Storage Configuration:** Leave it the standard storage configuration and select DONE. When prompted to confirm, don't worry. This will only use the VM disk, not your computer disk.
* **Profile Setup:** Enter your name, your server’s name, your username and password. This user will be your `administrator` user in the system (or `sudo`), so don't forget this password.
* **Update to Ubuntu Pro:** No. Skip for now.
* **SSH setup:** Select on Install OpenSSH server because that’s how you will connect to your server later.
* **Featured Server Snaps:** None of these packages are important now, just select DONE. 
* **Installing System:** Now you have to wait for a few minutes for your system to install. You can "cheat" and speed up the install by skipping the downloading of updates, select **Cancel update and Reboot** when it appears at the bottom of the page, a few moments later. You can complete the updates after the first boot. After the installation is complete the system will reboot automatically.

## Logging in for the first time

After the first reboot, it will show a black screen asking for the `login`. That's when you use that username and password you created during the install. 

Note: the password will not show up, not even `***`, just trust that is taking it in.

If you need to find out the IP address for the VM, just type in the console:

`ip address`

That will give you the `inet`, i.e., the ip address. You will need that to connect with SSH.

## Remote access via SSH

If you are using Windows 10 or 11, follow the instructions to [connect using the native SSH client](https://youtu.be/Z46YbczqbiE). In older versions of Windows, you may need to install a 3rd party SSH client, like [PuTTY](https://youtu.be/pWDHUlvcAsg) and generate a [ssh key-pair](https://youtu.be/4jakCV5JYx0).

If you are on Linux or MacOS, open a terminal and run the command:

`ssh username@ip_address`

Or, using the SSH private key, `ssh -i private_key username@ip_address`

Enter your password (or a passphrase, if your SSH key is protected with one)

Voila! You have just accessed your server remotely.

If in doubt, consult the [complementary video](https://youtube.com/live/_-6UYOjRIVQ) that covers a lot of possible setups (local server with VirtualBox, AWS, Digital Ocean, Azure, Linode, Google Cloud, Vultr and Oracle Cloud).

## You are now a sysadmin

Confirm that you can do administrative tasks by typing:

`sudo apt update`

Then:

`sudo apt upgrade -y`

Don't worry too much about the output and messages from these commands, but it should be clear whether they succeeded or not. (Reply to any prompts by taking the default option). These commands are how you force the installation of updates on an Ubuntu Linux system, and only an administrator can do them.

**REBOOT**

When a kernel update is identified in this first check for updates, this is one of the few occasions you will need to reboot your server, so go for it after the update is done:

`sudo reboot now`

Your server is now all set up and ready for the course!

Note that:

* This server is now running but is not exposed to the Internet, i.e. other people will not be able to attempt to connect. We recommend you keep it that way. It is one thing to expose a server in the cloud, exposing your home network is another story. For your own security, don't do it.

To logout, type `logout` or `exit`.

## When you are done

Just type:

`sudo shutdown now`

Or click on _Force Shutdown_

## Some Other Options

* [Install Linux on Windows with WSL](https://docs.microsoft.com/en-us/windows/wsl/install)
* [Turn an old PC into a Linux server](https://dev.to/jayesh_w/this-is-how-i-turned-my-old-laptop-into-a-server-1elf)
* [Install Ubuntu server on a Raspberry Pi](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#1-overview)
* [Run Linux in a Docker container](https://hudsonmendes.medium.com/docker-have-a-ubuntu-development-machine-within-seconds-from-windows-or-mac-fd2f30a338e4)


**Now you are ready to start the challenge. [Day 1](https://linuxupskillchallenge.org/01), here we go!**
