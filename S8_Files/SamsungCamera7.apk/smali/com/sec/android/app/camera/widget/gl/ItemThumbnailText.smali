.class public Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ItemThumbnailText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemThumbnailText"


# instance fields
.field private final THUMBNAIL_TEXT_COLOR:I

.field private mAsyncTextSize:Z

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCommandId:I

.field private mText:Lcom/samsung/android/glview/GLText;

.field private mTextHeight:F

.field private mTextSize:F

.field private mTextWidth:F

.field private mTextXOffset:F

.field private mTextYOffset:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFFFFFFI)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "textLeft"    # F
    .param p7, "textTop"    # F
    .param p8, "textWidth"    # F
    .param p9, "textHeight"    # F
    .param p10, "textSize"    # F
    .param p11, "commandId"    # I

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 36
    const v1, 0x7f0d0011

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    .line 37
    const v1, 0x7f0a014c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 54
    move/from16 v0, p11

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    .line 56
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextXOffset:F

    .line 57
    iput p7, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextYOffset:F

    .line 58
    iput p8, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextWidth:F

    .line 59
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextHeight:F

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mAsyncTextSize:Z

    .line 61
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->refreshView()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I

    .prologue
    const/4 v6, 0x0

    .line 67
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 36
    const v0, 0x7f0d0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    .line 37
    const v0, 0x7f0a014c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 70
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    .line 72
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextXOffset:F

    .line 73
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextYOffset:F

    .line 74
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextWidth:F

    .line 75
    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextHeight:F

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mAsyncTextSize:Z

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->refreshView()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFI)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 36
    const v0, 0x7f0d0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    .line 37
    const v0, 0x7f0a014c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 85
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    .line 87
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextXOffset:F

    .line 88
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextYOffset:F

    .line 89
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextWidth:F

    .line 90
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextHeight:F

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mAsyncTextSize:Z

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->refreshView()V

    .line 94
    return-void
.end method

.method private refreshView()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    if-nez v0, :cond_0

    .line 141
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsTitle(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "title":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 148
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mAsyncTextSize:Z

    if-eqz v0, :cond_3

    .line 149
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextXOffset:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextYOffset:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextHeight:F

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f0b002a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0d001a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 159
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->updateSize()V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mParent:Lcom/samsung/android/glview/GLView;

    instance-of v0, v0, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mParent:Lcom/samsung/android/glview/GLView;

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->updateSize()V

    .line 164
    :cond_1
    return-void

    .line 144
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    .line 145
    .local v9, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v9    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_3
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->getHeight()F

    move-result v5

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mTextSize:F

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->THUMBNAIL_TEXT_COLOR:I

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 104
    return-void
.end method

.method public setAlign(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 110
    :cond_0
    return-void
.end method

.method public setShadowLayer(ZFFFI)V
    .locals 6
    .param p1, "visibility"    # Z
    .param p2, "radius"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F
    .param p5, "color"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/glview/GLText;->setShadowLayer(ZFFFI)V

    .line 114
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 120
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    .line 124
    return-void
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "type"    # Landroid/graphics/Typeface;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setTextShadow(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailText;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 136
    :cond_0
    return-void
.end method
