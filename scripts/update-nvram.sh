

DEV_NAME=nvme0n1
PARTITION=5
ROOT_UUID=1b6aadd9-15f1-4b61-99be-5e97e658e1d7
ROOT_PART=/dev/nvme0n1p6
UEFI_LABEL="Arch Linux"
KERNEL_PARAMS="quiet acpi_osi=! acpi_osi='Windows 2009'"
INITRD_OPTIONS="initrd=/intel-ucode.img initrd=/initramfs-linux.img"
INITRD_RAMFS="initrd=initramfs-linux.img"

efibootmgr --disk /dev/$DEV_NAME --part $PARTITION --create --label "$UEFI_LABEL" --loader /vmlinuz-linux --unicode "BOOT_IMAGE=/vmlinuz-linux root=UUID=$ROOT_UUID rw $KERNEL_PARAMS $INITRD_OPTIONS" --verbose
