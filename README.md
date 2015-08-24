# DesktopsManager
A desktop manager that allows to have multiple desktops in the Pharo environment.

## Install it
~~~
Metacello new
    baseline: 'DesktopsManager';
    repository: 'github://juliendelplanque/desktopsmanager/repository';
    load.
~~~

## Use it
Once you installed this package using the precedent code snippet, it can be used directly!

Open some windows inside Pharo (if there is none opened yet) and use *Ctrl+Shift+j* to
switch to the next desktop which is empty. 

Use *Ctrl+Shift+k* to come back to the precedent desktop.

### Notes
- You can create a new desktop (by pressing *Ctrl+Shift+j* only if the current desktop
is not empty (ie there is at least one window open).

- The DesktopManager will automatically remove empty desktops.

- Implicitly, the number of desktop is dynamic.

- There is a DesktopMorph on bottom-right of the screen that show at which number you are
actually looking.

- The taskbar will display tasks from all desktops.
