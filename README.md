# Setup
Environment setup guide. After the setup is done make sure to clone the repository and check if you can compile  
```
Setup-and-Config/Android/CompilationTest/
```
and
```
Setup-and-Config/Java/CompilationTest/WebAppTest/
```
After everything compiles successfully, make sure to add your name to the checklist.md

# Development workflow
I recommend we use the [Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow). Each new feature a person is working on should be made in a new branch. These branches should ideally never be more than a few days old as the features should be small and quick to implement. The person working on the feature will make a pull-request to merge the finished feature into the master branch once it's completed. This way the master branch will only ever contain working code. 

## Git policy
Run the git-hook install script after cloning: `$./install_script.sh`. This will install a pre-push hook that will restrict push access and give hints on how to follow policy. 

## Git workflow
#### No one is supposed to push directly to master! All code should go through pull-requests.
1. Select a user story from Trello
2. It's important to change to the master branch before creating new branches `$git checkout master`
3. Remember to update your local master branch before creating new branches `$git pull`
4. Create your new branch `$git branch user_story_name`
5. Change to your new branch `$git checkout user_story_name`
6. Commit your local changes __often__ `$git commit -am "descriptive message"`
7. Push your changes to Github `$git push`
8. Create a pull-request into master _only_ when your user story is implemented and tested. 

The pull-request will start a new thread where you can discuss your implementation, request code review and merge your branch into master. You can delete your branch after it has been merged into master. 

You can use `$git fetch`to fetch a list of other people's branches. 

## Git mass pull
There is a script available (pullall.sh) in this repo that can pull all repos that exist in the same folder. This requires that you have a folder, for instance Antons-Skafferi, where you have all the repos cloned. The script then goes to it's parent directory, loops through all the repo directories and pulls them.
# Requirements
It's crucial we all use the same environment

## Web development
* Java SDK 8
(this must be installed before installing netbeans)

for pacman:  
```bash
$sudo pacman -S jdk8-openjdk
```
* Java EE 7
* [GlassFish 4.1.1](http://download.oracle.com/glassfish/4.1.1/release/glassfish-4.1.1-web.zip) 
(bundled with netbeans 8.2)  
* [NetBeans 8.2 Java EE](https://netbeans.org/downloads/8.2/) 
(make sure you have installed JDK 1.8, that is JDK 8 before installing netbeans)  
* JavaDB  
* JavaServer Faces JSF 2.2   

## Mobile development

* Android studio  
* Android 5.0 (API level 21), required for native vector graphics

# markdown cheatsheet
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet


# Netbeans

## Using system fonts
In netbeans directory go to the etc sub directory and open netbeans.conf  
find netbeans_default_options and replace with  
```
netbeans_default_options="-J-client -J-Xss2m -J-Xms32m -J-Dapple.laf.useScreenMenuBar=true -J-Dapple.awt.graphics.UseQuartz=true -J-Dsun.java2d.noddraw=false -J-Dsun.java2d.dpiaware=true -J-Dsun.zip.disableMemoryMapping=true --fontsize 16 -J-Dawt.useSystemAAFontSettings=on"
```

# Keybase

## Controlling notifications
If you think you're getting too many notifications from keybase, turn off those that you do not need. Go to each channel and click the "i" at the top right -> Settings and there you can set the notifications as you'd like them.

Some tips would be to turn off all notifications on the Git channels (since they're for the bot) and use "Only when @mentioned" in the group channels of which you do not belong (maybe even in general and planning). Your own group's channel might be useful to show all notifications for.
