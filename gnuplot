# Some inspiration taken from https://github.com/hesstobi/Gnuplot-Templates/blob/master/defaults.gp
# Colors follow guidelines from this article - https://blog.datawrapper.de/beautifulcolors/

# Never remove a command from Gnuplot's command history
set history size -1

# Use utf8 everywhere
set encoding utf8

# Increase samples for smoother lines
set samples 3000
set isosamples 30

set macros

#png="set terminal png size 1800,1800 crop enhanced font \"/usr/share/fonts/truetype/times.ttf,30\" dashlength 2; set termoption linewidth 3"
#eps="set terminal postscript fontfile \"/usr/share/fonts/truetype/times.ttf\"; set termoption linewidth 3;

# Font settings
set terminal qt font "Helvetica,16"

# Line settings
set termoption linewidth 1.4

# Default to a line width of 2
#do for [i=1:100] {
#    set style line i linewidth 2
#}

# By default render a grid for the plot
set grid

# Add custom scripts to the loadpath
set loadpath "~/dotfiles/scripts/gnuplot"
