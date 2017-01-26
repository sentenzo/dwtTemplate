# dwtTemplate

## Description

[**SWT**](http://www.eclipse.org/swt/) (The Standard Widget Toolkit) is a library for creating cross-platform GUI applications. 
It has [great potential](http://www.java2s.com/Code/Java/SWT-JFace-Eclipse/CatalogSWT-JFace-Eclipse.htm) in UI construction.

**DWT** is a port of the **SWT** library for **D**, made by [jacob-carlborg](https://github.com/jacob-carlborg).

Original repository for **DWT** is [located on GitHub](https://github.com/d-widget-toolkit/dwt). However, it has no dub package. 
And the building instructions for applications are not really trivial.

This repository is made to be a small easily compilable GUI application using **DWT**.

## Using
Works for **Windows**/**Linux**:

    $ git clone https://github.com/d-widget-toolkit/dwt.git
    $ git clone https://github.com/sentenzo/dwtTemplate.git
    $ cd dwt
    $ rdmd build base swt 
    $ cd ../dwtTemplate
    $ dub

For **Linux** some [additional packages](https://github.com/d-widget-toolkit/dwt#linux) may be required.

There's also a demonstrational **DWT**-project with more widgets to look at. It runs with commands:

    $ cd examples/bigdemo
    $ dub
