//
// fragment_main
//
RWByteAddressBuffer prevent_dce : register(u0);
RWTexture3D<float4> arg_0 : register(u0, space1);

float4 textureLoad_742f1b() {
  float4 res = arg_0.Load((1u).xxx);
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_742f1b()));
  return;
}
//
// compute_main
//
RWByteAddressBuffer prevent_dce : register(u0);
RWTexture3D<float4> arg_0 : register(u0, space1);

float4 textureLoad_742f1b() {
  float4 res = arg_0.Load((1u).xxx);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(textureLoad_742f1b()));
  return;
}
