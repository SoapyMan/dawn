//
// fragment_main
//
#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  ivec4 inner;
} v;
uniform highp isampler2DMS f_arg_0;
ivec4 textureLoad_7bee94() {
  ivec4 res = texelFetch(f_arg_0, ivec2(min(uvec2(1u), (uvec2(textureSize(f_arg_0)) - uvec2(1u)))), 1);
  return res;
}
void main() {
  v.inner = textureLoad_7bee94();
}
//
// compute_main
//
#version 310 es

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  ivec4 inner;
} v;
uniform highp isampler2DMS arg_0;
ivec4 textureLoad_7bee94() {
  ivec4 res = texelFetch(arg_0, ivec2(min(uvec2(1u), (uvec2(textureSize(arg_0)) - uvec2(1u)))), 1);
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = textureLoad_7bee94();
}
//
// vertex_main
//
#version 310 es


struct VertexOutput {
  vec4 pos;
  ivec4 prevent_dce;
};

uniform highp isampler2DMS v_arg_0;
layout(location = 0) flat out ivec4 tint_interstage_location0;
ivec4 textureLoad_7bee94() {
  ivec4 res = texelFetch(v_arg_0, ivec2(min(uvec2(1u), (uvec2(textureSize(v_arg_0)) - uvec2(1u)))), 1);
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput v = VertexOutput(vec4(0.0f), ivec4(0));
  v.pos = vec4(0.0f);
  v.prevent_dce = textureLoad_7bee94();
  return v;
}
void main() {
  VertexOutput v_1 = vertex_main_inner();
  gl_Position = vec4(v_1.pos.x, -(v_1.pos.y), ((2.0f * v_1.pos.z) - v_1.pos.w), v_1.pos.w);
  tint_interstage_location0 = v_1.prevent_dce;
  gl_PointSize = 1.0f;
}
