.class public Lcom/samsung/android/glview/GLImage;
.super Lcom/samsung/android/glview/GLView;
.source "GLImage.java"


# instance fields
.field protected mImage:Lcom/samsung/android/glview/GLTexture;

.field protected mImageId:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 35
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 132
    if-eqz p6, :cond_0

    .line 133
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 138
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 35
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 202
    if-eqz p6, :cond_0

    .line 203
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 208
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "stretch"    # Z
    .param p7, "imageId"    # I

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 35
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 154
    if-eqz p7, :cond_0

    .line 155
    if-eqz p6, :cond_2

    .line 156
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 165
    :cond_1
    iput p7, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    .line 166
    return-void

    .line 158
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p7}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "image"    # [B

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 35
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 181
    if-eqz p6, :cond_0

    .line 182
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 187
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFI)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "z"    # F
    .param p5, "imageId"    # I

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFF)V

    .line 35
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 222
    if-eqz p5, :cond_0

    .line 223
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p5}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 228
    :cond_1
    iput p5, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    .line 229
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFI)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "imageId"    # I

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 242
    if-eqz p4, :cond_0

    .line 243
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 248
    :cond_1
    iput p4, p0, Lcom/samsung/android/glview/GLImage;->mImageId:I

    .line 249
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 92
    if-eqz p4, :cond_0

    .line 93
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 98
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 262
    if-eqz p4, :cond_0

    .line 263
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 268
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF[B)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "image"    # [B

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 111
    if-eqz p4, :cond_0

    .line 112
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 117
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 56
    if-eqz p2, :cond_0

    .line 57
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 62
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 279
    if-eqz p2, :cond_0

    .line 280
    new-instance v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLFileTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 285
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;[B)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "image"    # [B

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 40
    iput v1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 73
    if-eqz p2, :cond_0

    .line 74
    new-instance v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLByteArrayTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF[B)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 296
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 312
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 314
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    .line 322
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 323
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onAlphaUpdated()V

    .line 331
    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLTexture;->draw([FLandroid/graphics/Rect;)V

    .line 489
    :cond_0
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->onLayoutUpdated()V

    .line 342
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->load()Z

    move-result v0

    .line 499
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    .line 347
    return-void
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->reset()V

    .line 353
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 504
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->onVisibilityChanged(I)V

    .line 508
    :cond_0
    return-void
.end method

.method public setFlip(Z)V
    .locals 1
    .param p1, "flip"    # Z

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setFlip(Z)V

    .line 359
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 363
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    .line 368
    :cond_0
    return-void
.end method

.method public declared-synchronized setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 374
    :cond_0
    if-eqz p1, :cond_1

    .line 375
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLImage;->mSizeGiven:Z

    if-eqz v0, :cond_3

    .line 376
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 381
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_2
    monitor-exit p0

    return-void

    .line 378
    :cond_3
    :try_start_1
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImageOffset(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 387
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v1

    .line 388
    .local v1, "imageWidth":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v0

    .line 390
    .local v0, "imageHeight":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    sub-float/2addr v2, v1

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 391
    :cond_0
    const/4 v2, 0x0

    .line 400
    :goto_0
    return v2

    .line 394
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    .line 395
    iput p2, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    invoke-static {v2, v1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v2

    invoke-static {v2, v0}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 398
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iget v3, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetX:F

    iget v4, p0, Lcom/samsung/android/glview/GLImage;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLTexture;->moveLayoutAbsolute(FF)V

    .line 400
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setImageResources(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLTexture;->clear()V

    .line 407
    :cond_0
    if-eqz p1, :cond_1

    .line 408
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    .line 409
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    iput-object p0, v0, Lcom/samsung/android/glview/GLTexture;->mParent:Lcom/samsung/android/glview/GLView;

    .line 411
    :cond_1
    return-void
.end method

.method public setSampleSize(I)V
    .locals 1
    .param p1, "sampleSize"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    instance-of v0, v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    check-cast v0, Lcom/samsung/android/glview/GLByteArrayTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLByteArrayTexture;->setSampleSize(I)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    instance-of v0, v0, Lcom/samsung/android/glview/GLFileTexture;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    check-cast v0, Lcom/samsung/android/glview/GLFileTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLFileTexture;->setSampleSize(I)V

    goto :goto_0
.end method

.method public setShaderParameter(F)V
    .locals 1
    .param p1, "parameter"    # F

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderParameter(F)V

    .line 432
    :cond_0
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 442
    :cond_0
    return-void
.end method

.method public setShaderStep(F)V
    .locals 1
    .param p1, "step"    # F

    .prologue
    .line 450
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setShaderStep(F)V

    .line 453
    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 457
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    .line 462
    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 467
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setTint(I)V

    .line 470
    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    .line 476
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/samsung/android/glview/GLImage;->mImage:Lcom/samsung/android/glview/GLTexture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    .line 479
    :cond_0
    return-void
.end method
