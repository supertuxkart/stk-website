Volumetric Lights

{% gallery widths=48%
/assets/wiki/STK_volumetric.jpg
%}

Volumetric lighting creates a halo around lights, much like in real life. With fog enabled, point lights will autmatically be surrounded by a halo. However, for cones/light beams, you will have to create a fake halo with a mesh or [billboard](Special_Effects#billboards). Be sure to make the mesh a ghost object or the texture a ghost material—see [Physics](Physics) for more information. Also set the shader to additive blending—see [Materials](Materials).
