#ifndef LERP_EXTENSIONS_HLSL
#define LERP_EXTENSIONS_HLSL

#if UNITY_VERSION
#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
#else
#define real float
#define real2 float2
#define real3 float3
#define real4 float4
#endif

real lerp(real d00,
          real d10,
          real d01,
          real d11,
          real2 tPos)
{
    return lerp(
        lerp(d00, d10, tPos.x),
        lerp(d01, d11, tPos.x),
        tPos.y
    );
}

real2 lerp(real2 d00,
           real2 d10,
           real2 d01,
           real2 d11,
           real2 tPos)
{
    return lerp(
        lerp(d00, d10, tPos.x),
        lerp(d01, d11, tPos.x),
        tPos.y
    );
}

real3 lerp(real3 d00,
           real3 d10,
           real3 d01,
           real3 d11,
           real2 tPos)
{
    return lerp(
        lerp(d00, d10, tPos.x),
        lerp(d01, d11, tPos.x),
        tPos.y
    );
}

real4 lerp(real4 d00,
           real4 d10,
           real4 d01,
           real4 d11,
           real2 tPos)
{
    return lerp(
        lerp(d00, d10, tPos.x),
        lerp(d01, d11, tPos.x),
        tPos.y
    );
}

real lerp(real d000,
          real d100,
          real d010,
          real d110,
          real d001,
          real d101,
          real d011,
          real d111,
          real3 tPos)
{
    return lerp(
        lerp(d000, d100, d010, d110, tPos.xy),
        lerp(d001, d101, d011, d111, tPos.xy),
        tPos.z
    );
}

real2 lerp(real2 d000,
           real2 d100,
           real2 d010,
           real2 d110,
           real2 d001,
           real2 d101,
           real2 d011,
           real2 d111,
           real3 tPos)
{
    return lerp(
        lerp(d000, d100, d010, d110, tPos.xy),
        lerp(d001, d101, d011, d111, tPos.xy),
        tPos.z
    );
}

real3 lerp(real3 d000,
           real3 d100,
           real3 d010,
           real3 d110,
           real3 d001,
           real3 d101,
           real3 d011,
           real3 d111,
           real3 tPos)
{
    return lerp(
        lerp(d000, d100, d010, d110, tPos.xy),
        lerp(d001, d101, d011, d111, tPos.xy),
        tPos.z
    );
}

real4 lerp(real4 d000,
           real4 d100,
           real4 d010,
           real4 d110,
           real4 d001,
           real4 d101,
           real4 d011,
           real4 d111,
           real3 tPos)
{
    return lerp(
        lerp(d000, d100, d010, d110, tPos.xy),
        lerp(d001, d101, d011, d111, tPos.xy),
        tPos.z
    );
}

real smoothstep01(real tPos)
{
    return tPos * tPos * (3. - (2. * tPos));
}

real2 smoothstep01(real2 tPos)
{
    return tPos * tPos * (3. - (2. * tPos));
}

real3 smoothstep01(real3 tPos)
{
    return tPos * tPos * (3. - (2. * tPos));
}

real4 smoothstep01(real4 tPos)
{
    return tPos * tPos * tPos * (tPos * (tPos * 6. - 15.) + 10.);
}

real smootherstep01(real tPos)
{
    return tPos * tPos * tPos * (tPos * (tPos * 6. - 15.) + 10.);
}

real2 smootherstep01(real2 tPos)
{
    return tPos * tPos * tPos * (tPos * (tPos * 6. - 15.) + 10.);
}

real3 smootherstep01(real3 tPos)
{
    return tPos * tPos * tPos * (tPos * (tPos * 6. - 15.) + 10.);
}

real4 smootherstep01(real4 tPos)
{
    return tPos * tPos * tPos * (tPos * (tPos * 6. - 15.) + 10.);
}

#endif
