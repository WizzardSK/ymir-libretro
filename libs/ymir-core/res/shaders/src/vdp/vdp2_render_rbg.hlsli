#ifndef YMIR_VDP_VDP2_RBG_HLSLI
#define YMIR_VDP_VDP2_RBG_HLSLI

#include "vdp2_layer_render_params.hlsli"
#include "vdp2_defs.hlsli"
#include "vdp2_utils.hlsli"

#include "util/bit_ops.hlsli"

uint4 DrawRBG(uint2 pos, uint index) {
    return uint4(pos.x, pos.y, index, 1);
}

#endif
