// This vertex shader is used when rendering water with realistic 
// reflections (for over water world) and refractions (under water world)
vs.1.1

// Transform the vertex position into projection space and pass it as 
// transformed vertex position
m4x4 oPos.xyzw, v0, c0

// Transform the vertex position into camera space and pass it as second 
// texture coordinate
m4x4 r0, v0, c0
mul oT0.xyzw, r0, c7

// Pass the texture coordinate after adding the offset value
add oT1, v7, c5

// Pass the difference vector from the vertex to the camera
sub oT2, c6, v0
