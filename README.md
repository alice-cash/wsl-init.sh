# wsl-init.sh

An rc bootup script for linux systems.

# Install
Add new shortcut under the following directory   
```"C:\Users\%USERAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"```

Make the shortcut here the following is an example, assuming this file is /etc/init.sh
You can change the 3 to 5 for example if for example you used x11   
```C:\Windows\System32\bash.exe -c "/usr/bin/sudo /etc/init.sh 3"```

You will either need to configure your suoders to not require a password, e.g.:   
```%sudo   ALL=(ALL:ALL) NOPASSWD: ALL```

You can also configure the default user to be root and remove the sudo requirement.
https://docs.microsoft.com/en-us/windows/wsl/user-support

You can now utilize utilities such as update-rc.d to manage startup scripts

# Several notes
You may need to disable some service as there are several setup by default which can stall bootup.
On ubuntu 18.04, e.g.:
```update-rc.d lvm2-lvmetad disable
update-rc.d lvm2-lvmpolld disable
update-rc.d lxcfs disable
update-rc.d lxd disable
update-rc.d open-vm-tools disable
update-rc.d apport disable
update-rc.d acpid disable
```
