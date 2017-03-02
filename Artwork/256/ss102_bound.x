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

Frame frm-bounding_model {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-bound03 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound03 {
 36;
 2.961665;0.241614;7.354205;,
 2.961665;-0.586571;7.354205;,
 9.807990;21.277510;1.941672;,
 9.807990;19.179443;3.046270;,
 9.807987;4.824236;2.991041;,
 6.234671;1.290648;6.249607;,
 6.234671;-1.304332;6.194377;,
 9.807985;-7.580324;2.076830;,
 9.807984;-14.941778;2.052134;,
 9.807984;-17.039848;-0.046603;,
 9.807985;-14.886567;-2.034880;,
 9.807986;-7.801174;-2.110704;,
 7.529012;-2.120890;-4.828402;,
 3.754451;-0.476148;-7.336954;,
 3.754451;0.241613;-7.336954;,
 7.529013;1.435668;-5.049322;,
 9.807988;4.713811;-3.084250;,
 9.807991;19.234653;-3.029021;,
 9.807991;21.277510;-2.090113;,
 8.482003;21.277510;1.941671;,
 8.482002;19.179443;3.046270;,
 8.482000;4.824236;2.991041;,
 4.908684;1.290648;6.249606;,
 4.908684;-1.304332;6.194377;,
 8.481999;-7.580324;2.076830;,
 8.481997;-14.941778;2.052134;,
 8.481997;-17.039848;-0.046603;,
 8.481998;-14.886567;-2.034880;,
 8.481999;-7.801174;-2.110705;,
 6.203026;-2.120889;-4.828402;,
 2.428464;-0.476147;-7.336954;,
 2.428464;0.241613;-7.336954;,
 6.203026;1.435668;-5.049322;,
 8.482001;4.713811;-3.084250;,
 8.482003;19.234653;-3.029021;,
 8.482003;21.277510;-2.090113;;

 68;
 3;18,35,19;,
 3;2,18,19;,
 3;17,34,35;,
 3;18,17,35;,
 3;16,33,34;,
 3;17,16,34;,
 3;15,32,33;,
 3;16,15,33;,
 3;14,31,32;,
 3;15,14,32;,
 3;13,30,31;,
 3;14,13,31;,
 3;12,29,30;,
 3;13,12,30;,
 3;11,28,29;,
 3;12,11,29;,
 3;10,27,28;,
 3;11,10,28;,
 3;9,26,27;,
 3;10,9,27;,
 3;8,25,26;,
 3;9,8,26;,
 3;7,24,25;,
 3;8,7,25;,
 3;6,23,24;,
 3;7,6,24;,
 3;6,1,23;,
 3;5,6,7;,
 3;4,5,7;,
 3;5,22,0;,
 3;4,21,22;,
 3;5,4,22;,
 3;3,20,21;,
 3;4,3,21;,
 3;2,19,20;,
 3;3,2,20;,
 3;31,30,29;,
 3;32,31,29;,
 3;13,14,15;,
 3;12,13,15;,
 3;0,1,6;,
 3;5,0,6;,
 3;1,0,22;,
 3;23,1,22;,
 3;16,11,12;,
 3;15,16,12;,
 3;28,33,32;,
 3;29,28,32;,
 3;26,25,24;,
 3;27,26,24;,
 3;28,27,24;,
 3;33,28,24;,
 3;34,33,24;,
 3;35,34,24;,
 3;19,35,24;,
 3;20,19,24;,
 3;21,20,24;,
 3;2,3,4;,
 3;18,2,4;,
 3;17,18,4;,
 3;16,17,4;,
 3;11,16,4;,
 3;10,11,4;,
 3;9,10,4;,
 3;7,8,9;,
 3;4,7,9;,
 3;23,22,21;,
 3;24,23,21;;

 MeshNormals {
  36;
  0.081462;0.380736;0.921089;,
  -0.612829;-0.755516;-0.231595;,
  0.606801;0.586086;0.536932;,
  0.316228;0.225856;0.921406;,
  0.763218;0.078430;0.641364;,
  0.309200;0.294003;0.904410;,
  0.257013;-0.410361;0.874956;,
  0.602857;-0.164448;0.780718;,
  0.316228;-0.364585;0.875830;,
  0.806364;-0.554782;-0.204923;,
  0.554700;-0.307187;-0.773268;,
  0.525170;-0.152866;-0.837155;,
  0.338535;-0.391446;-0.855666;,
  0.226803;-0.321370;-0.919392;,
  0.161355;0.522661;-0.837132;,
  0.351676;0.391483;-0.850333;,
  0.602197;0.113344;-0.790260;,
  0.554700;0.179392;-0.812481;,
  0.612264;0.740108;-0.278160;,
  -0.606801;0.748144;0.268466;,
  -0.554700;0.198089;0.808127;,
  -0.819661;0.357305;0.447760;,
  -0.629125;0.771314;-0.096313;,
  -0.726256;-0.549591;-0.412918;,
  -0.983358;-0.063369;-0.170269;,
  -0.316228;-0.364585;0.875830;,
  -0.672620;-0.703841;0.228453;,
  -0.554700;-0.307186;-0.773269;,
  -0.943793;-0.144280;-0.297384;,
  -0.706653;-0.706222;0.043499;,
  -0.229373;-0.593770;-0.771249;,
  -0.651362;0.594034;-0.472071;,
  -0.615172;0.781330;0.105296;,
  -0.831627;0.281261;-0.478841;,
  -0.554700;0.179392;-0.812482;,
  -0.612264;0.561820;-0.556320;;

  68;
  3;18,35,19;,
  3;2,18,19;,
  3;17,34,35;,
  3;18,17,35;,
  3;16,33,34;,
  3;17,16,34;,
  3;15,32,33;,
  3;16,15,33;,
  3;14,31,32;,
  3;15,14,32;,
  3;13,30,31;,
  3;14,13,31;,
  3;12,29,30;,
  3;13,12,30;,
  3;11,28,29;,
  3;12,11,29;,
  3;10,27,28;,
  3;11,10,28;,
  3;9,26,27;,
  3;10,9,27;,
  3;8,25,26;,
  3;9,8,26;,
  3;7,24,25;,
  3;8,7,25;,
  3;6,23,24;,
  3;7,6,24;,
  3;6,1,23;,
  3;5,6,7;,
  3;4,5,7;,
  3;5,22,0;,
  3;4,21,22;,
  3;5,4,22;,
  3;3,20,21;,
  3;4,3,21;,
  3;2,19,20;,
  3;3,2,20;,
  3;31,30,29;,
  3;32,31,29;,
  3;13,14,15;,
  3;12,13,15;,
  3;0,1,6;,
  3;5,0,6;,
  3;1,0,22;,
  3;23,1,22;,
  3;16,11,12;,
  3;15,16,12;,
  3;28,33,32;,
  3;29,28,32;,
  3;26,25,24;,
  3;27,26,24;,
  3;28,27,24;,
  3;33,28,24;,
  3;34,33,24;,
  3;35,34,24;,
  3;19,35,24;,
  3;20,19,24;,
  3;21,20,24;,
  3;2,3,4;,
  3;18,2,4;,
  3;17,18,4;,
  3;16,17,4;,
  3;11,16,4;,
  3;10,11,4;,
  3;9,10,4;,
  3;7,8,9;,
  3;4,7,9;,
  3;23,22,21;,
  3;24,23,21;;
 }
}
}
Frame frm-bound02 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
3.263569,0.000000,0.000000,1.000000;;
 }
