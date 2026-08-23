#ifndef YMIR_VDP_VDP2_NBG_HLSLI
#define YMIR_VDP_VDP2_NBG_HLSLI

#include "vdp2_defs.hlsli"
#include "vdp2_utils.hlsli"

#include "util/bit_ops.hlsli"

uint4 DrawNBG(uint2 pos, uint index, ByteAddressBuffer vram) {
    const uint value = vram.Load(pos.x * 4 + pos.y * 1024 + index * 65536);
    return uint4(
        BitExtract(value, 0, 8),
        BitExtract(value, 8, 8),
        BitExtract(value, 16, 8),
        BitExtract(value, 24, 8)
    );
}

#endif
