xof 0302txt 0032
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

Header {
 1;
 0;
 1;
}

Frame frm-acs61 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-base {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.002629,1.000000;;
 }
Mesh base {
 42;
 -0.170000;-0.170000;0.340831;,
 -0.170000;-0.170000;0.340831;,
 -0.170000;0.170000;0.340831;,
 -0.170000;0.170000;0.340831;,
 -0.075888;-0.081328;1.840831;,
 -0.075888;-0.081328;1.840831;,
 -0.075888;0.081328;1.840831;,
 -0.075888;0.081328;1.840831;,
 0.170000;-0.170000;0.340831;,
 0.170000;-0.170000;0.340831;,
 0.170000;0.170000;0.340831;,
 0.170000;0.170000;0.340831;,
 0.075888;-0.081328;1.840831;,
 0.075888;-0.081328;1.840831;,
 0.075888;0.081328;1.840831;,
 0.075888;0.081328;1.840831;,
 0.340000;-0.340000;0.340831;,
 0.340000;-0.340000;0.340831;,
 -0.340000;-0.340000;0.340831;,
 0.340000;0.340000;0.340831;,
 -0.340000;0.340000;0.340831;,
 0.340000;0.340000;0.000832;,
 -0.340000;0.340000;0.000832;,
 0.340000;-0.340000;0.000832;,
 0.340000;-0.340000;0.000832;,
 -0.340000;-0.340000;0.000832;,
 -0.340000;-0.340000;0.000832;,
 0.340000;-0.340000;0.000832;,
 -0.340000;0.340000;0.000832;,
 0.340000;0.340000;0.000832;,
 -0.340000;0.340000;0.340831;,
 0.340000;0.340000;0.340831;,
 -0.340000;-0.340000;0.340831;,
 0.340000;-0.340000;0.340831;,
 0.075888;0.081328;1.840831;,
 0.075888;-0.081328;1.840831;,
 0.170000;0.170000;0.340831;,
 0.170000;-0.170000;0.340831;,
 -0.075888;0.081328;1.840831;,
 -0.075888;-0.081328;1.840831;,
 -0.170000;0.170000;0.340831;,
 -0.170000;-0.170000;0.340831;;

 28;
 3;7,3,1;,
 3;5,7,1;,
 3;15,11,2;,
 3;6,15,2;,
 3;13,9,10;,
 3;14,13,10;,
 3;4,0,8;,
 3;12,4,8;,
 3;22,21,24;,
 3;25,22,24;,
 3;17,37,41;,
 3;18,17,41;,
 3;19,36,37;,
 3;17,19,37;,
 3;20,40,36;,
 3;19,20,36;,
 3;18,41,40;,
 3;20,18,40;,
 3;28,30,31;,
 3;29,28,31;,
 3;29,31,16;,
 3;23,29,16;,
 3;27,33,32;,
 3;26,27,32;,
 3;26,32,30;,
 3;28,26,30;,
 3;39,35,34;,
 3;34,38,39;;

 MeshMaterialList {
  1;
  28;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs62.bmp";
 }
 }
}
 MeshNormals {
  42;
  -0.513331;-0.256722;0.818893;,
  -0.513331;-0.256722;0.818893;,
  -0.256849;0.513811;0.818551;,
  -0.256849;0.513811;0.818551;,
  -0.319835;-0.639812;0.698818;,
  -0.319835;-0.639812;0.698818;,
  -0.790051;0.395112;0.468728;,
  -0.790051;0.395112;0.468728;,
  0.256849;-0.513811;0.818551;,
  0.256849;-0.513811;0.818551;,
  0.513331;0.256722;0.818893;,
  0.513331;0.256722;0.818893;,
  0.790051;-0.395112;0.468728;,
  0.790051;-0.395112;0.468728;,
  0.319835;0.639812;0.698818;,
  0.319835;0.639812;0.698818;,
  0.534522;-0.267261;0.801784;,
  0.534522;-0.267261;0.801784;,
  -0.267261;-0.534523;0.801784;,
  0.267261;0.534522;0.801784;,
  -0.534522;0.267261;0.801784;,
  0.816497;0.408248;-0.408248;,
  -0.333333;0.666667;-0.666667;,
  0.333333;-0.666667;-0.666667;,
  0.333333;-0.666667;-0.666667;,
  -0.816497;-0.408248;-0.408248;,
  -0.816497;-0.408248;-0.408248;,
  0.333333;-0.666667;-0.666667;,
  -0.333333;0.666667;-0.666667;,
  0.816497;0.408248;-0.408248;,
  -0.534522;0.267261;0.801784;,
  0.267261;0.534522;0.801784;,
  -0.267261;-0.534523;0.801784;,
  0.534522;-0.267261;0.801784;,
  0.319835;0.639812;0.698818;,
  0.790051;-0.395112;0.468728;,
  0.513331;0.256722;0.818893;,
  0.256849;-0.513811;0.818551;,
  -0.790051;0.395112;0.468728;,
  -0.319835;-0.639812;0.698818;,
  -0.256849;0.513811;0.818551;,
  -0.513331;-0.256722;0.818893;;

  28;
  3;7,3,1;,
  3;5,7,1;,
  3;15,11,2;,
  3;6,15,2;,
  3;13,9,10;,
  3;14,13,10;,
  3;4,0,8;,
  3;12,4,8;,
  3;22,21,24;,
  3;25,22,24;,
  3;17,37,41;,
  3;18,17,41;,
  3;19,36,37;,
  3;17,19,37;,
  3;20,40,36;,
  3;19,20,36;,
  3;18,41,40;,
  3;20,18,40;,
  3;28,30,31;,
  3;29,28,31;,
  3;29,31,16;,
  3;23,29,16;,
  3;27,33,32;,
  3;26,27,32;,
  3;26,32,30;,
  3;28,26,30;,
  3;39,35,34;,
  3;34,38,39;;
 }
 MeshTextureCoords {
 42;
 0.925781;0.878906;,
 0.925781;0.980469;,
 0.925781;0.980469;,
 0.925781;0.878906;,
 0.480469;0.906250;,
 0.480469;0.949219;,
 0.480469;0.949219;,
 0.480469;0.906250;,
 0.925781;0.980469;,
 0.925781;0.878906;,
 0.925781;0.980469;,
 0.925781;0.878906;,
 0.480469;0.949219;,
 0.480469;0.906250;,
 0.480469;0.949219;,
 0.480469;0.906250;,
 0.164062;0.988281;,
 0.035156;0.871094;,
 0.035156;0.988281;,
 0.152344;0.871094;,
 0.152344;0.988281;,
 0.152344;0.988281;,
 0.152344;0.871094;,
 0.164062;0.906250;,
 0.035156;0.988281;,
 0.035156;0.871094;,
 0.300781;0.906250;,
 0.167969;0.906250;,
 0.441406;0.906250;,
 0.300781;0.906250;,
 0.441406;0.988281;,
 0.300781;0.988281;,
 0.300781;0.988281;,
 0.167969;0.988281;,
 0.976562;0.746094;,
 0.871094;0.746094;,
 0.125000;0.898438;,
 0.066406;0.898438;,
 0.976562;0.843750;,
 0.871094;0.843750;,
 0.125000;0.960938;,
 0.066406;0.960938;;
 }
}
Frame frm-face4 {
  FrameTransformMatrix {
0.747400,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,-4.088283,1.000000;;
 }
Mesh face4 {
 10;
 -2.990786;2.267343;0.000000;,
 -1.533534;2.274782;0.000000;,
 0.000000;2.270503;0.000000;,
 1.525062;2.274782;0.000000;,
 2.990786;2.267343;0.000000;,
 2.990786;-2.267343;0.000000;,
 1.525062;-2.264645;0.000000;,
 0.004248;-2.264646;0.000000;,
 -1.525062;-2.264646;0.000000;,
 -2.990786;-2.267343;0.000000;;

 8;
 3;4,5,6;,
 3;3,4,6;,
 3;2,3,6;,
 3;1,2,6;,
 3;0,1,6;,
 3;8,9,0;,
 3;7,8,0;,
 3;6,7,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 0.985816;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.985816;1.000000;1.000000;;
 TextureFilename {
  "acs61.bmp";
 }
 }
}
 MeshNormals {
  10;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;;

  8;
  3;4,5,6;,
  3;3,4,6;,
  3;2,3,6;,
  3;1,2,6;,
  3;0,1,6;,
  3;8,9,0;,
  3;7,8,0;,
  3;6,7,0;;
 }
 MeshTextureCoords {
 10;
 0.019531;0.017013;,
 0.223185;0.015625;,
 0.437500;0.016424;,
 0.650631;0.015625;,
 0.855469;0.017013;,
 0.855469;0.863281;,
 0.650631;0.862778;,
 0.438094;0.862778;,
 0.224369;0.862778;,
 0.019531;0.863281;;
 }
}
}
Frame frm-face10 {
  FrameTransformMatrix {
0.745875,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,-4.088283,1.000000;;
 }
Mesh face10 {
 10;
 -2.990786;2.267343;0.000000;,
 -1.533534;2.274782;0.000000;,
 0.000000;2.270503;0.000000;,
 1.525062;2.274782;0.000000;,
 2.990786;2.267343;0.000000;,
 2.990786;-2.267343;0.000000;,
 1.525062;-2.264645;0.000000;,
 0.004248;-2.264646;0.000000;,
 -1.525062;-2.264646;0.000000;,
 -2.990786;-2.267343;0.000000;;

 8;
 3;6,5,4;,
 3;6,4,3;,
 3;6,3,2;,
 3;6,2,1;,
 3;6,1,0;,
 3;0,9,8;,
 3;0,8,7;,
 3;0,7,6;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 0.985816;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.985816;1.000000;1.000000;;
 TextureFilename {
  "acs61.bmp";
 }
 }
}
 MeshNormals {
  10;
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;;

  8;
  3;6,5,4;,
  3;6,4,3;,
  3;6,3,2;,
  3;6,2,1;,
  3;6,1,0;,
  3;0,9,8;,
  3;0,8,7;,
  3;0,7,6;;
 }
 MeshTextureCoords {
 10;
 0.019531;0.017013;,
 0.223185;0.015625;,
 0.437500;0.016424;,
 0.650631;0.015625;,
 0.855469;0.017013;,
 0.855469;0.863281;,
 0.650631;0.862778;,
 0.438094;0.862778;,
 0.224369;0.862778;,
 0.019531;0.863281;;
 }
}
}
}
}
AnimationSet {
 Animation anim-acs61 {
  {frm-acs61}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  100; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  }
 }
 Animation anim-base {
  {frm-base}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.002629;;,
  100; 3; 0.000000, 0.000000, -0.002629;;;
  }
 }
 Animation anim-face4 {
  {frm-face4}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  100; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  1;
  2;
  1; 3; 0.747400, 1.000000, 1.000000;;,
  100; 3; 0.747400, 1.000000, 1.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 4.088283;;,
  100; 3; 0.000000, 0.000000, 4.088283;;;
  }
 }
 Animation anim-face10 {
  {frm-face10}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  100; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  1;
  2;
  1; 3; 0.745875, 1.000000, 1.000000;;,
  100; 3; 0.745875, 1.000000, 1.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 4.088283;;,
  100; 3; 0.000000, 0.000000, 4.088283;;;
  }
 }
  }