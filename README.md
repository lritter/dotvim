Lincoln's Vim Configuration
===========================

## Installatioon

    git clone git://github.com/lritter/dotvim.git
    git submodule update

## Basic structure

The basic structure of the config directory is as follows:

    <dotvim folder>
    |
    |+autoload/ (for pathogen)
    |+bundle/   (plugin directory)
    |+config/   (per-plugin configs or one-off configs)
    |-vimrc     (gloabl vim configs)
    `-gminrc    (global configs for graphical ui)
  
