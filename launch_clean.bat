:<<BATCH
:: Start with a clean .ini
pushd %~dp0
copy launch_clean.ini launch.ini
launch.bat
popd
exit /b :: end batch script processing
BATCH
# Platform-agnostic script.
# Put batch commands above and functionally-identical Linux/MacOS shell
# commands terminated by a # below. Save this script with CR+LF end-of-line
# breaks. The trailing # makes the shell ignore the CR.
pushd "$(dirname "$0")" #
cp launch_clean.ini launch.ini #
./launch.bat #
popd #
