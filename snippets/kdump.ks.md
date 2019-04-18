# kdump in kickstart

If you want to configure kdump during kickstart a macro should be used.

```
%addon com_redhat_kdump --enable --reserve-mb=auto
%end
```
