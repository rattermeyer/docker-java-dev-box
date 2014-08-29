Docker-Java-Dev Box
===================
This is to update the phusion base box and install some tools (java), I always need for Java Development.
This makes the base box larger, but reduces the provisioning time.
Currently this is a private project

Setup
===================
Download Oracle JDK-8 and jce-unlimited strength crypto into the files directory and call docker build .

Tagging
===================
tag the created box as dev-box:2 (so it can be used by other scripts as well)

