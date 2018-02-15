# Building an object-oriented Python interface for the Generic Mapping Tools

[Leonardo Uieda](http://www.leouieda.com)
and
[Paul Wessel](http://www.soest.hawaii.edu/wessel/)

Talk proposal for Scipy 2018.


## Short summary

We are building a Python wrapper for the Generic Mapping Tools (GMT), a set of
command-line programs used across the Earth, Atmospheric, and Ocean Sciences to
process and visualize geographic data. At Scipy 2017, we presented the project
goals and an initial prototype. The feedback received led to improvements in
the design of the library, mainly the creation of an object-oriented API. We
will present the newest developments including support for numpy arrays and
pandas Dataframes, interactive visualization in the Jupyter notebook using NASA
WorldWind, and more. Once again, we seek feedback from the community to guide
us moving forward.

## Abstract

The GMT/Python library (http://www.gmtpython.xyz) has been in development for
approximately 1 year. Much of the current design of the library was inspired by
the feedback that we received following our presentation at Scipy 2017
(http://www.leouieda.com/blog/gmt-after-scipy2017.html). Since then, we have
been implementing this design, establishing a solid low-level API on which to
build the rest of the library, and exploring new ways to interface with the
Jupyter notebook. In this talk, we will present the current state of the
project, including: the design of the low-level wrapper for the GMT C API (the
"gmt.clib.LibGMT" class); the new object-oriented plotting API (the
"gmt.Figure" class); the support for numpy arrays and pandas Dataframes; using
GMT's built-in topography grids and sample datasets; interactive visualization
in the Jupyter notebook using the NASA WorldWind Web Javascript library
(https://worldwind.arc.nasa.gov); and more. An online demo of these features is
available through the Binder service at http://try.gmtpython.xyz. We will also
share the lessons learned from using ctypes to build the wrapper and the
changes that were required in the C API to make the wrapping process as smooth
as possible when porting to other languages. Finally, we will layout our
development plans and solicit feedback and contributions to help guide the
future of the project.

GMT has an extensive feature set that goes well beyond data visualization. It
has sophisticated algorithms for processing and interpolating data in Cartesian
and spherical coordinates that is still unmatched in the Scipy ecosystem. GMT
is also the basis for specialized software like MB-System for processing and
visualizing bathymetry and backscatter imagery data derived from multibeam,
interferometry, and sidescan sonars
(https://www.mbari.org/products/research-software/mb-system) and GMTSAR for
processing Interferometric Synthetic-Aperture Radar (InSAR) data
(http://topex.ucsd.edu/gmtsar). A well designed wrapper for the GMT C API is
the first step to bring these powerful tools to the Scipy community. The data
visualization landscape in Python has grown immensely in the past few years
with the advent of Boheh, Altair, Cartopy, Holoviews, etc. GMT/Python can help
diversify this ecosystem and bring important lessons learned during the 28+
years of continuous development of GMT.


## License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img
alt="Creative Commons License" style="border-width:0"
src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br>
This content is licensed under a <a rel="license"
href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution
4.0 International License</a>.

All source code is distributed under the [BSD 3-clause
License](https://opensource.org/licenses/BSD-3-Clause).
