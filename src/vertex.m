/*
 * Copyright (c), Recep Aslantas.
 * MIT License (MIT), http://opensource.org/licenses/MIT
 */

#import "common.h"

MT_EXPORT
MtVertexDescriptor*
mtVertexDescNew() {
  MTLVertexDescriptor *mvertDesc;
  mvertDesc = [MTLVertexDescriptor vertexDescriptor];
  return mvertDesc;
}

MT_EXPORT
void
mtVertexAttrib(MtVertexDescriptor * __restrict vertex,
               uint32_t                        attribIndex,
               MtVertexFormat                  format,
               uint32_t                        offset,
               uint32_t                        bufferIndex) {
  MTLVertexDescriptor          *mvert;
  MTLVertexAttributeDescriptor *mattrib;

  mvert               = vertex;
  mattrib             = mvert.attributes[attribIndex];
  
  mattrib.format      = (MTLVertexFormat)format;
  mattrib.offset      = offset;
  mattrib.bufferIndex = bufferIndex;
}

MT_EXPORT
void
mtVertexLayout(MtVertexDescriptor * __restrict vertex,
               uint32_t                        layoutIndex,
               uint32_t                        stride,
               uint32_t                        stepRate,
               MtVertexStepFunction            stepFunction) {
  MTLVertexDescriptor             *mvert;
  MTLVertexBufferLayoutDescriptor *mlay;

  mvert             = vertex;
  mlay              = mvert.layouts[layoutIndex];
  
  mlay.stride       = stride;
  mlay.stepRate     = stepRate;
  mlay.stepFunction = (MTLVertexStepFunction)stepFunction;
}