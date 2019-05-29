:<<BATCH
@echo off
pushd %~dp0
if not exist settings.ini copy defaults.ini settings.ini
:: Get the configured path to the java command to use for GGIG.
:: This should point to a file called java in the bin subdirectory
:: of an installed JRE or JDK.
set /p GGIG_JAVA_PATH=<GGIG_java_path.txt
:: Get the configured Java options to use for launching GGIG.
set /p GGIG_JAVA_OPTIONS=<GGIG_java_options.txt
:: Put the GGIG jars on-path and launch the GUI
set PATH=%PATH%;jars
@echo on
"%GGIG_JAVA_PATH%" %GGIG_JAVA_OPTIONS% -jar jars/gig.jar settings.ini root.xml
popd
exit /b :: end batch script processing
BATCH
# Platform-agnostic script.
# Put batch commands above and functionally-identical Linux/MacOS shell
# commands terminated by a # below. Save this script with CR+LF end-of-line
# breaks. The trailing # makes the shell ignore the CR.
# Must be run with the bash shell.
pushd "$(dirname "$0")" #
if [ ! -f settings.ini ]; then #
    cp defaults.ini settings.ini #
fi #
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:jars #
export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:jars # 
"$(head -1 GGIG_java_path.txt)" $(head -1 GGIG_java_options.txt) -jar jars/gig.jar settings.ini root.xml #
popd #
