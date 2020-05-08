#include "cmt/common.h"
#include "impl/common.h"
#include "cmt/command-enc.h"

MT_EXPORT
void
mtComputeCommandEncoderRelease(MtComputeCommandEncoder *cce) {
    [(id<MTLComputeCommandEncoder>)cce release];
}

MT_EXPORT
MtComputeCommandEncoder*
mtNewComputeCommandEncoder(MtCommandBuffer *cmdb) {
    return [(id<MTLCommandBuffer>)cmdb computeCommandEncoder];
}

MT_EXPORT
MtComputeCommandEncoder*
mtNewComputeCommandEncoderWithDispatchType(MtCommandBuffer *cmdb, MtDispatchType dtype) {
        return [(id<MTLCommandBuffer>)cmdb computeCommandEncoderWithDispatchType:(MTLDispatchType)dtype];

}

MT_EXPORT
MtBlitCommandEncoder*
mtNewBlitCommandEncoder(MtCommandBuffer *cmdb) {
    return [(id<MTLCommandBuffer>)cmdb blitCommandEncoder];
}

MT_EXPORT
void
mtComputeCommandEncoderEndEncoding(MtComputeCommandEncoder *cce) {
    [(id<MTLComputeCommandEncoder>)cce endEncoding];
}

/*MT_EXPORT
MtResourceStateCommandEncoder*
mtNewResourceStateCommandEncoder(MtCommandBuffer *cmdb) {
    return [(id<MTLCommandBuffer>)cmdb resourceStateCommandEncoder];
}*/ //IOS 13

MT_EXPORT
void
mtComputeCommandEncoderSetComputePipelineState(MtComputeCommandEncoder *cce, MtComputePipelineState *state) {
    [(id<MTLComputeCommandEncoder>)cce setComputePipelineState:(id<MTLComputePipelineState>)state]; 
}

MT_EXPORT
void
mtComputeCommandEncoderSetBufferOffsetAtIndex(MtComputeCommandEncoder *cce, MtBuffer *buf, NsUInteger offset, NsUInteger indx) {
    [(id<MTLComputeCommandEncoder>)cce setBuffer:(id<MTLBuffer>)buf
                                       offset:offset
                                       atIndex:indx];
}

MT_EXPORT
void
mtComputeCommandEncoderSetBuffersOffsetsWithRange(MtComputeCommandEncoder **cce, MtBuffer **buf, const NsUInteger *offsets, NsRange range) {
    [(id<MTLComputeCommandEncoder>)cce setBuffers:(id<MTLBuffer>*)buf
                                       offsets: offsets
                                       withRange:mtNSRange(range)];
}

MT_EXPORT
void
mtComputeCommandEncoderBufferSetOffsetAtIndex(MtComputeCommandEncoder *cce, NsUInteger offset, NsUInteger indx) {
    [(id<MTLComputeCommandEncoder>)cce setBufferOffset:offset atIndex:indx];
}

MT_EXPORT
void
mtComputeCommandEncoderSetBytesLengthAtIndex(MtComputeCommandEncoder *cce, const void* ptr, NsUInteger length, NsUInteger indx) {
    [(id<MTLComputeCommandEncoder>)cce setBytes:ptr length:length atIndex:indx];
}

MT_EXPORT
void
mtComputeCommandEncoderSetSamplerStateAtIndex(MtComputeCommandEncoder *cce,  MtSamplerState *sampler, NsUInteger indx) {
    [(id<MTLComputeCommandEncoder>)cce setSamplerState:(id<MTLSamplerState>)sampler atIndex:indx];
}


MT_EXPORT
void
mtComputeCommandEncoderSetSamplerStateLodMinClampLodMaxClampAtIndex(MtComputeCommandEncoder *cce,  MtSamplerState *sampler, float lodMinClamp, float lodMaxClamp, NsUInteger indx) {
    [(id<MTLComputeCommandEncoder>)cce setSamplerState:(id<MTLSamplerState>)sampler 
                                        lodMinClamp:lodMinClamp
                                        lodMaxClamp:lodMaxClamp
                                        atIndex:indx];
}

