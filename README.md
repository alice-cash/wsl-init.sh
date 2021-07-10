# wsl-init.sh

An init/rc bootup script for linux systems.

# Install
As root: copy wsl-init.sh to /etc/wsl-init.sh or similar location:
```
wget https://raw.githubusercontent.com/alice-cash/wsl-init.sh/master/wsl-init.sh -O /etc/wsl-init.sh
chmod +x /etc/wsl-init.sh
```

To run it once you have logged into your machine add a new shortcut under the following directory:   
```"C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"```

Make the shortcut here the following is an example, assuming this file is /etc/wsl-init.sh
You can change the 3 to 5 if for example you used x11 and need a graphical enviroment to boot.       
```C:\Windows\System32\wsl.exe -u root /etc/wsl-init.sh 3```

You can now utilize utilities such as update-rc.d to manage startup scripts

# Several notes
You may need to disable some service as there are several setup by default which can stall bootup.    
On ubuntu 18.04:
```update-rc.d lvm2-lvmetad disable
update-rc.d lvm2-lvmpolld disable
update-rc.d lxcfs disable
update-rc.d lxd disable
update-rc.d open-vm-tools disable
update-rc.d apport disable
update-rc.d acpid disable
```
