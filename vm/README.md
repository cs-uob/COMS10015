<!--- -------------------------------------------------------------------- --->

- Read over some sort of
  [tutorial](https://www.google.com/search?q=vagrant+tutorial)
  material if need be.

- Install various pre-requisites, i.e.,

  - [VirtualBox](https://www.virtualbox.org)
    including any extension packs necessary, e.g., for USB device support,
    and
  - [Vagrant](https://www.vagrantup.com),
    plus associated plug-ins, as need be, e.g., by executing

    ```sh
    vagrant plugin install vagrant-vbguest
    vagrant plugin install vagrant-disksize
    vagrant plugin install vagrant-reload
    ```

  Note that:

  - using a recent version of VirtualBox is *strongly* recommended:
    currently this is 6.x, whereas you may get 5.x when using some
    package managers,
  - when using a Windows-based host, you may *also* need to install
    an X server 
    (e.g., [Xming](https://freedesktop.org/wiki/Xming))
    in order to support forwarded X11 client interfaces,
    and
  - some features of the VM
    (e.g., access to USB devices)
    *may* demand you are a member of the
    [`vboxusers`](https://www.virtualbox.org/manual/ch02.html#install-linux-vboxusers);
    group; you can ensure this by executing

    ```sh
    sudo usermod --append --groups vboxusers ${USER}
    ```

- Launch the VM using *either* of the following approaches:

  1. Self-provisioned:

     - execute

       ```sh
       mkdir ./COMS10015
       cd ./COMS10015
       wget --quiet https://assets.phoo.org/COMS10015_2024_TB-4/csdsp/vm/vm.tar.gz
       tar --gzip --extract --file='vm.tar.gz'
       cd ./vm
       ```

       to 
       download
       a `Vagrantfile` 
       that references an
       [un-provisioned](https://app.vagrantup.com/boxomatic/boxes/rocky-8)
       base box,

     - [edit](https://www.vagrantup.com/docs/vagrantfile) 
       the resulting `Vagrantfile` to suit any specific requirements,

     - execute 

       ```sh
       vagrant up
       ```

       after which the VM boots, and the provisioning step executes:
       this may take some time.

  2. Pre-provisioned:

     - execute

       ```sh
       mkdir ./COMS10015
       cd ./COMS10015
       mkdir ./vm
       cd ./vm
       vagrant init danpage/COMS10015
       ```

       to 
       generate
       a `Vagrantfile`
       that references a
       [pre-provisioned](https://app.vagrantup.com/danpage/boxes/COMS10015)
       base box,

     - [edit](https://www.vagrantup.com/docs/vagrantfile) 
       the resulting `Vagrantfile` to suit any specific requirements,

     - execute

       ```sh
       vagrant up
       ```

       after which the VM boots:
       this may take some time.

- Access the VM:

  - check the SSH configuration matches what you expect
    by executing

    ```sh
    vagrant ssh-config
    ```

  - automatically
    use SSH to access the VM, e.g.,
    by executing

    ```sh
    vagrant ssh
    ```

  - manually
    use SSH to access the VM, e.g.,
    by executing

    ```sh
    ssh vagrant@localhost -p 2222 -i .vagrant/machines/default/virtualbox/private_key -X
    ```

    where 
    `-p` specifies a port (on `localhost`) matching the SSH configuration,
    `-i` specifies an identity whereby the private key for `vagrant` is used, and
    `-X` enables X11 forwarding, i.e., display of GUI applications on the host desktop.

  Note that
  `/home/vagrant/share`
  represents a 
  [shared folder](https://www.virtualbox.org/manual/ch04.html#sharedfolders)
  accessible from both the host and guest VM.
  We recommend using this for transfer of data <b>only</b>, however, rather 
  than as a "live", working file system: it seems the 
  VirtualBox
  implementation of this feature is imperfect, meaning that the latter can 
  result in somewhat cryptic errors which are difficult to resolve.

<!--- -------------------------------------------------------------------- --->
