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

real lerp(real lxly, real hxly, real lxhy, real hxhy,
          real2 tPos)
{
    return lerp(
        lerp(lxly, hxly, tPos.x),
        lerp(lxhy, hxhy, tPos.x),
        tPos.y
    );
}

real2 lerp(real2 lxly, real2 hxly, real2 lxhy, real2 hxhy,
           real2 tPos)
{
    return lerp(
        lerp(lxly, hxly, tPos.x),
        lerp(lxhy, hxhy, tPos.x),
        tPos.y
    );
}

real3 lerp(real3 lxly, real3 hxly, real3 lxhy, real3 hxhy,
           real2 tPos)
{
    return lerp(
        lerp(lxly, hxly, tPos.x),
        lerp(lxhy, hxhy, tPos.x),
        tPos.y
    );
}

real4 lerp(real4 lxly, real4 hxly, real4 lxhy, real4 hxhy,
           real2 tPos)
{
    return lerp(
        lerp(lxly, hxly, tPos.x),
        lerp(lxhy, hxhy, tPos.x),
        tPos.y
    );
}

real lerp(real lxlylz, real hxlylz, real lxhylz, real hxhylz,
          real lxlyhz, real hxlyhz, real lxhyhz, real hxhyhz,
          real3 tPos)
{
    return lerp(
        lerp(lxlylz, hxlylz, lxhylz, hxhylz, tPos.xy),
        lerp(lxlyhz, hxlyhz, lxhyhz, hxhyhz, tPos.xy),
        tPos.z
    );
}

real2 lerp(real2 lxlylz, real2 hxlylz, real2 lxhylz, real2 hxhylz,
           real2 lxlyhz, real2 hxlyhz, real2 lxhyhz, real2 hxhyhz,
           real3 tPos)
{
    return lerp(
        lerp(lxlylz, hxlylz, lxhylz, hxhylz, tPos.xy),
        lerp(lxlyhz, hxlyhz, lxhyhz, hxhyhz, tPos.xy),
        tPos.z
    );
}

real3 lerp(real3 lxlylz, real3 hxlylz, real3 lxhylz, real3 hxhylz,
           real3 lxlyhz, real3 hxlyhz, real3 lxhyhz, real3 hxhyhz,
           real3 tPos)
{
    return lerp(
        lerp(lxlylz, hxlylz, lxhylz, hxhylz, tPos.xy),
        lerp(lxlyhz, hxlyhz, lxhyhz, hxhyhz, tPos.xy),
        tPos.z
    );
}

real4 lerp(real4 lxlylz, real4 hxlylz, real4 lxhylz, real4 hxhylz,
           real4 lxlyhz, real4 hxlyhz, real4 lxhyhz, real4 hxhyhz,
           real3 tPos)
{
    return lerp(
        lerp(lxlylz, hxlylz, lxhylz, hxhylz, tPos.xy),
        lerp(lxlyhz, hxlyhz, lxhyhz, hxhyhz, tPos.xy),
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
    return tPos * tPos * (3. - (2. * tPos));
}

real smoothlerp(real lxly, real hxly, real tPos)
{
    return lerp(lxly, hxly, smoothstep01(tPos));
}

real2 smoothlerp(real2 lxly, real2 hxly, real tPos)
{
    return lerp(lxly, hxly, smoothstep01(tPos));
}

real3 smoothlerp(real3 lxly, real3 hxly, real tPos)
{
    return lerp(lxly, hxly, smoothstep01(tPos));
}

real4 smoothlerp(real4 lxly, real4 hxly, real tPos)
{
    return lerp(lxly, hxly, smoothstep01(tPos));
}

real smoothlerp(real lxly, real hxly, real lxhy, real hxhy,
                real2 tPos)
{
    tPos = smoothstep01(tPos);
    return lerp(
        lerp(lxly, hxly, tPos.x),
        lerp(lxhy, hxhy, tPos.x),
        tPos.y
    );
}

real2 smoothlerp(real2 lxly, real2 hxly, real2 lxhy, real2 hxhy,
                 real2 tPos)
{
    tPos = smoothstep01(tPos);
    return lerp(
        lerp(lxly, hxly, tPos.x),
        lerp(lxhy, hxhy, tPos.x),
        tPos.y
    );
}

real3 smoothlerp(real3 lxly, real3 hxly, real3 lxhy, real3 hxhy,
                 real2 tPos)
{
    tPos = smoothstep01(tPos);
    return lerp(
        lerp(lxly, hxly, tPos.x),
        lerp(lxhy, hxhy, tPos.x),
        tPos.y
    );
}

real4 smoothlerp(real4 lxly, real4 hxly, real4 lxhy, real4 hxhy,
                 real2 tPos)
{
    tPos = smoothstep01(tPos);
    return lerp(
        lerp(lxly, hxly, tPos.x),
        lerp(lxhy, hxhy, tPos.x),
        tPos.y
    );
}

real smoothlerp(real lxlylz, real hxlylz, real lxhylz, real hxhylz,
                real lxlyhz, real hxlyhz, real lxhyhz, real hxhyhz,
                real3 tPos)
{
    return smoothlerp(
        smoothlerp(lxlylz, hxlylz, lxhylz, hxhylz, tPos.xy),
        smoothlerp(lxlyhz, hxlyhz, lxhyhz, hxhyhz, tPos.xy),
        smoothstep01(tPos.z)
    );
}

real2 smoothlerp(real2 lxlylz, real2 hxlylz, real2 lxhylz, real2 hxhylz,
                 real2 lxlyhz, real2 hxlyhz, real2 lxhyhz, real2 hxhyhz,
                 real3 tPos)
{
    return smoothlerp(
        smoothlerp(lxlylz, hxlylz, lxhylz, hxhylz, tPos.xy),
        smoothlerp(lxlyhz, hxlyhz, lxhyhz, hxhyhz, tPos.xy),
        smoothstep01(tPos.z)
    );
}

real3 smoothlerp(real3 lxlylz, real3 hxlylz, real3 lxhylz, real3 hxhylz,
                 real3 lxlyhz, real3 hxlyhz, real3 lxhyhz, real3 hxhyhz,
                 real3 tPos)
{
    return smoothlerp(
        smoothlerp(lxlylz, hxlylz, lxhylz, hxhylz, tPos.xy),
        smoothlerp(lxlyhz, hxlyhz, lxhyhz, hxhyhz, tPos.xy),
        smoothstep01(tPos.z)
    );
}

real4 smoothlerp(real4 lxlylz, real4 hxlylz, real4 lxhylz, real4 hxhylz,
                 real4 lxlyhz, real4 hxlyhz, real4 lxhyhz, real4 hxhyhz,
                 real3 tPos)
{
    return smoothlerp(
        smoothlerp(lxlylz, hxlylz, lxhylz, hxhylz, tPos.xy),
        smoothlerp(lxlyhz, hxlyhz, lxhyhz, hxhyhz, tPos.xy),
        smoothstep01(tPos.z)
    );
}

#endif
