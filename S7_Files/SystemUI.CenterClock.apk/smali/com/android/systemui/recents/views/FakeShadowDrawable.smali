.class Lcom/android/systemui/recents/views/FakeShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FakeShadowDrawable.java"


# static fields
.field static final COS_45:D


# instance fields
.field private mAddPaddingForCorners:Z

.field final mCardBounds:Landroid/graphics/RectF;

.field mCornerRadius:F

.field mCornerShadowPaint:Landroid/graphics/Paint;

.field mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field mEdgeShadowPaint:Landroid/graphics/Paint;

.field final mInsetShadow:F

.field mMaxShadowSize:F

.field private mPrintedShadowClipWarning:Z

.field mRawMaxShadowSize:F

.field mRawShadowSize:F

.field private final mShadowEndColor:I

.field mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    const v1, 0x7f0d02c5

    const/4 v2, 0x1

    .line 84
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 71
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    .line 85
    const v0, 0x7f0b00da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    .line 86
    const v0, 0x7f0b00db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    .line 87
    const v0, 0x7f0d02c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    .line 88
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 89
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->setShadowSize(FF)V

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 94
    const v0, 0x7f0d0315

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    .line 95
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 84
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 270
    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v0, v1, v2

    .line 271
    .local v0, "verticalOffset":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 272
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 271
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->buildShadowCorners()V

    .line 266
    return-void
.end method

.method private buildShadowCorners()V
    .locals 12

    .prologue
    .line 233
    new-instance v8, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 234
    .local v8, "innerBounds":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 235
    .local v9, "outerBounds":Landroid/graphics/RectF;
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 251
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v1, v2

    div-float v10, v0, v1

    .line 252
    .local v10, "startRatio":F
    iget-object v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v3, v4

    .line 253
    const/4 v4, 0x3

    new-array v4, v4, [I

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const/4 v6, 0x0

    aput v5, v4, v6

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const/4 v6, 0x1

    aput v5, v4, v6

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    const/4 v6, 0x2

    aput v5, v4, v6

    .line 254
    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v11, 0x0

    aput v6, v5, v11

    const/4 v6, 0x1

    aput v10, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    aput v6, v5, v11

    .line 255
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 252
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 260
    iget-object v11, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    .line 261
    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    sub-float/2addr v4, v5

    .line 262
    const/4 v5, 0x3

    new-array v5, v5, [I

    iget v6, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const/4 v7, 0x0

    aput v6, v5, v7

    iget v6, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const/4 v7, 0x1

    aput v6, v5, v7

    iget v6, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    const/4 v7, 0x2

    aput v6, v5, v7

    .line 263
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 260
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 232
    return-void

    .line 240
    .end local v10    # "startRatio":F
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 263
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    .line 155
    if-eqz p2, :cond_0

    .line 156
    float-to-double v0, p0

    sget-wide v2, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 158
    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 146
    if-eqz p2, :cond_0

    .line 147
    mul-float/2addr v0, p0

    float-to-double v0, v0

    sget-wide v2, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 149
    :cond_0
    mul-float/2addr v0, p0

    return v0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 185
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    sub-float v2, v0, v3

    .line 186
    .local v2, "edgeShadowTop":F
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    div-float/2addr v3, v10

    add-float v8, v0, v3

    .line 187
    .local v8, "inset":F
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    const/4 v6, 0x1

    .line 188
    .local v6, "drawHorizontalEdges":Z
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    const/4 v7, 0x1

    .line 190
    .local v7, "drawVerticalEdges":Z
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 191
    .local v9, "saved":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 193
    if-eqz v6, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v0

    .line 196
    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 194
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    :cond_0
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 201
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 202
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 204
    if-eqz v6, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v4, v0

    .line 207
    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 205
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 209
    :cond_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 212
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 213
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 215
    if-eqz v7, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 216
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 219
    :cond_2
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 222
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 223
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 225
    if-eqz v7, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 226
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    :cond_3
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 184
    return-void

    .line 187
    .end local v6    # "drawHorizontalEdges":Z
    .end local v7    # "drawVerticalEdges":Z
    .end local v9    # "saved":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "drawHorizontalEdges":Z
    goto/16 :goto_0

    .line 188
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "drawVerticalEdges":Z
    goto/16 :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/4 v1, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->buildComponents(Landroid/graphics/Rect;)V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 179
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 180
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    .line 181
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, -0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 136
    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    .line 137
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    .line 136
    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->calculateVerticalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 138
    .local v1, "vOffset":I
    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    .line 139
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    .line 138
    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 140
    .local v0, "hOffset":I
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 141
    const/4 v2, 0x1

    return v2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 106
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 163
    return-void
.end method

.method setShadowSize(FF)V
    .locals 3
    .param p1, "shadowSize"    # F
    .param p2, "maxShadowSize"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    .line 116
    move p1, p2

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    if-nez v0, :cond_2

    .line 118
    const-string/jumbo v0, "CardView"

    const-string/jumbo v1, "Shadow size is being clipped by the max shadow size. See {CardView#setMaxCardElevation}."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    .line 123
    :cond_2
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_3

    .line 124
    return-void

    .line 126
    :cond_3
    iput p1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    .line 127
    iput p2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    .line 128
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    .line 129
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    .line 130
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->invalidateSelf()V

    .line 111
    return-void
.end method
