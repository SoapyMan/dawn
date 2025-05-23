//
// fragment_main
//
#version 310 es
#extension GL_AMD_gpu_shader_half_float: require
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer f_prevent_dce_block_ssbo {
  float16_t inner;
} v;
float16_t clamp_553ffb() {
  float16_t arg_0 = 1.0hf;
  float16_t arg_1 = 1.0hf;
  float16_t arg_2 = 1.0hf;
  float16_t res = clamp(arg_0, arg_1, arg_2);
  return res;
}
void main() {
  v.inner = clamp_553ffb();
}
//
// compute_main
//
#version 310 es
#extension GL_AMD_gpu_shader_half_float: require

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  float16_t inner;
} v;
float16_t clamp_553ffb() {
  float16_t arg_0 = 1.0hf;
  float16_t arg_1 = 1.0hf;
  float16_t arg_2 = 1.0hf;
  float16_t res = clamp(arg_0, arg_1, arg_2);
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = clamp_553ffb();
}
//
// vertex_main
//
#version 310 es
#extension GL_AMD_gpu_shader_half_float: require


struct VertexOutput {
  vec4 pos;
  float16_t prevent_dce;
};

layout(location = 0) flat out float16_t tint_interstage_location0;
float16_t clamp_553ffb() {
  float16_t arg_0 = 1.0hf;
  float16_t arg_1 = 1.0hf;
  float16_t arg_2 = 1.0hf;
  float16_t res = clamp(arg_0, arg_1, arg_2);
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput v = VertexOutput(vec4(0.0f), 0.0hf);
  v.pos = vec4(0.0f);
  v.prevent_dce = clamp_553ffb();
  return v;
}
void main() {
  VertexOutput v_1 = vertex_main_inner();
  gl_Position = vec4(v_1.pos.x, -(v_1.pos.y), ((2.0f * v_1.pos.z) - v_1.pos.w), v_1.pos.w);
  tint_interstage_location0 = v_1.prevent_dce;
  gl_PointSize = 1.0f;
}
