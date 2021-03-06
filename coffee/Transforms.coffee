###
Transforms
==========

SassMe - an Arc90 Lab Project

The MIT License (MIT)
Copyright © 2012 Arc90 | http://arc90.com

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the “Software”), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Authors:
--------

Jim Nielsen
Darren Newton
Robert Petro
Matt Quintanilla
Jesse Reiner

Syntactically Awesome Stylesheets:
----------------------------------

Structure of the color functions ported from SASS -
https://github.com/nex3/sass/blob/stable/lib/sass/script/functions.rb
Copyright (c) 2006-2009 Hampton Catlin, Nathan Weizenbaum, and Chris Eppstein

###

root = exports ? this

root.Transforms =

  #### Ligten a color
  #
  # @param **color** _String_ expects a hexadecimal  
  # @param **percentage** _Integer_ expects 0-100  
  #
  lighten : (color, percentage) ->
    hsl = color.mod
      l : color.constrain(color.lightness(), percentage, [0, 100], '+')
    color.rgb2hex(color.hsl2rgb(hsl))

  #### Darken a color
  #
  # @param **color** _String_ expects a hexadecimal  
  # @param **percentage** _Integer_ expects 0-100  
  #
  darken : (color, percentage) ->
    hsl = color.mod
      l : color.constrain(color.lightness(), percentage, [0, 100], '-')
    color.rgb2hex(color.hsl2rgb(hsl))

  #### Saturate a color
  #
  # @param **color** _String_ expects a hexadecimal  
  # @param **percentage** _Integer_ expects 0-100  
  #
  saturate : (color, percentage) ->
    hsl = color.mod
      s : color.constrain(color.saturation(), percentage, [0, 100], '+')
    color.rgb2hex(color.hsl2rgb(hsl))

  #### Desaturate a color
  #
  # @param **color** _String_ expects a hexadecimal  
  # @param **percentage** _Integer_ expects 0-100  
  #
  desaturate : (color, percentage) ->
    hsl = color.mod
      s : color.constrain(color.saturation(), percentage, [0, 100], '-')
    color.rgb2hex(color.hsl2rgb(hsl))

  #### Adjust the hue
  #
  # @param **color** _String_ expects a hexadecimal  
  # @param **degrees** _Integer_ expects 0-360  
  #
  adjust_hue : (color, degrees) ->
    hsl = color.mod
      h : color.constrain_degrees(color.hue(), degrees)
    color.rgb2hex(color.hsl2rgb(hsl))
