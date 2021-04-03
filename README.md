# Overview
--------------------------------------------------------------------

This repository contains the data gathered from a LIDAR based mapping system
as well as a program that can be used to view the data in an interactive
manner.
The system was placed in numerous locations and scans were taken with a
resolution of 1 degree at various fields of view. This repository is intended
for anyone interested in personally viewing the data collected.

The system used to gather this data was designed and built by Dustin Wagner
and Darienne Johnson. For more information on how this system gathered data 
and how you could build your own system, please contact Dustin Wagner on discord at:

Dustin#0839


# Instructions
--------------------------------------------------------------------

# Controls

![plot](./metadata/keyboardLayout.png)


# Installation Instructions

Project is provided as source code for maximum compatibility
with all operating systems. The following instructions describe how to download
and use everything needed to interact with the data collected.

This includes downloading 2 pieces of software:
The first is the Godot game engine used to run our program.
The second is the the lidardata program that we have created. This will be 
downloaded as a Zip file from this page.

## Step 1

Download the standard version, 64 bit Godot game engine for your specific 
operating system from their website https://godotengine.org/download

The game engine is self contained and does not require installation

## Step 2

Download the ZIP file of this lidardata repository from GitHub

https://github.com/wagnerd97/lidardata/archive/refs/heads/main.zip

![plot](./metadata/downloadZIP.png)

## Step 3

Un-ZIP the repository and note the location

## Step 4

Launch Godot

Note: on Mac OS the message "Can't be opened because it is from an
unidentified developer" may prevent the use of Godot

To bypass this follow these steps:
- Open your computer system preferences > Security & Privacy > General
- Here you should see an option to "Allow Anyway" next to the Godot application

This may vary between different versions of iOS

## Step 5

press the import button

![plot](./metadata/selectImport.png)

## Step 6

press browse to open a file explorer

![plot](./metadata/clickBrowse.png)

## Step 7

navigate to the lidardata folder we un-ZIPed in step 3

![plot](./metadata/lidardataFile.png)

## Step 8

within the lidardata folder navigate into the LIDARDisplay folder

![plot](./metadata/lidarDisplayFile.png)

## Step 9

within the LIDARDisplay folder select and open the project.godot file

![plot](./metadata/projectgodotfile.png)

## Step 10

Press the "Import & Edit" button

## Step 11

Godot should open. when it does you can launch the program by pressing
the play button in the top right corner of the screen

![plot](./metadata/godotPlayButton.png)

## Step 12

When the program loads, it will open a Godot file explorer. On Windows this file explorer
should open to the folder "ScansAndPictures". On Mac OS, The folder that opens may
be "LIDARDisplay". in this case navigate up

![plot](./metadata/navigateUp.png)

Then navigate into the "ScansAndPictures" folder

![plot](./metadata/selectScansAndPictures.png)

## Step 13

From this folder select any available .dat file and an animation will begin that draws the
image at ~2x the speed it was gathered at. (This can be skipped by pressing Enter)

## Step 14

If you would like to compare the scan to a photogrpahed image of the space it
represents then:

- Open a file explorer 
- navigate to the "ScansAndPictures" folder
- open the corresponding .jpg file in a photo viewing application