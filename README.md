JJ.Utilities.VR
===============

*JJ van Zon, 2025-08-31*

Opinionated utilities for starting and stopping __VR__ tooling for several __Virtual Reality__ headsets.

__WARNING: May not work for your computer.__

- __Quest__ in this case means: __Meta Quest 2__  
- __Reverb__ in the case means: __HP Reverb G2__  
- __Vive__ in this case means: __HTC Vive Pro 2__

Getting a __VR__ game to run is a hassle just getting all the tooling to start, even more if you have several VR headsets fighting each other on the same PC. These utilities comprise of `cmd` files that execute command lines to start and stop drivers and tools to get one of the above __VR__ headsets running, as well as shutting down things that may get in the way of the __VR__ performance.

These work on my computer, until they break again. They are meant for my own personal use. I open sourced it all the same, mostly to have some version control on it, in case I make a mistake. Use at your own discretion.

The main commands:

```bash
RunViveVR.cmd
RunReverbVR.cmd
RunQuestVR.cmd
StopVR.cmd
```

They run other `cmd` files for the different steps involved for starting and stopping the devices and tooling.