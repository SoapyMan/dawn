struct VertexOutputs {
  float clipDistance[2];
  float4 position;
};
struct tint_symbol {
  float4 position : SV_Position;
  float2 clip_distance_0 : SV_ClipDistance0;
};

VertexOutputs main_inner() {
  VertexOutputs tint_symbol_1 = {(float[2])0, float4(1.0f, 2.0f, 3.0f, 4.0f)};
  return tint_symbol_1;
}

tint_symbol main() {
  VertexOutputs inner_result = main_inner();
  tint_symbol wrapper_result = (tint_symbol)0;
  float tmp_inner_clip_distances[2] = inner_result.clipDistance;
  wrapper_result.clip_distance_0[0u] = tmp_inner_clip_distances[0u];
  wrapper_result.clip_distance_0[1u] = tmp_inner_clip_distances[1u];
  wrapper_result.position = inner_result.position;
  return wrapper_result;
}
