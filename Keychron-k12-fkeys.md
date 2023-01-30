# Keychron K12 Funtion and Multimedia Keys (Fedora)

## Multimedia Key and Function Key

For the keychron K12 keyboard multi-media keys are accessed by fn1+`<mutli-media key>` and function keys are accessed by fn2 + `<fn key>` 

By default the hid_apple kernel module ([Ubuntu Documentation](https://help.ubuntu.com/community/AppleKeyboard#Change_Function_Key_behavior) and [Arch Documentation](https://wiki.archlinux.org/title/Apple_Keyboard)) is set to  1.
```
> - 0 = `disabled`: Disable the 'fn' key. Pressing 'fn'+'F8' will behave like you only press 'F8'
> - 1 = `fkeyslast`: Function keys are used as last key. Pressing 'F8' key will act as a special key. Pressing 'fn'+'F8' will behave like a F8.
> - 2 = `fkeysfirst`: Function keys are used as first key. Pressing 'F8' key will behave like a F8. Pressing 'fn'+'F8' will act as special key (play/pause).
```
For the K12 to work properly we need to set the value to 2. To temporarily set the value for testing do the following:

```
echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
```

Accessing the multi-media keys and the functions keys should now work as expected. 

## Add Kernel Module Option for Apple Keyboard Function Keys

Add an option to the kernel module to set the mode on boot to fkeysfirst (2).

```
echo "options hid_apple fnmode=2" | sudo tee -a /etc/modprobe.d/hid_apple.conf
```

## Regenerate intramfs

To set the fnmode in the early user space the initramfs needs to be regenerated.

```
dracut --regenerate-all --force
```

Reboot once complete. 

