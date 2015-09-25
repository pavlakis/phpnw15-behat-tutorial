# PHPNW15 Tutorial
# Test legacy apps with Behat


## Installation

(1) Clone repo

(2) Run `vagrant plugin install vagrant-hostmanager && vagrant up`

(3) Add the following to your hosts file: `192.168.42.200 dev.legacy.com test.legacy.com`

## Running behat

An alias has been created in the vbox and mapped to: 

```
alias legacybehat='/var/www/vendor/bin/behat --config=/var/www/tests/behat/behat.yml -f progress'
```

So, all you need to run is: `legacybehat`
