// flags:  --hlsl-shader-model 62
enable f16;

struct Inner {
    scalar_f32 : f32,
    scalar_i32 : i32,
    scalar_u32 : u32,
    scalar_f16 : f16,
    vec2_f32 : vec2<f32>,
    vec2_i32 : vec2<i32>,
    vec2_u32 : vec2<u32>,
    vec2_f16 : vec2<f16>,
    vec3_f32 : vec3<f32>,
    vec3_i32 : vec3<i32>,
    vec3_u32 : vec3<u32>,
    vec3_f16 : vec3<f16>,
    vec4_f32 : vec4<f32>,
    vec4_i32 : vec4<i32>,
    vec4_u32 : vec4<u32>,
    vec4_f16 : vec4<f16>,
    mat2x2_f32 : mat2x2<f32>,
    mat2x3_f32 : mat2x3<f32>,
    mat2x4_f32 : mat2x4<f32>,
    mat3x2_f32 : mat3x2<f32>,
    mat3x3_f32 : mat3x3<f32>,
    mat3x4_f32 : mat3x4<f32>,
    mat4x2_f32 : mat4x2<f32>,
    mat4x3_f32 : mat4x3<f32>,
    mat4x4_f32 : mat4x4<f32>,
    mat2x2_f16 : mat2x2<f16>,
    mat2x3_f16 : mat2x3<f16>,
    mat2x4_f16 : mat2x4<f16>,
    mat3x2_f16 : mat3x2<f16>,
    mat3x3_f16 : mat3x3<f16>,
    mat3x4_f16 : mat3x4<f16>,
    mat4x2_f16 : mat4x2<f16>,
    mat4x3_f16 : mat4x3<f16>,
    mat4x4_f16 : mat4x4<f16>,
    arr2_vec3_f32 : array<vec3<f32>, 2>,
    arr2_mat4x2_f16 : array<mat4x2<f16>, 2>,
};

struct S {
    arr : array<Inner>,
};

@binding(0) @group(0) var<storage, read> sb : S;
@group(0) @binding(1) var<storage, read_write> s: i32;

@compute @workgroup_size(1)
fn main(@builtin(local_invocation_index) idx : u32) {
    let scalar_f32 : f32 = sb.arr[idx].scalar_f32;
    let scalar_i32 : i32 = sb.arr[idx].scalar_i32;
    let scalar_u32 : u32 = sb.arr[idx].scalar_u32;
    let scalar_f16 : f16 = sb.arr[idx].scalar_f16;
    let vec2_f32 : vec2<f32> = sb.arr[idx].vec2_f32;
    let vec2_i32 : vec2<i32> = sb.arr[idx].vec2_i32;
    let vec2_u32 : vec2<u32> = sb.arr[idx].vec2_u32;
    let vec2_f16 : vec2<f16> = sb.arr[idx].vec2_f16;
    let vec3_f32 : vec3<f32> = sb.arr[idx].vec3_f32;
    let vec3_i32 : vec3<i32> = sb.arr[idx].vec3_i32;
    let vec3_u32 : vec3<u32> = sb.arr[idx].vec3_u32;
    let vec3_f16 : vec3<f16> = sb.arr[idx].vec3_f16;
    let vec4_f32 : vec4<f32> = sb.arr[idx].vec4_f32;
    let vec4_i32 : vec4<i32> = sb.arr[idx].vec4_i32;
    let vec4_u32 : vec4<u32> = sb.arr[idx].vec4_u32;
    let vec4_f16 : vec4<f16> = sb.arr[idx].vec4_f16;
    let mat2x2_f32 : mat2x2<f32> = sb.arr[idx].mat2x2_f32;
    let mat2x3_f32 : mat2x3<f32> = sb.arr[idx].mat2x3_f32;
    let mat2x4_f32 : mat2x4<f32> = sb.arr[idx].mat2x4_f32;
    let mat3x2_f32 : mat3x2<f32> = sb.arr[idx].mat3x2_f32;
    let mat3x3_f32 : mat3x3<f32> = sb.arr[idx].mat3x3_f32;
    let mat3x4_f32 : mat3x4<f32> = sb.arr[idx].mat3x4_f32;
    let mat4x2_f32 : mat4x2<f32> = sb.arr[idx].mat4x2_f32;
    let mat4x3_f32 : mat4x3<f32> = sb.arr[idx].mat4x3_f32;
    let mat4x4_f32 : mat4x4<f32> = sb.arr[idx].mat4x4_f32;
    let mat2x2_f16 : mat2x2<f16> = sb.arr[idx].mat2x2_f16;
    let mat2x3_f16 : mat2x3<f16> = sb.arr[idx].mat2x3_f16;
    let mat2x4_f16 : mat2x4<f16> = sb.arr[idx].mat2x4_f16;
    let mat3x2_f16 : mat3x2<f16> = sb.arr[idx].mat3x2_f16;
    let mat3x3_f16 : mat3x3<f16> = sb.arr[idx].mat3x3_f16;
    let mat3x4_f16 : mat3x4<f16> = sb.arr[idx].mat3x4_f16;
    let mat4x2_f16 : mat4x2<f16> = sb.arr[idx].mat4x2_f16;
    let mat4x3_f16 : mat4x3<f16> = sb.arr[idx].mat4x3_f16;
    let mat4x4_f16 : mat4x4<f16> = sb.arr[idx].mat4x4_f16;
    let arr2_vec3_f32 : array<vec3<f32>, 2> = sb.arr[idx].arr2_vec3_f32;
    let arr2_mat4x2_f16 : array<mat4x2<f16>, 2> = sb.arr[idx].arr2_mat4x2_f16;

    s = i32(scalar_f32) + scalar_i32 + i32(scalar_u32) + i32(scalar_f16) +
        i32(vec2_f32.x) + vec2_i32.x + i32(vec2_u32.x) + i32(vec2_f16.x) +
        i32(vec3_f32.y) + vec3_i32.y + i32(vec3_u32.y) + i32(vec3_f16.y) +
        i32(vec4_f32.z) + vec4_i32.z + i32(vec4_u32.z) + i32(vec4_f16.z) +
        i32(mat2x2_f32[0].x) + i32(mat2x3_f32[0].x) +
        i32(mat2x4_f32[0].x) + i32(mat3x2_f32[0].x) +
        i32(mat3x3_f32[0].x) + i32(mat3x4_f32[0].x) +
        i32(mat4x2_f32[0].x) + i32(mat4x3_f32[0].x) +
        i32(mat4x4_f32[0].x) +
        i32(mat2x2_f16[0].x) + i32(mat2x3_f16[0].x) +
        i32(mat2x4_f16[0].x) + i32(mat3x2_f16[0].x) +
        i32(mat3x3_f16[0].x) + i32(mat3x4_f16[0].x) +
        i32(mat4x2_f16[0].x) + i32(mat4x3_f16[0].x) +
        i32(mat4x4_f16[0].x) +
        i32(arr2_mat4x2_f16[0][0].x) + i32(arr2_vec3_f32[0].x);
}
