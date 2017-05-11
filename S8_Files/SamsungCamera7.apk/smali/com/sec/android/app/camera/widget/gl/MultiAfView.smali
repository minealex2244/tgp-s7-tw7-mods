.class public Lcom/sec/android/app/camera/widget/gl/MultiAfView;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "MultiAfView.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MultiAfView"


# instance fields
.field private final FRAME_IMAGE_WIDTH:F

.field private final NUM_OF_COLS_NORMAL_RATIO:I

.field private final NUM_OF_COLS_SQUARE_RATIO:I

.field private final NUM_OF_COLS_SUPER_WIDE_RATIO:I

.field private final NUM_OF_COLS_WIDE_RATIO:I

.field private final NUM_OF_ROWS_NORMAL_RATIO:I

.field private final NUM_OF_ROWS_SQUARE_RATIO:I

.field private final NUM_OF_ROWS_SUPER_WIDE_RATIO:I

.field private final NUM_OF_ROWS_WIDE_RATIO:I

.field private final NUM_OF_VISIBLE_COLS:I

.field private final NUM_OF_VISIBLE_ROWS:I

.field private final SENSOR_FRAME_HEIGHT:I

.field private final SENSOR_FRAME_LEFT_OFFSET:I

.field private final SENSOR_FRAME_TOP_OFFSET:I

.field private final SENSOR_FRAME_WIDTH:I

