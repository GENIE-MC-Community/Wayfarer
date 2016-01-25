This is a collection of Vagrantfiles for testing GENIE builds on various OS's.

To use, e.g., for Ubuntu 15.10, assuming you are using [VirtualBox](https://www.virtualbox.org):

    cd Ubuntu/u15_10
    vagrant up --provider virtualbox

Some useful commands:

* `vagrant reload`: reload the VM with changes to the Vagrantfile
* `vagrant destroy`: clear out the VM
