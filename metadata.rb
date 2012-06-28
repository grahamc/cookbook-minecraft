maintainer "Graham Christensen"
maintainer_email "graham@grahamc.com"
license "Apache 2.0"
description "Installed/Configures the Minecraft server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version "0.0.3"

depends "java"

recipe "minecraft::default", "Installs and configured Minecraft"