MT_EXPORT
void
mtComputeCommandEncoderSetSamplerStatesWithRange(MtComputeCommandEncoder *cce,  MtSamplerState **samplers, NsRange range) {
    [(id<MTLComputeCommandEncoder>)cce setSamplerStates:(id<MTLSamplerState>*)samplers 
                                       withRange:mtNSRange(range)];
}

MT_EXPORT
void
mtComputeCommandEncoderSetTextureAtIndex(MtComputeCommandEncoder *cce,  MtTexture *tex, NsUInteger indx) {
    [(id<MTLComputeCommandEncoder>)cce setTexture:(id<MTLTexture>)tex
                                        atIndex:indx];
}

MT_EXPORT
void
mtComputeCommandEncoderSetTexturesWithRange(MtComputeCommandEncoder *cce,  MtTexture **textures, NsRange range) {
    [(id<MTLComputeCommandEncoder>)cce setTextures:(id<MTLTexture>*)textures
                                        withRange:mtNSRange(range)];
}

MT_EXPORT
void
mtComputeCommandEncoderSetThreadgroupMemoryLengthAtIndex(MtComputeCommandEncoder *cce,  NsUInteger length, NsUInteger indx) {
    [(id<MTLComputeCommandEncoder>)cce setThreadgroupMemoryLength: length
                                        atIndex:indx];
}

MT_EXPORT
void
mtComputeCommandEncoderDispatchThreadgroups_threadsPerThreadgroup(MtComputeCommandEncoder *cce, MtSize threadgroupsPerGrid, MtSize threadsPerThreadgroup) {
    [(id<MTLComputeCommandEncoder>)cce dispatchThreadgroups: mtMTLSize(threadgroupsPerGrid)
                                        threadsPerThreadgroup: mtMTLSize(threadsPerThreadgroup)];
}

MT_EXPORT
void
mtComputeCommandEncoderDispatchThread_threadsPerThreadgroup(MtComputeCommandEncoder *cce, MtSize threadsPerGrid, MtSize threadsPerThreadgroup) {
    [(id<MTLComputeCommandEncoder>)cce dispatchThreads: mtMTLSize(threadsPerGrid)
                                        threadsPerThreadgroup:mtMTLSize(threadsPerThreadgroup)];
}

MT_EXPORT
void
mtComputeCommandEncoderDispatchThreadgroupsWithIndirectBuffer_IndirectBufferOffset_threadsPerThreadgroup(MtComputeCommandEncoder *cce, MtBuffer *indirectBuffer, NsUInteger indirectBufferOffset, MtSize threadsPerThreadgroup) {
    [(id<MTLComputeCommandEncoder>)cce dispatchThreadgroupsWithIndirectBuffer: (id<MTLBuffer>)indirectBuffer
                                       indirectBufferOffset: indirectBufferOffset
                                       threadsPerThreadgroup: mtMTLSize(threadsPerThreadgroup)];
}

MT_EXPORT
void
mtComputeCommandEncoderUseResourceUsage(MtComputeCommandEncoder *cce, MtResource *res, MtResourceUsage usage) {
    [(id<MTLComputeCommandEncoder>)cce useResource:(id<MTLResource>)res usage:(MTLResourceUsage)usage];
}

MT_EXPORT
void
mtComputeCommandEncoderUseResourceCountUsage(MtComputeCommandEncoder *cce, MtResource **res, NsUInteger count, MtResourceUsage usage) {
    [(id<MTLComputeCommandEncoder>)cce useResources:(id<MTLResource>*)res 
                                            count: count
                                            usage:(MTLResourceUsage)usage];
}

MT_EXPORT
void
mtComputeCommandEncoderUseHeap(MtComputeCommandEncoder *cce, MtHeap *heap) {
    [(id<MTLComputeCommandEncoder>)cce useHeap: (id<MTLHeap>)heap];
}

MT_EXPORT
void
mtComputeCommandEncoderUseHeaps(MtComputeCommandEncoder *cce, MtHeap **heaps, NsUInteger count) {
    [(id<MTLComputeCommandEncoder>)cce useHeaps:(id<MTLHeap>*)heaps count: count];
}











