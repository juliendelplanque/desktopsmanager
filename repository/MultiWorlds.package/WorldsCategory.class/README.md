I am a WorldsCategory, I define keymaps used to change the current world.

You can install my shortcuts using class message: 
WorldsCategory install.

And uninstall them using class message:
WorldsCategory uninstall.

You can replace default shortcuts with your custom shortcuts using: 
WorldsCategory uniqueInstance nextDesktopShortcut: customNextDesktopShortcut.
WorldsCategory uniqueInstance nextDesktopShortcut: customPreviousDesktopShortcut.

WorldsCategory resintall. "Do not forget to reinstall the shortcuts."