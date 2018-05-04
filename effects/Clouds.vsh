// This vertex shader is used to render two distorted and light mapped
// cloud layers
vs.1.1

// Take the vertex position and transform it into projection space
m4x4 oPos, v0, c0

// Calculate the texture coordinate for the first diffuse map
mov r0, c5
mad oT0, v7, c6, r0.zw
// Calculate the texture coordinate for the second diffuse map
mov r0, c7
mad oT1, v7, c6, r0.zw
// Calculate the texture coordinate for the distortion map
mad oT2, v7, c6, r0
// Pass the unchanged texture coordinate for the light map
mov oT3, v7