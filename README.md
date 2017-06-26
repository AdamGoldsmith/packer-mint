# packer-mint
Packer templates & preseed files for Linux Mint installations

## Brief & Description
Had a requirement to build a standard graphical linux VM in multiple locations for performing set tasks.
Even after building just 2 instances, I soon realised how easy it is for these images to become out of sync.
As someone who never likes repeating manual steps, I set about researching how to build standard images purely from version controlled code.
Packer is a tool for creating an output image from a set of input parameters.
Linux Mint Cinnamon is a very nicely polished graphical linux distribution.
VirtualBox is great free virtualisation hosting software.
These packer templates, combined with Ubuntu preseed configuration files, are used to create 

## Requirements
You need to have installed packer from hashicorp in order to use these templates
https://www.packer.io/downloads.html

You need to have installed VirtualBox in order to use these templates
https://www.virtualbox.org/wiki/Downloads

## Building images from these templates
git clone
packer build templates/cinnamonxx/cinnamon-xx.json

## List of current templates
Linux Mint - Cinnamon 17.2
Linux Mint - Cinnamon 18.1

## What's next?
At the moment the finished build artifacts are VERY primitive with little post-build configuration
Next steps are to incorporate Ansible playbooks to standardise the builds

## References & thanks
Big thanks to Stefan Scherer's github project for setting me in the right direction
https://github.com/StefanScherer/mint

Massive shout out for this gotcha (Unable to use fresh boot options, have to edit pre-defined options - uses <ctrl>+u to delete to beginning of line)
https://stackoverflow.com/questions/40697091/debianinstaller-not-started

Another shout out to Federico Bertola for describing how to install ssh server on Mint 18
https://github.com/fbertola/dev-box

Thanks to dougm for examples of vmx_data parameters
https://github.com/dougm/packer-ttylinux

