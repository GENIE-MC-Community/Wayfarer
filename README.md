This is a collection of Vagrantfiles for testing GENIE builds on various OS's.

## READ ME FIRST!

This version of `Wayfarer` is meant to work with GENIE `R-2_10_2`. If you would
like to use an older version of GENIE, you will need to edit the `provision.sh`
scripts found in each package.

Also, users should be aware that there are some issues using ROOT5 with very new
versions of the GCC compiler. The versions used here have been found to work, but
if you would like to use a different version of ROOT5 than the ones specified,
be aware you may need to add scripting to update ROOT's configuration scripts
and/or install a different version of the C compiler and use it throughout
the build. 

## Tags and versioning

Versions of `Wayfarer` are specified by `git` tags (as opposed to branches).
When first checking out this package, you will have the `HEAD` version of the
`master` branch. You can get a specifc tagged release by checking out the tag
into a branch like so

    git checkout -b R-2_10_2.0-br R-2_10_2.0

This will checkout _tag_ `R-2_10_2.0` into _branch_ `R-2_10_2.0-br`. You want to
checkout into a branch to avoid being in a "detached `HEAD`" state (although
depending on your needs, this is not actually a major problem).

Check the [releases page](https://github.com/GENIEMC/Wayfarer/releases) for
information about the available tagged versions.

## Basic usage

`Wayfarer` relies on [Vagrant](https://www.vagrantup.com) being installed.
Additionally, it assumes [VirtualBox](https://www.virtualbox.org), but other
virtualization engines may be used (the example commands below would need to
be updated).

To use, e.g., for Ubuntu 15.10 (and assuming you are using VirtualBox):

    cd Ubuntu/u15_10
    vagrant up --provider virtualbox

Currently supported:

* `Ubuntu/u14_04` ("trusty64")
* `Ubuntu/u15_10` ("wiley64")

Note that what is _actually_ supported is `trusty64` and `wiley64`, and the
specific numeric tags of Ubuntu that corresponds to that specification.

Some useful commands:

* `vagrant reload`: reload the VM with changes to the Vagrantfile
* `vagrant destroy`: clear out the VM

Much more is available on the [Vagrant](https://www.vagrantup.com) webpage
and in other various tutorials available online.
