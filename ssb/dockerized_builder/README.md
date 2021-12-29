Alternative method for building the IIQ .war file
==================================

# Background

The build.sh script in the upper level ssb directory requires 
prerequisites at build time to be on the host where the .war
file is being built.  This alternative builds a container with 
a similar JDK as container ICAM-TOMCAT (JDK8). It then runs the 
build with the volume source files mounted so that JDK8 can be 
used to generate the .war file without potential conflicts and 
changes with the host JDK version etc.  

For example, under OpenJDK 16, the build fails at present (12/2021).
The build also fails under the default v17 Oracle Java SE Development 
Kit environment on the Apple M1. This method of building the WAR 
file should eliminate the need to install additional or alternate 
dependencies to the hosts's environment by building the WAR file from a container.

# Usage

cd $repo_home/ssb/dockerized_builder 

./run.sh

May require sudo depending on how the host system is configured for 
user access to docker. 

sudo ./run.sh
