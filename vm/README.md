<!--- -------------------------------------------------------------------- --->

- Read over some sort of
  [tutorial](https://www.google.com/search?q=vagrant+tutorial)
  material if need be: using the VM will be a challenge without at
  least some background knowledge of the concepts and technologies
  involved.
  Keep in mind that after 
  [deprecation](https://developer.hashicorp.com/hcp/docs/vagrant/hcp-vagrant-eol) 
  of the HashiCorp Cloud Platform (HCP) Vagrant registry, we moved to a 
  self-hosted approach to pre-provisioned boxes: this means the workflow 
  below might differ from some (legacy) instructions you find online, 
  and, e.g., the VM will not appear on searchable indexes.

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

  - Using the most recent version of VirtualBox (currently 7.2) is 
    strongly recommended: keep in mind that you *may* get another 
    version when using some package managers, for example, which 
    may or may not be directly compatible.
  - You *may* also need to install an X server in order to support 
    forwarded X11 client interfaces: examples include
    [Xming](https://sourceforge.net/projects/xming) or [Cygwin/X](http://x.cygwin.com) for Windows,
    and
    [XQuartz](https://www.xquartz.org) for MacOS,
  - Some features of the VM
    (e.g., access to USB devices)
    *may* demand you are a member of the
    [`vboxusers`](https://www.virtualbox.org/manual/ch02.html#install-linux-vboxusers)
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
       wget --quiet https://assets.phoo.org/COMS10015_2026_TB-4/csdsp/vm/vm.tar.gz
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
       mkdir ./share
       vagrant init COMS10015 https://assets.phoo.org/COMS10015_2026_TB-4/csdsp/vm/vm.box
       ```

       to 
       generate
       a `Vagrantfile`
       that references a pre-provisioned base box,

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