.field private mFocusFrame:[Lcom/samsung/android/glview/GLImage;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;IILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 57
    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 36
    const v0, 0x7f0b003f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    .line 37
    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    .line 38
    const v0, 0x7f0b0040

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_SQUARE_RATIO:I

    .line 39
    const v0, 0x7f0b003b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_SQUARE_RATIO:I

    .line 40
    const v0, 0x7f0b0042

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_WIDE_RATIO:I

    .line 41
    const v0, 0x7f0b003d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_WIDE_RATIO:I

    .line 42
    const v0, 0x7f0b0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_SUPER_WIDE_RATIO:I

    .line 43
    const v0, 0x7f0b003c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_SUPER_WIDE_RATIO:I

    .line 44
    const v0, 0x7f0b0043

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_VISIBLE_COLS:I

    .line 45
    const v0, 0x7f0b0044

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_VISIBLE_ROWS:I

    .line 47
    const v0, 0x7f0b0038

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_WIDTH:I

    .line 48
    const v0, 0x7f0b0035

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    .line 49
    const v0, 0x7f0b0036

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_LEFT_OFFSET:I

    .line 50
    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_TOP_OFFSET:I

    .line 52
    const v0, 0x7f0a0355

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->FRAME_IMAGE_WIDTH:F

    .line 54
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v0, v1

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    .line 59
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v0, v1

    if-ge v6, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f02015c

    invoke-direct {v1, p1, v2, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v6

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->updateMultiAfLayout(Landroid/graphics/Rect;)V

    .line 65
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 69
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 74
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideMultiAfLayout()V
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->updateLayout(Z)V

    .line 82
    return-void
.end method

.method public onMultiAfChanged([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 85
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_VISIBLE_COLS:I

    sub-int v2, v6, v8

    .line 86
    .local v2, "invalidColumns":I
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_VISIBLE_ROWS:I

    sub-int v3, v6, v8

    .line 88
    .local v3, "invalidRows":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    if-ge v0, v6, :cond_4

    .line 89
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    if-ge v4, v6, :cond_3

    .line 90
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, p1, v6

    .line 91
    .local v5, "result":I
    div-int/lit8 v6, v3, 0x2

    if-lt v0, v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    div-int/lit8 v8, v3, 0x2

    sub-int v8, v3, v8

    sub-int/2addr v6, v8

    if-ge v0, v6, :cond_0

    div-int/lit8 v6, v2, 0x2

    if-lt v4, v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    div-int/lit8 v8, v2, 0x2

    sub-int v8, v2, v8

    sub-int/2addr v6, v8

    if-lt v4, v6, :cond_1

    .line 93
    :cond_0
    const/4 v5, 0x0

    .line 95
    :cond_1
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v6, v0

    add-int v1, v6, v4

    .line 96
    .local v1, "index":I
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v8, v6, v1

    if-ne v5, v9, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v8, v6, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    :cond_2
    const/4 v6, 0x4

    goto :goto_2

    .line 88
    .end local v1    # "index":I
    .end local v5    # "result":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v4    # "j":I
    :cond_4
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->updateLayout(Z)V

    .line 100
    return-void
.end method

.method public updateMultiAfLayout(Landroid/graphics/Rect;)V
    .locals 20
    .param p1, "previewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 103
    const-string v15, "MultiAfView"

    const-string v16, "updateMultiAFLayout"

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v11, 0x0

    .line 106
    .local v11, "leftMargin":F
    const/4 v14, 0x0

    .line 107
    .local v14, "topMargin":F
    const/4 v7, 0x0

    .line 108
    .local v7, "frameWidth":F
    const/4 v6, 0x0

    .line 109
    .local v6, "frameHeight":F
    const/4 v5, 0x0

    .line 110
    .local v5, "columns":I
    const/4 v12, 0x0

    .line 112
    .local v12, "rows":I
    if-eqz p1, :cond_1

    .line 113
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v15

    .line 114
    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    int-to-float v14, v15

    .line 115
    const/4 v15, 0x0

    cmpg-float v15, v11, v15

    if-gez v15, :cond_0

    .line 116
    const/4 v11, 0x0

    .line 119
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v2

    .line 120
    .local v2, "aspectRatio":D
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v4

    .line 123
    .local v4, "aspectRatioType":I
    if-nez v4, :cond_2

    .line 124
    sget-object v15, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 125
    .local v13, "scale":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_WIDTH:I

    int-to-float v15, v15

    div-float v7, v15, v13

    .line 126
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    int-to-float v15, v15

    div-float v6, v15, v13

    .line 127
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_LEFT_OFFSET:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v11, v15

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_WIDE_RATIO:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v6

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    .line 129
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_WIDE_RATIO:I

    .line 130
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_WIDE_RATIO:I

    .line 158
    .end local v2    # "aspectRatio":D
    .end local v4    # "aspectRatioType":I
    .end local v13    # "scale":F
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    sub-int/2addr v15, v5

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    mul-float/2addr v15, v7

    sub-float/2addr v11, v15

    .line 159
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    sub-int/2addr v15, v12

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    mul-float/2addr v15, v6

    sub-float/2addr v14, v15

    .line 161
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    if-ge v8, v15, :cond_6

    .line 162
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    if-ge v10, v15, :cond_5

    .line 163
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    mul-int/2addr v15, v8

    add-int v9, v15, v10

    .line 164
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v15, v15, v9

    int-to-float v0, v10

    move/from16 v16, v0

    mul-float v16, v16, v7

    add-float v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->FRAME_IMAGE_WIDTH:F

    move/from16 v17, v0

    sub-float v17, v7, v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v6

    add-float v17, v17, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->FRAME_IMAGE_WIDTH:F

    move/from16 v18, v0

    sub-float v18, v6, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->mFocusFrame:[Lcom/samsung/android/glview/GLImage;

    aget-object v15, v15, v9

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 162
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 131
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v10    # "j":I
    .restart local v2    # "aspectRatio":D
    .restart local v4    # "aspectRatioType":I
    :cond_2
    const/4 v15, 0x2

    if-ne v4, v15, :cond_3

    .line 132
    sget-object v15, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 133
    .restart local v13    # "scale":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_WIDTH:I

    int-to-float v15, v15

    div-float v7, v15, v13

    .line 134
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    int-to-float v15, v15

    div-float v6, v15, v13

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_SQUARE_RATIO:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v7

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v11, v15

    .line 136
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_TOP_OFFSET:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v14, v15

    .line 137
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_SQUARE_RATIO:I

    .line 138
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_SQUARE_RATIO:I

    goto/16 :goto_0

    .line 139
    .end local v13    # "scale":F
    :cond_3
    const/4 v15, 0x4

    if-ne v4, v15, :cond_4

    .line 140
    sget-object v15, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_18DOT5BY9:Ljava/lang/String;

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 141
    .restart local v13    # "scale":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_WIDTH:I

    int-to-float v15, v15

    div-float v7, v15, v13

    .line 142
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    int-to-float v15, v15

    div-float v6, v15, v13

    .line 143
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_LEFT_OFFSET:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v11, v15

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_SUPER_WIDE_RATIO:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v6

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v14, v15

    .line 145
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_SUPER_WIDE_RATIO:I

    .line 146
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_SUPER_WIDE_RATIO:I

    goto/16 :goto_0

    .line 148
    .end local v13    # "scale":F
    :cond_4
    sget-object v15, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 149
    .restart local v13    # "scale":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_WIDTH:I

    int-to-float v15, v15

    div-float v7, v15, v13

    .line 150
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_HEIGHT:I

    int-to-float v15, v15

    div-float v6, v15, v13

    .line 151
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_LEFT_OFFSET:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v11, v15

    .line 152
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->SENSOR_FRAME_TOP_OFFSET:I

    int-to-float v15, v15

    div-float/2addr v15, v13

    add-float/2addr v14, v15

    .line 153
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_COLS_NORMAL_RATIO:I

    .line 154
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->NUM_OF_ROWS_NORMAL_RATIO:I

    goto/16 :goto_0

    .line 161
    .end local v2    # "aspectRatio":D
    .end local v4    # "aspectRatioType":I
    .end local v13    # "scale":F
    .restart local v8    # "i":I
    .restart local v10    # "j":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 169
    .end local v10    # "j":I
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->updateLayout(Z)V

    .line 170
    return-void
.end method
