.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation


# static fields
.field static final mMaxArrays:I = 0x4


# instance fields
.field mArrays:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 230
    iget-object v0, p0, Landroid/renderscript/Type;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I

    .prologue
    const/4 v5, 0x0

    .line 265
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 266
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Dimension must be >= 1."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_0
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v10

    .line 270
    .local v10, "id":J
    new-instance v0, Landroid/renderscript/Type;

    invoke-direct {v0, v10, v11, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 271
    .local v0, "t":Landroid/renderscript/Type;
    iput-object p1, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 272
    iput p2, v0, Landroid/renderscript/Type;->mDimX:I

    .line 273
    invoke-virtual {v0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 274
    return-object v0
.end method

.method public static createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 289
    if-lt p2, v1, :cond_0

    if-ge p3, v1, :cond_1

    .line 290
    :cond_0
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v2, "Dimension must be >= 1."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_1
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v10

    .line 294
    .local v10, "id":J
    new-instance v0, Landroid/renderscript/Type;

    invoke-direct {v0, v10, v11, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 295
    .local v0, "t":Landroid/renderscript/Type;
    iput-object p1, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 296
    iput p2, v0, Landroid/renderscript/Type;->mDimX:I

    .line 297
    iput p3, v0, Landroid/renderscript/Type;->mDimY:I

    .line 298
    invoke-virtual {v0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 299
    return-object v0
.end method

.method public static createXYZ(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;III)Landroid/renderscript/Type;
    .locals 14
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I
    .param p4, "dimZ"    # I

    .prologue
    .line 315
    const/4 v3, 0x1

    move/from16 v0, p2

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ge v0, v3, :cond_1

    .line 316
    :cond_0
    new-instance v3, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v4, "Dimension must be >= 1."

    invoke-direct {v3, v4}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, p4

    if-lt v0, v3, :cond_0

    .line 319
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v11}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v12

    .line 320
    .local v12, "id":J
    new-instance v2, Landroid/renderscript/Type;

    invoke-direct {v2, v12, v13, p0}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 321
    .local v2, "t":Landroid/renderscript/Type;
    iput-object p1, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 322
    move/from16 v0, p2

    iput v0, v2, Landroid/renderscript/Type;->mDimX:I

    .line 323
    move/from16 v0, p3

    iput v0, v2, Landroid/renderscript/Type;->mDimY:I

    .line 324
    move/from16 v0, p4

    iput v0, v2, Landroid/renderscript/Type;->mDimZ:I

    .line 325
    invoke-virtual {v2}, Landroid/renderscript/Type;->calcElementCount()V

    .line 326
    return-object v2
.end method


# virtual methods
.method calcElementCount()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 184
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v3

    .line 185
    .local v3, "hasLod":Z
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v4

    .line 186
    .local v4, "x":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v5

    .line 187
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v6

    .line 188
    .local v6, "z":I
    const/4 v2, 0x1

    .line 189
    .local v2, "faces":I
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 190
    const/4 v2, 0x6

    .line 192
    :cond_0
    if-nez v4, :cond_1

    .line 193
    const/4 v4, 0x1

    .line 195
    :cond_1
    if-nez v5, :cond_2

    .line 196
    const/4 v5, 0x1

    .line 198
    :cond_2
    if-nez v6, :cond_3

    .line 199
    const/4 v6, 0x1

    .line 202
    :cond_3
    mul-int v7, v4, v5

    mul-int/2addr v7, v6

    mul-int v0, v7, v2

    .line 204
    .local v0, "count":I
    :goto_0
    if-eqz v3, :cond_9

    if-gt v4, v8, :cond_4

    if-le v5, v8, :cond_8

    .line 205
    :cond_4
    if-le v4, v8, :cond_5

    .line 206
    shr-int/lit8 v4, v4, 0x1

    .line 208
    :cond_5
    if-le v5, v8, :cond_6

    .line 209
    shr-int/lit8 v5, v5, 0x1

    .line 211
    :cond_6
    if-le v6, v8, :cond_7

    .line 212
    shr-int/lit8 v6, v6, 0x1

    .line 215
    :cond_7
    mul-int v7, v4, v5

    mul-int/2addr v7, v6

    mul-int/2addr v7, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 204
    :cond_8
    if-gt v6, v8, :cond_4

    .line 218
    :cond_9
    iget-object v7, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v7, :cond_a

    .line 219
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_1
    iget-object v7, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v7, v7

    if-ge v1, v7, :cond_a

    .line 220
    iget-object v7, p0, Landroid/renderscript/Type;->mArrays:[I

    aget v7, v7, v1

    mul-int/2addr v0, v7

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v1    # "ct":I
    :cond_a
    iput v0, p0, Landroid/renderscript/Type;->mElementCount:I

    .line 183
    return-void
.end method

.method public getArray(I)I
    .locals 2
    .param p1, "arrayNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 160
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    .line 161
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Array dimension out of range."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v0, v0

    if-lt p1, v0, :cond_3

    .line 166
    :cond_2
    return v1

    .line 169
    :cond_3
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    aget v0, v0, p1

    return v0
.end method

.method public getArrayCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v0, v0

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Landroid/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method

.method updateFromNative()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 237
    const/4 v1, 0x6

    new-array v0, v1, [J

    .line 238
    .local v0, "dataBuffer":[J
    iget-object v1, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v6}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(J[J)V

    .line 240
    aget-wide v6, v0, v5

    long-to-int v1, v6

    iput v1, p0, Landroid/renderscript/Type;->mDimX:I

    .line 241
    aget-wide v6, v0, v4

    long-to-int v1, v6

    iput v1, p0, Landroid/renderscript/Type;->mDimY:I

    .line 242
    const/4 v1, 0x2

    aget-wide v6, v0, v1

    long-to-int v1, v6

    iput v1, p0, Landroid/renderscript/Type;->mDimZ:I

    .line 243
    const/4 v1, 0x3

    aget-wide v6, v0, v1

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 244
    const/4 v1, 0x4

    aget-wide v6, v0, v1

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v4, p0, Landroid/renderscript/Type;->mDimFaces:Z

    .line 246
    const/4 v1, 0x5

    aget-wide v2, v0, v1

    .line 247
    .local v2, "elementID":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 248
    new-instance v1, Landroid/renderscript/Element;

    iget-object v4, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v2, v3, v4}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 249
    iget-object v1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1}, Landroid/renderscript/Element;->updateFromNative()V

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 234
    return-void

    .end local v2    # "elementID":J
    :cond_1
    move v1, v5

    .line 243
    goto :goto_0

    :cond_2
    move v4, v5

    .line 244
    goto :goto_1
.end method
