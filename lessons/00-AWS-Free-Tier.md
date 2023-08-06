# Day 0 - Creating Your Own Server - with AWS Free Tier

* [Complementary video](https://youtube.com/live/_-6UYOjRIVQ?feature=share)
* [Previous "Day 0" threads](https://www.reddit.com/r/linuxupskillchallenge/search/?q=Day%200&restrict_sr=1)

**READ THIS FIRST!** [HOW THIS WORKS & FAQ](https://www.reddit.com/r/linuxupskillchallenge/comments/qeymzb/please_read_this_first_how_this_works_faq/)

## INTRO

[Refer to Day 0 - Creating Your Own Server in the Cloud](https://github.com/livialima/linuxupskillchallenge/blob/master/00-VPS-big.md) for more.

## AWS free-tier, is it always free?
The AWS Free Tier is designed to allow new users to explore and test various AWS services without incurring any costs for 12 months following the AWS sign-up date, subject to certain usage limits. When your 12 month free usage term expires or if your application use exceeds the tiers, you simply pay standard, pay-as-you-go service rates. You can extend that free usage with an Educate Pack, if you are eligible.

## Signing up with AWS Educate pack:

* Go to the AWS Educate website at https://aws.amazon.com/education/awseducate/
* Click on the "Join AWS Educate" button located at the top right corner of the page.
* Choose the option that best describes you, whether you are a student or an educator.
* Create an AWS Educate account by filling out the required information, including your name, email address, and the name of your school or institution.
* Once you have created your account, you can access the AWS Educate Starter Account, which includes $100 in AWS Promotional Credits, free access to over 25 AWS services, and self-paced labs and tutorials to help you get started with AWS.

Please note that the AWS Educate program is intended for students and educators who are interested in learning about cloud computing and AWS services. In order to be eligible for the program, you will need to provide proof of your status as a student or educator.

## Signing up with AWS

Sign-up is fairly simple - just provide your email address and a password of your choosing - along with a phone number for a 2FA - a second method of authentication.
You will need to also provide your VISA or other credit card information.

* For Support Plan, choose "Basic Plan/Free"

Logout, then login again, and then select:

* Services - from the top menu
* EC2 - from the list of services

In "AWS speak" the server we'll create will be an "EC2 compute instance" - so now choose "Launch Instance". You will be presented with several image options - choose one with "Ubuntu Server LTS" in the name.
At the next screen you'll have options for the type - typically only "t2.micro" is eligible for the Free Tier, but this is fine, so select to "review and Launch"
At the review screen there will be an option "Security Groups" - this is in fact a firewall configuration which AWS provides by default. While a good thing in general, for our purposes we want our server completely exposed, so we'll edit this to effectively disable it, like this:

* Select "Configure Security Group"
* Select "Add Rule"
* Type: "All traffic", Source: "Anywhere"

This opens all ports and protocols to access from anywhere. While this might be unwise for a production server, it is what we want for this course.

Now select "Launch". When prompted for a key pair, create one.

Your server instance should now launch, and you can login to it by:

* Services, EC2, Running instances, Connect

## Remote access via SSH

You should see an "IPv4" entry for your server, this is its unique Internet IP address, and is how you'll connect to it via SSH (the Secure Shell protocol) - something we'll be covering in the first lesson.

This video, "How to Set Up AWS EC2 and Connect to Linux Instance with PuTTY" (<https://www.youtube.com/watch?v=kARWT4ETcCs>), gives a good overview of the process.

You will be logging in as the user *ubuntu*. It has been added to the 'adm' and 'sudo' groups, which on an Ubuntu system gives it access to read various logs - and to "become root" as required via the _sudo_ command.

## You are now a sysadmin

Confirm that you can do administrative tasks by typing:

`sudo apt update`

(Normally you'd expect this would prompt you to confirm your password, but because you're using public key authentication the system hasn't prompted you to set up a password - and AWS have configured *sudo* to not request one for "ubuntu").

Then:

`sudo apt upgrade`

Don't worry too much about the output and messages from these commands, but it should be clear whether they succeeded or not. (Reply to any prompts by taking the default option). These commands are how you force the installation of updates on an Ubuntu Linux system, and only an administrator can do them.

To logout, type _logout_ or _exit_.

Your server is now all set up and ready for the course!

Note that:

* This server is now running, and completely exposed to the whole of the Internet
* You alone are responsible for managing it
* You have just installed the latest updates, so it should be secure for now
