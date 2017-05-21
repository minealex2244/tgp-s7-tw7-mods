.class public Lcom/sec/android/app/camera/util/CameraParameters;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# static fields
.field private static final AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final AUTO_WHITE_BALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final BURST_CAPTURE_FPS_VALUE:Ljava/lang/String; = "burstshot-fps-values"

.field private static final EFFECT_PREVIEW_FPS_VALUE:Ljava/lang/String; = "effect-available-fps-values"

.field private static mFocusDistanceArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x5d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/util/CameraParameters;->mFocusDistanceArray:[I

    return-void

    :array_0
    .array-data 4
        0x3c
        0x3f
        0x43
        0x46
        0x49
        0x4d
        0x50
        0x53
        0x57
        0x5a
        0x5d
        0x61
        0x64
        0x67
        0x6b
        0x6e
        0x71
        0x75
        0x78
        0x7b
        0x7f
        0x82
        0x85
        0x89
        0x8c
        0x8f
        0x93
        0x96
        0x99
        0x9d
        0xa0
        0xa3
        0xa7
        0xaa
        0xad
        0xb1
        0xb4
        0xb7
        0xbb
        0xbe
        0xc3
        0xc8
        0xcd
        0xd2
        0xd7
        0xdc
        0xe1
        0xe6
        0xeb
        0xf0
        0xf5
        0xfa
        0x104
        0x10e
        0x118
        0x122
        0x12c
        0x136
        0x140
        0x14a
        0x154
        0x15e
        0x168
        0x172
        0x17c
        0x186
        0x190
        0x19a
        0x1a9
        0x1b8
        0x1c7
        0x1d6
        0x1e5
        0x1f4
        0x208
        0x21c
        0x230
        0x244
        0x262
        0x280
        0x29e
        0x2c6
        0x30c
        0x348
        0x384
        0x3d4
        0x4b0
        0x640
        0x834
        0x9c4
        0xaf0
        0x1388
        0x2710
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getAntiShakeCropRatioString(I)Ljava/lang/String;
    .locals 2
    .param p0, "resolutionId"    # I

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vdis-crop-ratio_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBurstCaptureFPSRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I
    .locals 7
    .param p0, "params"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 659
    const/4 v3, 0x2

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 660
    .local v0, "fpsRange":[I
    const-string v3, "burstshot-fps-values"

    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    .line 663
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "range":[Ljava/lang/String;
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v5

    .line 665
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v6

    .line 667
    .end local v1    # "range":[Ljava/lang/String;
    :cond_0
    return-object v0

    .line 659
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getCameraHDRString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 68
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 64
    :pswitch_1
    const-string v0, "off"

    goto :goto_0

    .line 66
    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getConstantGrowthRateZoomSupported(Lcom/samsung/android/camera/core/SemCamera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 649
    const-string v0, "true"

    const-string v1, "constant-growth-rate-zoom-supported"

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getDualEffectString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 99
    const-string v0, "none"

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    .line 83
    :pswitch_1
    const-string v0, "cubism"

    goto :goto_0

    .line 85
    :pswitch_2
    const-string v0, "postcard"

    goto :goto_0

    .line 87
    :pswitch_3
    const-string v0, "blur"

    goto :goto_0

    .line 89
    :pswitch_4
    const-string v0, "heart"

    goto :goto_0

    .line 91
    :pswitch_5
    const-string v0, "split-view"

    goto :goto_0

    .line 93
    :pswitch_6
    const-string v0, "polaroid"

    goto :goto_0

    .line 95
    :pswitch_7
    const-string v0, "circle-lens"

    goto :goto_0

    .line 97
    :pswitch_8
    const-string v0, "flip"

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getEffectFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I
    .locals 7
    .param p0, "params"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    const-string v3, "effect-available-fps-values"

    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 111
    .local v0, "fpsRange":[I
    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "range":[Ljava/lang/String;
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v5

    .line 115
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v6

    .line 118
    .end local v1    # "range":[Ljava/lang/String;
    :cond_0
    return-object v0

    .line 109
    nop

    :array_0
    .array-data 4
        0x2710
        0x5dc0
    .end array-data
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 128
    sparse-switch p0, :sswitch_data_0

    .line 154
    const-string v0, "none"

    :goto_0
    return-object v0

    .line 130
    :sswitch_0
    const-string v0, "none"

    goto :goto_0

    .line 132
    :sswitch_1
    const-string v0, "negative"

    goto :goto_0

    .line 134
    :sswitch_2
    const-string v0, "mono"

    goto :goto_0

    .line 136
    :sswitch_3
    const-string v0, "sepia"

    goto :goto_0

    .line 138
    :sswitch_4
    const-string v0, "solarize"

    goto :goto_0

    .line 140
    :sswitch_5
    const-string v0, "vintage-cold"

    goto :goto_0

    .line 142
    :sswitch_6
    const-string v0, "vintage-warm"

    goto :goto_0

    .line 144
    :sswitch_7
    const-string v0, "point-blue"

    goto :goto_0

    .line 146
    :sswitch_8
    const-string v0, "point-red-yellow"

    goto :goto_0

    .line 148
    :sswitch_9
    const-string v0, "point-green"

    goto :goto_0

    .line 150
    :sswitch_a
    const-string v0, "washed"

    goto :goto_0

    .line 152
    :sswitch_b
    const-string v0, "posterize"

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x18 -> :sswitch_4
        0x19 -> :sswitch_6
        0x1a -> :sswitch_5
        0x1b -> :sswitch_b
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
        0x1e -> :sswitch_9
        0x1f -> :sswitch_a
    .end sparse-switch
.end method

.method public static getExposureMeterString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 165
    packed-switch p0, :pswitch_data_0

    .line 173
    const-string v0, "center"

    :goto_0
    return-object v0

    .line 167
    :pswitch_0
    const-string v0, "center"

    goto :goto_0

    .line 169
    :pswitch_1
    const-string v0, "spot"

    goto :goto_0

    .line 171
    :pswitch_2
    const-string v0, "matrix"

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getFlashModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 184
    packed-switch p0, :pswitch_data_0

    .line 194
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 186
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 188
    :pswitch_1
    const-string v0, "on"

    goto :goto_0

    .line 190
    :pswitch_2
    const-string v0, "off"

    goto :goto_0

    .line 192
    :pswitch_3
    const-string v0, "torch"

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getFocusModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 205
    packed-switch p0, :pswitch_data_0

    .line 235
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 207
    :pswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_INFINITY_FOCUS:Z

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "infinity"

    goto :goto_0

    .line 210
    :cond_0
    const-string v0, "fixed"

    goto :goto_0

    .line 213
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 215
    :pswitch_2
    const-string v0, "manual"

    goto :goto_0

    .line 217
    :pswitch_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FACE_PRIORITY_AF:Z

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "face-priority"

    goto :goto_0

    .line 219
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_CONTINUOUS_AF:Z

    if-eqz v0, :cond_2

    .line 220
    const-string v0, "continuous-picture"

    goto :goto_0

    .line 222
    :cond_2
    const-string v0, "auto"

    goto :goto_0

    .line 225
    :pswitch_4
    const-string v0, "continuous-video"

    goto :goto_0

    .line 227
    :pswitch_5
    const-string v0, "continuous-picture"

    goto :goto_0

    .line 229
    :pswitch_6
    const-string v0, "object-tracking-picture"

    goto :goto_0

    .line 231
    :pswitch_7
    const-string v0, "object-tracking-video"

    goto :goto_0

    .line 233
    :pswitch_8
    const-string v0, "macro"

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getFrontFlashModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 246
    packed-switch p0, :pswitch_data_0

    .line 256
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 248
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 250
    :pswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-eqz v0, :cond_0

    const-string v0, "torch"

    goto :goto_0

    :cond_0
    const-string v0, "on"

    goto :goto_0

    .line 252
    :pswitch_2
    const-string v0, "off"

    goto :goto_0

    .line 254
    :pswitch_3
    const-string v0, "torch"

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 267
    packed-switch p0, :pswitch_data_0

    .line 297
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 269
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 271
    :pswitch_1
    const-string v0, "50"

    goto :goto_0

    .line 273
    :pswitch_2
    const-string v0, "64"

    goto :goto_0

    .line 275
    :pswitch_3
    const-string v0, "80"

    goto :goto_0

    .line 277
    :pswitch_4
    const-string v0, "100"

    goto :goto_0

    .line 279
    :pswitch_5
    const-string v0, "125"

    goto :goto_0

    .line 281
    :pswitch_6
    const-string v0, "160"

    goto :goto_0

    .line 283
    :pswitch_7
    const-string v0, "200"

    goto :goto_0

    .line 285
    :pswitch_8
    const-string v0, "250"

    goto :goto_0

    .line 287
    :pswitch_9
    const-string v0, "320"

    goto :goto_0

    .line 289
    :pswitch_a
    const-string v0, "400"

    goto :goto_0

    .line 291
    :pswitch_b
    const-string v0, "500"

    goto :goto_0

    .line 293
    :pswitch_c
    const-string v0, "640"

    goto :goto_0

    .line 295
    :pswitch_d
    const-string v0, "800"

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getKelvinValueString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 308
    mul-int/lit8 v0, p0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManualFocusValue(I)I
    .locals 2
    .param p0, "step"    # I

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "value":I
    if-ltz p0, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/util/CameraParameters;->mFocusDistanceArray:[I

    array-length v1, v1

    if-gt p0, v1, :cond_0

    .line 320
    sget-object v1, Lcom/sec/android/app/camera/util/CameraParameters;->mFocusDistanceArray:[I

    aget v0, v1, p0

    .line 322
    :cond_0
    return v0
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 332
    sparse-switch p0, :sswitch_data_0

    .line 399
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 334
    :sswitch_0
    const-string v0, "scene-mode"

    goto :goto_0

    .line 337
    :sswitch_1
    const-string v0, "flash-mode"

    goto :goto_0

    .line 339
    :sswitch_2
    const-string v0, "picture-size"

    goto :goto_0

    .line 342
    :sswitch_3
    const-string v0, "focus-mode"

    goto :goto_0

    .line 344
    :sswitch_4
    const-string v0, "exposure-compensation"

    goto :goto_0

    .line 346
    :sswitch_5
    const-string v0, "effect"

    goto :goto_0

    .line 348
    :sswitch_6
    const-string v0, "wb-k"

    goto :goto_0

    .line 350
    :sswitch_7
    const-string v0, "whitebalance"

    goto :goto_0

    .line 352
    :sswitch_8
    const-string v0, "iso"

    goto :goto_0

    .line 354
    :sswitch_9
    const-string v0, "exposure-time"

    goto :goto_0

    .line 356
    :sswitch_a
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 358
    :sswitch_b
    const-string v0, "zoom"

    goto :goto_0

    .line 360
    :sswitch_c
    const-string v0, "metering"

    goto :goto_0

    .line 362
    :sswitch_d
    const-string v0, "rt-hdr"

    goto :goto_0

    .line 364
    :sswitch_e
    const-string v0, "video-size"

    goto :goto_0

    .line 366
    :sswitch_f
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 368
    :sswitch_10
    const-string v0, "video-stabilization"

    goto :goto_0

    .line 370
    :sswitch_11
    const-string v0, "fast-fps-mode"

    goto :goto_0

    .line 372
    :sswitch_12
    const-string v0, "motion-speed"

    goto :goto_0

    .line 374
    :sswitch_13
    const-string v0, "camera_id"

    goto :goto_0

    .line 376
    :sswitch_14
    const-string v0, "shot-mode"

    goto :goto_0

    .line 378
    :sswitch_15
    const-string v0, "focus-distance"

    goto :goto_0

    .line 380
    :sswitch_16
    const-string v0, "picture-format"

    goto :goto_0

    .line 382
    :sswitch_17
    const-string v0, "intensity"

    goto :goto_0

    .line 384
    :sswitch_18
    const-string v0, "vignette"

    goto :goto_0

    .line 386
    :sswitch_19
    const-string v0, "wb-level"

    goto :goto_0

    .line 388
    :sswitch_1a
    const-string v0, "multi-af"

    goto :goto_0

    .line 332
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0x10 -> :sswitch_a
        0x12 -> :sswitch_b
        0x18 -> :sswitch_15
        0x1f -> :sswitch_9
        0x23 -> :sswitch_6
        0x24 -> :sswitch_13
        0x76 -> :sswitch_19
        0x91 -> :sswitch_1a
        0x97 -> :sswitch_17
        0x98 -> :sswitch_18
        0xaa -> :sswitch_1
        0x13b -> :sswitch_16
        0xbb9 -> :sswitch_e
        0xbba -> :sswitch_3
        0xbbb -> :sswitch_f
        0xbbf -> :sswitch_10
        0x170d -> :sswitch_12
        0x170e -> :sswitch_11
    .end sparse-switch
.end method

.method public static getMultiAFModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 410
    packed-switch p0, :pswitch_data_0

    .line 414
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 412
    :pswitch_0
    const-string v0, "on"

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPictureFormatString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 425
    packed-switch p0, :pswitch_data_0

    .line 431
    const-string v0, "jpeg"

    :goto_0
    return-object v0

    .line 427
    :pswitch_0
    const-string v0, "jpeg"

    goto :goto_0

    .line 429
    :pswitch_1
    const-string v0, "raw+jpeg"

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getQualityValue(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    const/16 v0, 0x60

    .line 442
    packed-switch p0, :pswitch_data_0

    .line 452
    :goto_0
    :pswitch_0
    return v0

    .line 446
    :pswitch_1
    const/16 v0, 0x5c

    goto :goto_0

    .line 448
    :pswitch_2
    const/16 v0, 0x28

    goto :goto_0

    .line 450
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRecordingMotionFPS(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 463
    packed-switch p0, :pswitch_data_0

    .line 473
    :pswitch_0
    const-string v0, "-1"

    :goto_0
    return-object v0

    .line 465
    :pswitch_1
    const-string v0, "1"

    goto :goto_0

    .line 467
    :pswitch_2
    const-string v0, "2"

    goto :goto_0

    .line 469
    :pswitch_3
    const-string v0, "3"

    goto :goto_0

    .line 471
    :pswitch_4
    const-string v0, "-1"

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRecordingMotionSpeed(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 484
    packed-switch p0, :pswitch_data_0

    .line 496
    const-string v0, "-1"

    :goto_0
    return-object v0

    .line 486
    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    .line 488
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 490
    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    .line 492
    :pswitch_3
    const-string v0, "4"

    goto :goto_0

    .line 494
    :pswitch_4
    const-string v0, "-1"

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSceneModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 507
    packed-switch p0, :pswitch_data_0

    .line 517
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 509
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 511
    :pswitch_1
    const-string v0, "sports"

    goto :goto_0

    .line 513
    :pswitch_2
    const-string v0, "night"

    goto :goto_0

    .line 515
    :pswitch_3
    const-string v0, "aqua_scn"

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getShutterSpeedString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 522
    packed-switch p0, :pswitch_data_0

    .line 594
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 524
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 526
    :pswitch_1
    const-string v0, "42"

    goto :goto_0

    .line 528
    :pswitch_2
    const-string v0, "63"

    goto :goto_0

    .line 530
    :pswitch_3
    const-string v0, "83"

    goto :goto_0

    .line 532
    :pswitch_4
    const-string v0, "125"

    goto :goto_0

    .line 534
    :pswitch_5
    const-string v0, "167"

    goto :goto_0

    .line 536
    :pswitch_6
    const-string v0, "250"

    goto :goto_0

    .line 538
    :pswitch_7
    const-string v0, "333"

    goto :goto_0

    .line 540
    :pswitch_8
    const-string v0, "500"

    goto :goto_0

    .line 542
    :pswitch_9
    const-string v0, "667"

    goto :goto_0

    .line 544
    :pswitch_a
    const-string v0, "1000"

    goto :goto_0

    .line 546
    :pswitch_b
    const-string v0, "1333"

    goto :goto_0

    .line 548
    :pswitch_c
    const-string v0, "2000"

    goto :goto_0

    .line 550
    :pswitch_d
    const-string v0, "2857"

    goto :goto_0

    .line 552
    :pswitch_e
    const-string v0, "4000"

    goto :goto_0

    .line 554
    :pswitch_f
    const-string v0, "5556"

    goto :goto_0

    .line 556
    :pswitch_10
    const-string v0, "8000"

    goto :goto_0

    .line 558
    :pswitch_11
    const-string v0, "11111"

    goto :goto_0

    .line 560
    :pswitch_12
    const-string v0, "16667"

    goto :goto_0

    .line 562
    :pswitch_13
    const-string v0, "20000"

    goto :goto_0

    .line 564
    :pswitch_14
    const-string v0, "22222"

    goto :goto_0

    .line 566
    :pswitch_15
    const-string v0, "33333"

    goto :goto_0

    .line 568
    :pswitch_16
    const-string v0, "50000"

    goto :goto_0

    .line 570
    :pswitch_17
    const-string v0, "66667"

    goto :goto_0

    .line 572
    :pswitch_18
    const-string v0, "100000"

    goto :goto_0

    .line 574
    :pswitch_19
    const-string v0, "125000"

    goto :goto_0

    .line 576
    :pswitch_1a
    const-string v0, "166667"

    goto :goto_0

    .line 578
    :pswitch_1b
    const-string v0, "250000"

    goto :goto_0

    .line 580
    :pswitch_1c
    const-string v0, "300000"

    goto :goto_0

    .line 582
    :pswitch_1d
    const-string v0, "500000"

    goto :goto_0

    .line 584
    :pswitch_1e
    const-string v0, "1000000"

    goto :goto_0

    .line 586
    :pswitch_1f
    const-string v0, "2000000"

    goto :goto_0

    .line 588
    :pswitch_20
    const-string v0, "4000000"

    goto :goto_0

    .line 590
    :pswitch_21
    const-string v0, "8000000"

    goto :goto_0

    .line 592
    :pswitch_22
    const-string v0, "10000000"

    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public static getTouchMeteringModeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 605
    packed-switch p0, :pswitch_data_0

    .line 613
    const-string v0, "weighted-center"

    :goto_0
    return-object v0

    .line 607
    :pswitch_0
    const-string v0, "weighted-center"

    goto :goto_0

    .line 609
    :pswitch_1
    const-string v0, "weighted-spot"

    goto :goto_0

    .line 611
    :pswitch_2
    const-string v0, "weighted-matrix"

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 624
    packed-switch p0, :pswitch_data_0

    .line 638
    const-string v0, "auto"

    :goto_0
    return-object v0

    .line 626
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 628
    :pswitch_1
    const-string v0, "daylight"

    goto :goto_0

    .line 630
    :pswitch_2
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 632
    :pswitch_3
    const-string v0, "incandescent"

    goto :goto_0

    .line 634
    :pswitch_4
    const-string v0, "fluorescent"

    goto :goto_0

    .line 636
    :pswitch_5
    const-string v0, "temperature"

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isAutoExposureLockSupported(Lcom/samsung/android/camera/core/SemCamera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 677
    const-string v0, "true"

    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAutoWhiteBalanceLockSupported(Lcom/samsung/android/camera/core/SemCamera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 687
    const-string v0, "true"

    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
