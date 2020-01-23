# Setup
Environment setup guide

# Development workflow
I recommend we use the [Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow). Each new feature a person is working on should be made in a new branch. These branches should ideally never be more than a few days old as the features should be small and quick to implement. The person working on the feature will make a pull-request to merge the finished feature into the master branch once it's completed. This way the master branch will only ever contain working code. 

# Requirements
It's crucial we all use the same environment

## Web development
* Java SDK 8
This must be installed before installing netbeans.  

for pacman:  
```bash
$sudo pacman -S jdk8-openjdk
```
* Java EE 7
* GlassFish 4.1.1  
http://download.oracle.com/glassfish/4.1.1/release/glassfish-4.1.1-web.zip  
(bundled with netbeans 8.2)  
* NetBeans 8.2  
https://netbeans.org/downloads/8.2/ Java EE
Make sure you have installed JDK 1.8, that is JDK 8 before installing netbeans.  
* JavaDB  
* JavaServer Faces JSF 2.2   

## Mobile development

* Android studio  
Android 4.4 (API level 19)

# markdown cheatsheet
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet


# Netbeans

## Using system fonts
In netbeans directory go to the etc sub directory and open netbeans.conf  
find netbeans_default_options and replace with  
```
netbeans_default_options="-J-client -J-Xss2m -J-Xms32m -J-Dapple.laf.useScreenMenuBar=true -J-Dapple.awt.graphics.UseQuartz=true -J-Dsun.java2d.noddraw=false -J-Dsun.java2d.dpiaware=true -J-Dsun.zip.disableMemoryMapping=true --fontsize 16 -J-Dawt.useSystemAAFontSettings=on"
```
