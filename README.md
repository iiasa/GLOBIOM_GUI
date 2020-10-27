## GLOBIOM_GUI

This repository provides a Graphical User Interface (GUI) for [GLOBIOM](http://www.globiom.org/). The master (default) branch is designed for the Trunk, [FABLE](https://iiasa.github.io/GLOBIOM_FABLE/), and pre-release versions of GLOBIOM.

## Getting Started

The GUI is an add-on to the GLOBIOM model that can be used to interactively run the steps of the model and analyse its output. When running GLOBIOM without GUI, you have a `Model` directory and optionally an adjacent `Data` directory obtained from a code repository. To add the GUI, clone the `GLOBIOM_GUI` repository to a `GUI` directory adjacent to the `Model` directory. From the command line, this can be done as follows:
```
cd <parent directory of Model directory>
git clone https://github.com/iiasa/GLOBIOM_GUI GUI
```
After cloning, check that a `GUI` directory has been created next to the `Model` directory. The  GUI can be started by running `globiom.bat`, a cross-platform launcher script contained in the `GUI` directory. The GUI runs on Windows and MacOS. On Linux there is still an unresolved issue.

If the GUI fails to launch, you probably will need to install a Java runtime, or a newer Java version than what you have currently installed, and configure the GUI to use it. See the next section for details.

## Java

The GUI requires Java 8 or higher. Java versions higher than 8 likely work, but are relatively untested. If you do not have a Java runtime installed on your machine, you can [download OpenJDK here](https://adoptopenjdk.net/). Choose the HotSpot version for best performance.

On Windows, you can see which Java versions are installed via *Add or remove programs*.

Beware that [Java versioning](https://www.oracle.com/technetwork/java/javase/jdk8-naming-2157130.html) is confusing: a Java 8 installation uses "1.8.*something*" as a version string.

After locating or installing Java 8 on your machine, edit ``GGIG_java_path.txt`` to point to the java executable/binary of the installation:

* Determine the path to your java binary/executable. On Windows, a typical path is ``C:\Program Files\AdoptOpenJDK\jdk-8.0.212.03-hotspot\bin\java``.
* Go to the ``GUI`` folder created on cloning the repository.
* From there, load ``GGIG_java_path.txt`` into a text editor, enter the path that matches your Java installation, and save.

## Introduction and dependency installation

For slides introducing the GUI and detailed installation steps for GLOBIOM dependencies, see the [A GUI for GLOBIOM](https://iiasa.github.io/GLOBIOM_FABLE/presentations/A_GUI_for_GLOBIOM.pdf) presentation.

## Further reading

For next steps and information regarding the many features of the GUI, please visit the [GLOBIOM GUI page](https://iiasa.github.io/GLOBIOM/GUI.html).

## Acknowledgements

The GLOBIOM GUI is based on [GGIG](http://www.ilr.uni-bonn.de/em/rsrch/ggig/ggig_e.htm), the GAMS Graphical User Interface Generator. We are grateful for the generous guidance and assistance concerning GGIG provided by Wolfgang Britz and Torbjörn Jansson.
