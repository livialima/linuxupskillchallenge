---
comments: true
---
# Day 0 - Creating Your Own Server in the Cloud (but cheaper)

Refer to [Day 0 - Get Your Own Server](https://linuxupskillchallenge.org/00) to review your options:

* [In a Local Server/VM](https://linuxupskillchallenge.org/00-Local-Server)
* [In the Cloud (with providers like DigitalOcean, Linode and Vultr)](https://linuxupskillchallenge.org/00-VPS-small)
* [In the Cloud (with providers like AWS, Azure and Google Cloud)](https://linuxupskillchallenge.org/00-VPS-big)

## Signing up with a VPS

Sign-up is immediate - just provide your email address and a password of your choosing and you're in! To be able to create a VM, however, you may need to provide your credit card information (or other information for billing) in the account section.

### Comparison
| Provider      | Instance Type           | vCPU | Memory | Storage   | Price | Trial Credits  |
| ------------- | ----------------------- | ---- | ------ | --------- | ----- | -------------- |
| [Digital Ocean](https://m.do.co/c/0543704a0b92) | Basic Plan              | 1    | 1 GB   | 25 GB SSD | $6.00 | $200 / 60 days |
| [Linode](https://www.linode.com/lp/refer/?r=5f3727944be972fe99747977e0a25fc21390c5d0)        | Nanode 1GB              | 1    | 1 GB   | 25 GB SSD | $5.00 | $100 / 60 days |
| [Vultr](https://www.vultr.com/vultr-vs-linode/?promo=LINODE150)         | Cloud Compute - Regular | 1    | 1 GB   | 25 GB SSD | $5.00 | $250 / 30 days |

For more details:

* [Get started with Digital Ocean](https://docs.digitalocean.com/products/getting-started/)
* [Get started with Linode](https://www.linode.com/docs/products/platform/get-started/)
* [Get started with Vultr](https://www.vultr.com/resources/faq/)

## Create a Virtual Machine

The process is basically the same for all these VPS, but here some step-by-steps:

### VM with Digital Ocean (or Droplet)

* Choose "Manage, Droplets" from the left-hand sidebar. (a "droplet" is Digital Ocean's cute name for a server!)
* Click on *Create > Droplet*
* **Choose Region**: choose the one closes to you. Be aware that the pricing can change depending on the region.
* **DataCenter**: use the default (it will pick one for you)
* **Choose an image**: Select the image "Ubuntu" and opt for the latest LTS version
* **Choose Size**: Basic Plan (shared CPU) + Regular. Click the option with 1GB Mem / 1 CPU / 25GB SSD Disk
* **Choose Authentication Method**: choose "Password" and type a strong password for the root account.
* *Note that since the server is on the Internet it will be under immediate attack from bots attempting to "brute force" the root password. Make it strong!*
* **Or, if you want to be safer**, choose "SSH Key" and [add a new public key that you created locally](https://docs.digitalocean.com/products/droplets/how-to/add-ssh-keys/)
* Choose a hostname because the default ones are pretty ugly.
* Create Droplet

### VM with Linode (or Node)

* Click on *Create Linode* (a "linode" is Linode's cute name for a server)
* **Choose an Distribution**: Select the image "Ubuntu" and opt for the latest LTS version
* **Choose Region**: choose the one closest to you. Be aware that the pricing can change depending on the region.
* **Linode Plan**: Shared CPU + Nanode 1GB. This option has 1GB Mem / 1 CPU / 25GB SSD Disk
* **Linode Label**: Choose a hostname because the default ones are pretty ugly.
* **Choose Authentication Method**: on the "Root Password" and type a strong password for the root account.
* *Note that since the server is on the Internet it will be under immediate attack from bots attempting to "brute force" the root password. Make it strong!*
* **And, if you want to be safer**, click "Add An SSH Key" and [add a new public key that you created locally](https://www.linode.com/docs/guides/use-public-key-authentication-with-ssh/)
* Create Linode

### VM with Vultr

* Choose "Products, Instances" from the left-hand sidebar. (no cute names)
* Click on *Deploy Server*
* **Choose Server**: Cloud Compute (Shared vCPU) + Intel Regular Performance
* **Server Location**: choose the one closest to you. Be aware that the pricing can change depending on the region.
* **Server image**: Select the image "Ubuntu" and opt for the latest LTS version
* **Server Size**: Click the option with 1GB Mem / 1 CPU / 25GB SSD Disk
* **SSH Keys**: click "Add New" and [add a new public key that you created locally](https://www.vultr.com/docs/deploy-a-new-server-with-an-ssh-key/)
* *Note that since that there's no option to just authenticate with root password, you will need to create a SSH key.*
* **Server Hostname & Label**: Choose a hostname for your server.
* **Disable** "Auto Backups". They will not be required for the challenge and are only adding to the bill.
* Deploy Now

## Logging in for the first time with console

We are going to access our server using SSH but, if for some reason you get stuck in that part, there is a way to access it using a console:

* Digital Ocean: [Droplet Console](https://docs.digitalocean.com/products/droplets/how-to/connect-with-console/)
* Linode: [LISH Console](https://www.linode.com/docs/products/compute/compute-instances/guides/lish/)
* Vultr: [Web Console](https://www.vultr.com/docs/vultr-web-console-faq/)

## Remote access via SSH

You should see a "Public IPv4 address" (or similar) entry for your server in account's control panel, this is its unique Internet IP address, and it is how you'll connect to it via SSH (the Secure Shell protocol) - something we'll be covering in the first lesson.

* **Digital Ocean**: Click on *Networking tab > Public Network > Public IPv4 Address*
* **Linode**: Click on *Network tab > IP Addresses > IPv4 - Public*
* **Vultr**: Click on *Settings tab > Public Network > Address*

If you are using Windows 10 or 11, follow the instructions to [connect using the native SSH client](https://youtu.be/Z46YbczqbiE). In older versions of Windows, you may need to install a 3rd party SSH client, like [PuTTY](https://youtu.be/pWDHUlvcAsg) and generate a [ssh key-pair](https://youtu.be/4jakCV5JYx0).

If you are on Linux or MacOS, open a terminal and run the command:

`ssh username@ip_address`

Or, using the SSH private key, `ssh -i private_key username@ip_address`

Enter your password (or a passphrase, if your SSH key is protected with one)

Voila! You have just accessed your server remotely.

If in doubt, consult the [complementary video](https://youtube.com/live/_-6UYOjRIVQ) that covers a lot of possible setups (local server with VirtualBox, AWS, Digital Ocean, Azure, Linode, Google Cloud, Vultr and Oracle Cloud).

## Creating a working admin account

We want to follow the Best Practice of not logging as "root" remotely, so we'll create an ordinary user account, but one with the power to "become root" as necessary, like this:

`adduser snori74`

`usermod -a -G admin snori74`

`usermod -a -G sudo snori74`

(Of course, replace 'snori74' with your name!)

*This* will be the account that you use to login and work with your server. It has been added to the 'adm' and 'sudo' groups, which on an Ubuntu system gives it access to read various logs and to "become root" as required via the _sudo_ command.

To login using your new user, [copy the SSH key from root](https://askubuntu.com/questions/1218023/copying-ssh-key-from-root-to-another-user-on-same-machine/1218026#1218026).

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

* This server is now running, and completely exposed to the whole of the Internet
* You alone are responsible for managing it
* You have just installed the latest updates, so it should be secure for now

To logout, type `logout` or `exit`.

## When you are done

You should be safe running the VM during the month for the challenge, but you can **Stop** the instance at any point. It will continue to count to the bill, though.

When you no longer need the VM, **Terminate/Destroy** instance.

**Now you are ready to start the challenge. [Day 1](https://linuxupskillchallenge.org/01), here we go!**
