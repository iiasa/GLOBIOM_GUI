## GLOBIOM_GUI

This repository provides a Graphical User Interface (GUI) for [GLOBIOM](http://www.globiom.org/). The master (default) branch is designed for the [FABLE version of GLOBIOM](https://iiasa.github.io/GLOBIOM_FABLE/).

## Getting Started

To make this repository work with [GLOBIOM_FABLE](https://github.com/iiasa/GLOBIOM_FABLE), clone it to a ``GUI`` directory co-located with the GLOBIOM ``Model`` directory. From the command line, this can be done as follows:
```
cd <directory where you cloned GLOBIOM_FABLE>
git clone https://github.com/iiasa/GLOBIOM_GUI GUI
```
This should yield a ``GUI`` directory adjacent to the ``Model`` directory.

The GUI requires Java 8 specifically. Higher Java versions might work, but are currently untested. If you do not have a Java 8 runtime installed on your machine, you can [download OpenJDK 8 here](https://adoptopenjdk.net/). Choose the HotSpot version for best performance.

On Windows, you can see which Java versions are installed via *Add or remove programs*.

Beware that [Java versioning](https://www.oracle.com/technetwork/java/javase/jdk8-naming-2157130.html) is confusing: a Java 8 installation uses "1.8.*something*" as a version string.

After locating or installing Java 8 on your machine, edit ``GGIG_java_path.txt`` to point to the java executable/binary of the installation:

* Determine the path to your java binary/executable. On Windows, a typical path is ``C:\Program Files\AdoptOpenJDK\jdk-8.0.212.03-hotspot\bin\java``.
* Go to the ``GUI`` folder created on cloning the repository.
* From there, load ``GGIG_java_path.txt`` into a text editor, enter the path that matches your Java installation, and save.

Thereafter, the  GUI can be started by running ``globiom.bat``, a cross-platform launcher script. The GUI runs on Windows and MacOS. On Linux there is an issue that we expect to resolve soon.

## Introduction and dependency installation

For slides introducing the GUI and detailed installation steps for GLOBIOM dependencies, see the [A GUI for GLOBIOM](https://iiasa.github.io/GLOBIOM_FABLE/presentations/A_GUI_for_GLOBIOM.pdf) presentation.

## Further reading

For next steps and information regarding the many features of the GUI, please visit the [GLOBIOM GUI page](https://iiasa.github.io/GLOBIOM_FABLE/GUI.html).

## Acknowledgements

The GLOBIOM GUI is based on [GGIG](http://www.ilr.uni-bonn.de/em/rsrch/ggig/ggig_e.htm), the Gams Graphical User Interface Generator. We are grateful for the generous guidance and assistance concerning GGIG provided by Wolfgang Britz and Torbjörn Jansson.