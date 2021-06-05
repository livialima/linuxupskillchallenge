# Day 0 - Creating Your Own Server - without a credit card

* [Previous "Day 0" threads](https://www.reddit.com/r/linuxupskillchallenge/search/?q=Day%200&restrict_sr=1)

## INTRO

We normally recommend using Amazon's AWS "Free Tier" (<http://aws.amazon.com>) or Digital Ocean (<https://digitalocean.com>) - but both require that you have a credit card. The same is true of the Microsoft Azure, Google's GCP and the vast majority of providers listed at Low End Box (<https://lowendbox.com/>).

Some will accept PayPal, or Bitcoin - but typically those who don't have a credit card don't have these either.

Note that many will also require you to be over 18 (but not all), and this is true also of some of the options blow.

**WARNING:** If you go searching too deeply for options in this area, you're very likely to come across a range of scammy, fake, or fraudulent sites. While we've tried to eliminate these from the links below, please do be careful! It should go without saying that none of these are "affiliate" links, and we get no kick-backs from any of them :-)

So, if you are in this situation, below are some of your options:

## Kind of a free trial

* <https://cloud.ibm.com/> - Hyper Protect Virtual Server is no longer available for free accounts like it used to. Now you have to upgrade to a Pay-As-You-Go account to receive a $200 credit.


## Educational packs

* <https://azure.microsoft.com/en-gb/free/students/> - explicitly no credit card required, just needs an "educational email address")

* <https://education.github.com/pack?sort=popularity&tag=Cloud> - Github Educate, Requires student email and a proof of being a student, Activation is NOT instant. Includes \$100 AWS credits and/or \$50 Digital Ocean credits.

* <https://aws.amazon.com/education/awseducate/> - AWS Educate (can apply without Github Student Pack) - \$100 free credits

* Digital Ocean (Part Of Github Student Pack) - \$50 free credits

### Comparison

| Provider      | Instant Activation? | Must be a student?        | VPS ram       | VPS cpu count | Time                         | Credits |
| ------------- | ------------------- | ------------------------- | ------------- | ------------- | ---------------------------- | ------- |
| Azure         | Yes                 | Yes                       | 1gb/ 512mb\*2 | 1/2           | 1 year, renewed up to 4 years | \$100   |
| *IBM Cloud*   | Yes                 | No                        | 2gb           | 1             | 30 days                      | N/A     |
| AWS educate   | No                  | Yes (Github student pack) | ???           | ???           | ???                          | \$100   |
| Digital Ocean | No                  | Yes (Github student pack) | ???           | ???           | ???                          | \$50    |

## Cards that work as, or like, credit cards

* Debit cards
* <https://www.paysafecard.com/>
* privacy.com (US-only)

Note that:

* This server is now running, and completely exposed to the whole of the Internet
* You alone are responsible for managing it
* You have just installed the latest updates, so it should be secure for now

## Or you can just work with a local virtual machine

You can run the challenge on a home server and all the commands will work as they would on a cloud server. However, not being exposed to the wild certainly loses the feel of what real sysadmins have to face.

If you set your own VM at a private server, go for the minimum requirements like 1GHz CPU core, 512MB RAM, and a couple of gigs of disk space. You can always adapt this to your heart's desire (or how much hardware you have available).

Our recommendation is: use a cloud server if you can, to get the full experience, but don't get limited by it. **This is your server.**