Mesh bound02 {
 8;
 -15.160189;1.947040;-0.519653;,
 -15.160188;-1.930714;-0.520599;,
 -15.315426;1.947776;0.513881;,
 -15.315424;-1.931864;0.512935;,
 -12.671127;1.956632;-0.519649;,
 -12.671127;-1.956632;-0.519649;,
 -12.671127;1.956632;0.519647;,
 -12.671127;-1.956632;0.519647;;

 12;
 3;4,6,7;,
 3;5,4,7;,
 3;0,2,6;,
 3;4,0,6;,
 3;1,3,2;,
 3;0,1,2;,
 3;5,7,3;,
 3;1,5,3;,
 3;6,2,3;,
 3;7,6,3;,
 3;0,4,5;,
 3;1,0,5;;

 MeshNormals {
  8;
  -0.321128;0.645111;-0.693332;,
  -0.771565;-0.388116;-0.504037;,
  -0.851437;0.429178;0.301431;,
  -0.348699;-0.688234;0.636194;,
  0.815932;0.408708;-0.408916;,
  0.327415;-0.667642;-0.668620;,
  0.329910;0.667684;0.667351;,
  0.814989;-0.410032;0.409471;;

  12;
  3;4,6,7;,
  3;5,4,7;,
  3;0,2,6;,
  3;4,0,6;,
  3;1,3,2;,
  3;0,1,2;,
  3;5,7,3;,
  3;1,5,3;,
  3;6,2,3;,
  3;7,6,3;,
  3;0,4,5;,
  3;1,0,5;;
 }
}
}
Frame frm-bound01 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound01 {
 36;
 -2.961668;0.241613;7.354205;,
 -2.961668;-0.586572;7.354205;,
 -9.807987;21.277510;1.941670;,
 -9.807987;19.179443;3.046269;,
 -9.807987;4.824236;2.991040;,
 -6.234673;1.290647;6.249606;,
 -6.234673;-1.304333;6.194376;,
 -9.807987;-7.580324;2.076828;,
 -9.807987;-14.941778;2.052132;,
 -9.807987;-17.039848;-0.046605;,
 -9.807987;-14.886567;-2.034882;,
 -9.807987;-7.801174;-2.110707;,
 -7.529011;-2.120890;-4.828403;,
 -3.754449;-0.476148;-7.336954;,
 -3.754449;0.241612;-7.336954;,
 -7.529011;1.435668;-5.049323;,
 -9.807987;4.713811;-3.084251;,
 -9.807987;19.234653;-3.029022;,
 -9.807987;21.277510;-2.090114;,
 -8.482000;21.277510;1.941671;,
 -8.482000;19.179443;3.046269;,
 -8.482000;4.824236;2.991040;,
 -4.908686;1.290647;6.249606;,
 -4.908686;-1.304333;6.194376;,
 -8.482000;-7.580324;2.076828;,
 -8.482000;-14.941778;2.052132;,
 -8.482000;-17.039848;-0.046605;,
 -8.481999;-14.886567;-2.034882;,
 -8.481999;-7.801174;-2.110706;,
 -6.203024;-2.120890;-4.828403;,
 -2.428462;-0.476148;-7.336954;,
 -2.428462;0.241612;-7.336954;,
 -6.203024;1.435668;-5.049322;,
 -8.481999;4.713811;-3.084251;,
 -8.481999;19.234653;-3.029022;,
 -8.481999;21.277510;-2.090113;;

 68;
 3;35,18,2;,
 3;19,35,2;,
 3;34,17,18;,
 3;35,34,18;,
 3;33,16,17;,
 3;34,33,17;,
 3;32,15,16;,
 3;33,32,16;,
 3;31,14,15;,
 3;32,31,15;,
 3;30,13,14;,
 3;31,30,14;,
 3;29,12,13;,
 3;30,29,13;,
 3;28,11,12;,
 3;29,28,12;,
 3;27,10,11;,
 3;28,27,11;,
 3;26,9,10;,
 3;27,26,10;,
 3;25,8,9;,
 3;26,25,9;,
 3;24,7,8;,
 3;25,24,8;,
 3;23,6,7;,
 3;24,23,7;,
 3;23,1,6;,
 3;6,5,4;,
 3;7,6,4;,
 3;0,22,5;,
 3;21,4,5;,
 3;22,21,5;,
 3;20,3,4;,
 3;21,20,4;,
 3;19,2,3;,
 3;20,19,3;,
 3;30,31,32;,
 3;29,30,32;,
 3;14,13,12;,
 3;15,14,12;,
 3;1,0,5;,
 3;6,1,5;,
 3;0,1,23;,
 3;22,0,23;,
 3;11,16,15;,
 3;12,11,15;,
 3;33,28,29;,
 3;32,33,29;,
 3;19,20,21;,
 3;35,19,21;,
 3;34,35,21;,
 3;33,34,21;,
 3;28,33,21;,
 3;27,28,21;,
 3;26,27,21;,
 3;24,25,26;,
 3;21,24,26;,
 3;9,8,7;,
 3;10,9,7;,
 3;11,10,7;,
 3;16,11,7;,
 3;17,16,7;,
 3;18,17,7;,
 3;2,18,7;,
 3;3,2,7;,
 3;4,3,7;,
 3;22,23,24;,
 3;21,22,24;;

 MeshNormals {
  36;
  0.620513;0.780759;0.073340;,
  -0.027692;-0.661878;0.749100;,
  -0.606801;0.748144;0.268466;,
  -0.554700;0.198089;0.808127;,
  -0.563405;0.205715;0.800160;,
  -0.295364;0.382501;0.875473;,
  -0.295904;-0.416695;0.859539;,
  -0.547904;-0.191532;0.814319;,
  -0.316228;-0.364585;0.875830;,
  -0.672620;-0.703841;0.228453;,
  -0.554700;-0.307186;-0.773269;,
  -0.539118;-0.156827;-0.827500;,
  -0.350675;-0.387136;-0.852732;,
  -0.204970;-0.337820;-0.918621;,
  -0.246215;0.176178;-0.953069;,
  -0.364505;0.384681;-0.848031;,
  -0.546244;0.149296;-0.824214;,
  -0.554700;0.179392;-0.812482;,
  -0.612264;0.561820;-0.556319;,
  0.606801;0.586086;0.536932;,
  0.316228;0.225856;0.921406;,
  0.985118;0.154859;-0.074576;,
  0.719883;0.586134;-0.371773;,
  0.661813;-0.742886;-0.100622;,
  0.922067;-0.190816;0.336722;,
  0.316228;-0.364585;0.875830;,
  0.806364;-0.554782;-0.204923;,
  0.554700;-0.307186;-0.773268;,
  0.829391;-0.177914;-0.529582;,
  0.713492;-0.699872;0.033306;,
  0.545225;-0.683418;-0.485457;,
  0.244864;0.833200;-0.495802;,
  0.622175;0.776965;0.096043;,
  0.914394;0.228025;-0.334496;,
  0.554700;0.179392;-0.812481;,
  0.612264;0.740108;-0.278160;;

  68;
  3;35,18,2;,
  3;19,35,2;,
  3;34,17,18;,
  3;35,34,18;,
  3;33,16,17;,
  3;34,33,17;,
  3;32,15,16;,
  3;33,32,16;,
  3;31,14,15;,
  3;32,31,15;,
  3;30,13,14;,
  3;31,30,14;,
  3;29,12,13;,
  3;30,29,13;,
  3;28,11,12;,
  3;29,28,12;,
  3;27,10,11;,
  3;28,27,11;,
  3;26,9,10;,
  3;27,26,10;,
  3;25,8,9;,
  3;26,25,9;,
  3;24,7,8;,
  3;25,24,8;,
  3;23,6,7;,
  3;24,23,7;,
  3;23,1,6;,
  3;6,5,4;,
  3;7,6,4;,
  3;0,22,5;,
  3;21,4,5;,
  3;22,21,5;,
  3;20,3,4;,
  3;21,20,4;,
  3;19,2,3;,
  3;20,19,3;,
  3;30,31,32;,
  3;29,30,32;,
  3;14,13,12;,
  3;15,14,12;,
  3;1,0,5;,
  3;6,1,5;,
  3;0,1,23;,
  3;22,0,23;,
  3;11,16,15;,
  3;12,11,15;,
  3;33,28,29;,
  3;32,33,29;,
  3;19,20,21;,
  3;35,19,21;,
  3;34,35,21;,
  3;33,34,21;,
  3;28,33,21;,
  3;27,28,21;,
  3;26,27,21;,
  3;24,25,26;,
  3;21,24,26;,
  3;9,8,7;,
  3;10,9,7;,
  3;11,10,7;,
  3;16,11,7;,
  3;17,16,7;,
  3;18,17,7;,
  3;2,18,7;,
  3;3,2,7;,
  3;4,3,7;,
  3;22,23,24;,
  3;21,22,24;;
 }
}
}
Frame frm-bound04_1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.091926,1.912834,0.143772,1.000000;;
 }
