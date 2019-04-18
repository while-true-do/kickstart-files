# LVM in kickstart

If you want to have a more complex partitioning, LVM can be used.

### Clean old Partitions

```
zerombr 
clearpart --all --drives=vda
```

### Create the layout

```
# /boot must be out of LVM
part /boot  --fstype xfs --size=500
# Create physical volume (minimum 1000MB, maximum 100%)
part pv.01  --fstype=lvmpv --size=1000 --grow --ondisk=vda
# Create a Volume Group
volgroup vg00 pv.01
# Create the volumes
logvol /    --fstype=xfs --size=2048 --name=root --vgname=system
logvol /var --fstype=xfs --size=1024 --name=var --vgname=system
logvol /tmp --fstype=xfs --size=512 --name=tmp --vgname=system
logvol swap --fstype="swap" --size=1000 --name=swap --vgname=system
```
