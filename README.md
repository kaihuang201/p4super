# Perforce Automation Scripts
This repository contains a set of Perforce (P4) automation scripts to streamline common workflows such as managing changelists, shelving, and unshelving. The scripts are designed to be easy to use and integrate seamlessly with your existing Perforce setup.

The only dependency is p4 and fzf.
All script should be added to PATH.

# Scripts Overview
- cla: Select a changelist interactively and set it as the active changelist.
- cls: List all your changelists with their descriptions, and allow you to select one interactively.
- clc: Display detailed information about the currently active changelist.
- cledit:
    - `cledit <file path>` to edit/add the file to active cl
    - `cledit` to interactively select file to add to active cl under current directory.
- change: Edit cl description of the active cl.
- shelve: Shelve the currently active changelist or allow you to select one if no active changelist exists.
- unshelve: Unshelve the currently active changelist or allow you to select one if no active changelist exists.