Mesh bound04_1 {
 14;
 -7.494155;-17.032875;-2.831066;,
 -7.494150;17.100653;-2.831066;,
 -1.295303;-17.032877;-7.905660;,
 -1.295298;17.100653;-7.905660;,
 6.198849;-17.032879;-5.074593;,
 6.198854;17.100651;-5.074593;,
 7.494149;-17.032879;2.831067;,
 7.494154;17.100651;2.831067;,
 1.295297;-17.032877;7.905659;,
 1.295302;17.100653;7.905659;,
 -6.198854;-17.032875;5.074591;,
 -6.198849;17.100653;5.074591;,
 -0.000003;-17.032877;-0.000000;,
 0.000003;17.100653;-0.000000;;

 18;
 3;13,11,9;,
 4;10,8,9,11;,
 3;12,8,10;,
 3;13,9,7;,
 4;8,6,7,9;,
 3;12,6,8;,
 3;13,7,5;,
 4;6,4,5,7;,
 3;12,4,6;,
 3;13,5,3;,
 4;4,2,3,5;,
 3;12,2,4;,
 3;13,3,1;,
 4;2,0,1,3;,
 3;12,0,2;,
 3;13,1,11;,
 4;0,10,11,1;,
 3;12,10,0;;

 MeshNormals {
  14;
  -0.661481;-0.707107;-0.249887;,
  -0.661480;0.707107;-0.249887;,
  -0.105850;-0.755929;-0.646040;,
  -0.105850;0.755929;-0.646040;,
  0.547149;-0.707107;-0.447915;,
  0.547149;0.707107;-0.447915;,
  0.612412;-0.755929;0.231351;,
  0.612412;0.755929;0.231351;,
  0.105850;-0.755929;0.646040;,
  0.105850;0.755929;0.646040;,
  -0.547149;-0.707107;0.447915;,
  -0.547149;0.707107;0.447915;,
  -0.000000;-1.000000;0.000000;,
  0.000000;1.000000;-0.000000;;

  18;
  3;13,11,9;,
  4;10,8,9,11;,
  3;12,8,10;,
  3;13,9,7;,
  4;8,6,7,9;,
  3;12,6,8;,
  3;13,7,5;,
  4;6,4,5,7;,
  3;12,4,6;,
  3;13,5,3;,
  4;4,2,3,5;,
  3;12,2,4;,
  3;13,3,1;,
  4;2,0,1,3;,
  3;12,0,2;,
  3;13,1,11;,
  4;0,10,11,1;,
  3;12,10,0;;
 }
}
}
}
AnimationSet {
 Animation anim-bound02 {
  {frm-bound02}
  AnimationKey {
  2;
  2;
  1; 3; 3.263569, 0.000000, 0.000000;;,
  100; 3; 3.263569, 0.000000, 0.000000;;;
  }
 }
 Animation anim-bound04_1 {
  {frm-bound04_1}
  AnimationKey {
  2;
  2;
  1; 3; -0.091926, 1.912834, 0.143772;;,
  100; 3; -0.091926, 1.912834, 0.143772;;;
  }
 }
}