# Genome Assembly Vagrant

## Getting Started
Make sure you have [Vagrant](https://www.vagrantup.com/) and [Virtualbox](https://www.virtualbox.org/) installed.

Clone this repository, navigate to the folder using the terminal and type `vagrant up` which will automatically download and setup a Virtual Machine (VM) for the Genome Assembly Course. As we are building on top of a headless VM we'll have to install a Desktop Environment first. The VM is configured to automatically install the latest Mate Desktop at the first start. This will probably take a while so feel free to grab a coffee ☕️. After it finished installing you'll have to reboot the machine one more time by typing `vagrant reload`. If you want to shutdown the VM after you're done simply type `vagrant halt`.

Next you'll have to set a password for the `ubuntu` user. Simply connect to the VM via SSH by typing `vagrant ssh`, run `sudo passwd ubuntu` and set your preferred password.

### Installing VirtualBox Guest Additions 
To support proper scaling of the virtual display you'll also have to install the VirtualBox Guest Additions. SSH into your machine via `vagrant ssh` and run the commands below. Make sure that the `VIRTUALBOX_VERSION` matches your the version on the host.

```
# update based on your virtualbox version
export VIRTUALBOX_VERSION=5.2.20
wget https://download.virtualbox.org/virtualbox/${VIRTUALBOX_VERSION}/VBoxGuestAdditions_${VIRTUALBOX_VERSION}.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_${VIRTUALBOX_VERSION}.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run 
rm VBoxGuestAdditions_${VIRTUALBOX_VERSION}.iso
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions
```

Above commands were taken and adapted from [here](https://www.vagrantup.com/docs/virtualbox/boxes.html#to-install-via-the-command-line-).


## Vagrant Configuration
If you are curious about the VM configuration have a look at the [Vagrantfile](./Vagrantfile). If you want to customize it you can find the documentation [here](https://www.vagrantup.com/docs/vagrantfile/).

## Important Commands 
- `vagrant up` -- start VM
- `vagrant halt` -- stop VM
- `vagrant reload` -- restart VM
- `vagrant ssh` -- connect to VM via SSH