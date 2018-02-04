platform="Android"
root_directory=$(pwd)

cd test
robot --outputdir ../report --variable PLATFORMNAME:$platform --variable ROOTDIRECTORY:$root_directory TestHTADevice.robot