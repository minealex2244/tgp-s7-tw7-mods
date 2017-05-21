.class public Lcom/samsung/android/media/soundshot/SemAudioVisualization;
.super Ljava/lang/Object;
.source "SemAudioVisualization.java"


# static fields
.field private static final visualizationBands:[[I

.field private static final visualizationRandSeed:[I


# instance fields
.field private prev_amplitude:I

.field private prev_visualization:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0xb

    .line 13
    const/16 v0, 0x15

    new-array v0, v0, [[I

    const/4 v1, 0x0

    .line 14
    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v5, v2, v3

    aput v8, v2, v5

    aput v7, v2, v6

    const/4 v3, 0x3

    aput v6, v2, v3

    aput v6, v2, v7

    aput v5, v2, v8

    const/4 v3, 0x6

    aput v5, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0xa

    aput v5, v2, v3

    aput-object v2, v0, v1

    .line 15
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    .line 16
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 17
    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    .line 18
    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    .line 19
    new-array v1, v4, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 20
    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 21
    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 22
    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 23
    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 24
    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    .line 25
    new-array v1, v4, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    const/16 v1, 0xc

    .line 26
    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 27
    new-array v2, v4, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 28
    new-array v2, v4, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 29
    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 30
    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 31
    new-array v2, v4, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 32
    new-array v2, v4, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 33
    new-array v2, v4, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 34
    new-array v2, v4, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    .line 13
    sput-object v0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->visualizationBands:[[I

    .line 36
    new-array v0, v4, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->visualizationRandSeed:[I

    return-void

    .line 15
    :array_0
    .array-data 4
        0x1
        0x6
        0x5
        0x3
        0x2
        0x1
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    .line 16
    :array_1
    .array-data 4
        0x2
        0x7
        0x6
        0x5
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x1
    .end array-data

    .line 17
    :array_2
    .array-data 4
        0x2
        0x8
        0x7
        0x7
        0x4
        0x3
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    .line 18
    :array_3
    .array-data 4
        0x3
        0x9
        0x9
        0x7
        0x4
        0x4
        0x3
        0x2
        0x1
        0x3
        0x2
    .end array-data

    .line 19
    :array_4
    .array-data 4
        0x3
        0xa
        0xa
        0x8
        0x6
        0x3
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    .line 20
    :array_5
    .array-data 4
        0x3
        0xb
        0xa
        0x8
        0x7
        0x4
        0x3
        0x2
        0x1
        0x4
        0x1
    .end array-data

    .line 21
    :array_6
    .array-data 4
        0x4
        0xc
        0xb
        0x7
        0x8
        0x4
        0x3
        0x4
        0x1
        0x4
        0x1
    .end array-data

    .line 22
    :array_7
    .array-data 4
        0x4
        0xd
        0xc
        0x7
        0x7
        0x5
        0x3
        0x3
        0x2
        0x4
        0x1
    .end array-data

    .line 23
    :array_8
    .array-data 4
        0x4
        0xe
        0xc
        0xa
        0x8
        0x6
        0x3
        0x2
        0x2
        0x4
        0x1
    .end array-data

    .line 24
    :array_9
    .array-data 4
        0x5
        0xe
        0xd
        0x7
        0x9
        0x7
        0x3
        0x3
        0x3
        0x5
        0x2
    .end array-data

    .line 25
    :array_a
    .array-data 4
        0x6
        0xe
        0xe
        0x7
        0xa
        0x6
        0x3
        0x4
        0x3
        0x5
        0x2
    .end array-data

    .line 26
    :array_b
    .array-data 4
        0x7
        0xf
        0xf
        0x7
        0xa
        0x7
        0x3
        0x2
        0x4
        0x5
        0x2
    .end array-data

    .line 27
    :array_c
    .array-data 4
        0x8
        0xf
        0xf
        0x7
        0x8
        0x8
        0x3
        0x3
        0x4
        0x6
        0x3
    .end array-data

    .line 28
    :array_d
    .array-data 4
        0xa
        0xf
        0x10
        0xa
        0xc
        0x8
        0x7
        0x4
        0x5
        0x7
        0x4
    .end array-data

    .line 29
    :array_e
    .array-data 4
        0xb
        0x10
        0xf
        0xd
        0xc
        0xa
        0x7
        0x5
        0x5
        0x8
        0x5
    .end array-data

    .line 30
    :array_f
    .array-data 4
        0xd
        0x11
        0x11
        0xf
        0xe
        0xc
        0xa
        0x8
        0x7
        0xa
        0x7
    .end array-data

    .line 31
    :array_10
    .array-data 4
        0xe
        0x12
        0x11
        0x10
        0xf
        0xe
        0xc
        0xa
        0xa
        0xd
        0xa
    .end array-data

    .line 32
    :array_11
    .array-data 4
        0x10
        0x12
        0x12
        0x12
        0x10
        0x10
        0xf
        0xf
        0xf
        0x10
        0x10
    .end array-data

    .line 33
    :array_12
    .array-data 4
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
    .end array-data

    .line 34
    :array_13
    .array-data 4
        0x12
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x12
    .end array-data

    .line 36
    :array_14
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_visualization:[I

    .line 11
    iput v2, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_amplitude:I

    .line 39
    iput v2, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_amplitude:I

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 44
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_visualization:[I

    aput v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clipVisualizatoin(I)I
    .locals 1
    .param p1, "vis"    # I

    .prologue
    const/16 v0, 0x14

    .line 170
    if-gez p1, :cond_1

    .line 171
    const/4 p1, 0x0

    .line 178
    .end local p1    # "vis":I
    :cond_0
    :goto_0
    return p1

    .line 174
    .restart local p1    # "vis":I
    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    .line 175
    goto :goto_0
.end method


# virtual methods
.method public getAudioAnalysisData([BI[I[I)V
    .locals 10
    .param p1, "audiostream"    # [B
    .param p2, "segData"    # I
    .param p3, "wave_curve"    # [I
    .param p4, "wave_visual"    # [I

    .prologue
    const/high16 v9, 0x42480000    # 50.0f

    const/4 v8, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "mic_level":F
    const/4 v2, 0x0

    .line 50
    .local v2, "mic_curve":F
    const/4 v1, 0x0

    .line 51
    .local v1, "idx":I
    const/4 v4, 0x0

    .line 53
    .local v4, "sample":S
    const/4 v5, 0x0

    .local v5, "seg":I
    :goto_0
    if-lt v5, p2, :cond_0

    .line 79
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, p2

    if-lt v0, v6, :cond_3

    .line 62
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, p2

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 63
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, p2

    int-to-float v6, v6

    div-float/2addr v2, v6

    .line 65
    sub-float/2addr v3, v9

    .line 66
    sub-float/2addr v2, v9

    .line 68
    cmpg-float v6, v3, v8

    if-gez v6, :cond_1

    .line 69
    const/4 v3, 0x0

    .line 72
    :cond_1
    cmpg-float v6, v2, v8

    if-gez v6, :cond_2

    .line 73
    const/4 v2, 0x0

    .line 76
    :cond_2
    float-to-int v6, v3

    aput v6, p4, v5

    .line 77
    float-to-int v6, v2

    aput v6, p3, v5

    .line 53
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 55
    :cond_3
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p1, v1

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-short v4, v6

    .line 56
    add-int/lit8 v1, v1, 0x2

    .line 58
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    .line 59
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 54
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public getVisualizationBands(I)[I
    .locals 8
    .param p1, "amplitude"    # I

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 87
    const/4 v0, 0x1

    .line 88
    .local v0, "delta":I
    new-array v2, v6, [I

    .line 90
    .local v2, "ret_vis":[I
    const/16 v4, 0x32

    if-ge p1, v4, :cond_1

    .line 91
    const/4 p1, 0x0

    .line 134
    :goto_0
    if-nez p1, :cond_16

    .line 135
    iput v5, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_amplitude:I

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_15

    .line 166
    :cond_0
    return-object v2

    .line 92
    .end local v1    # "i":I
    :cond_1
    const/16 v4, 0x64

    if-ge p1, v4, :cond_2

    .line 93
    const/4 p1, 0x1

    .line 94
    goto :goto_0

    :cond_2
    const/16 v4, 0x96

    if-ge p1, v4, :cond_3

    .line 95
    const/4 p1, 0x2

    .line 96
    goto :goto_0

    :cond_3
    const/16 v4, 0xc8

    if-ge p1, v4, :cond_4

    .line 97
    const/4 p1, 0x3

    .line 98
    goto :goto_0

    :cond_4
    const/16 v4, 0x12c

    if-ge p1, v4, :cond_5

    .line 99
    const/4 p1, 0x4

    .line 100
    goto :goto_0

    :cond_5
    const/16 v4, 0x190

    if-ge p1, v4, :cond_6

    .line 101
    const/4 p1, 0x5

    .line 102
    goto :goto_0

    :cond_6
    const/16 v4, 0x1f4

    if-ge p1, v4, :cond_7

    .line 103
    const/4 p1, 0x6

    .line 104
    goto :goto_0

    :cond_7
    const/16 v4, 0x258

    if-ge p1, v4, :cond_8

    .line 105
    const/4 p1, 0x7

    .line 106
    goto :goto_0

    :cond_8
    const/16 v4, 0x2bc

    if-ge p1, v4, :cond_9

    .line 107
    const/16 p1, 0x8

    .line 108
    goto :goto_0

    :cond_9
    const/16 v4, 0x320

    if-ge p1, v4, :cond_a

    .line 109
    const/16 p1, 0x9

    .line 110
    goto :goto_0

    :cond_a
    const/16 v4, 0x3e8

    if-ge p1, v4, :cond_b

    .line 111
    const/16 p1, 0xa

    .line 112
    goto :goto_0

    :cond_b
    const/16 v4, 0x4b0

    if-ge p1, v4, :cond_c

    .line 113
    const/16 p1, 0xb

    .line 114
    goto :goto_0

    :cond_c
    const/16 v4, 0x578

    if-ge p1, v4, :cond_d

    .line 115
    const/16 p1, 0xc

    .line 116
    goto :goto_0

    :cond_d
    const/16 v4, 0x640

    if-ge p1, v4, :cond_e

    .line 117
    const/16 p1, 0xd

    .line 118
    goto :goto_0

    :cond_e
    const/16 v4, 0x708

    if-ge p1, v4, :cond_f

    .line 119
    const/16 p1, 0xe

    .line 120
    goto :goto_0

    :cond_f
    const/16 v4, 0x7d0

    if-ge p1, v4, :cond_10

    .line 121
    const/16 p1, 0xf

    .line 122
    goto :goto_0

    :cond_10
    const/16 v4, 0x9c4

    if-ge p1, v4, :cond_11

    .line 123
    const/16 p1, 0x10

    .line 124
    goto :goto_0

    :cond_11
    const/16 v4, 0xbb8

    if-ge p1, v4, :cond_12

    .line 125
    const/16 p1, 0x11

    .line 126
    goto :goto_0

    :cond_12
    const/16 v4, 0xdac

    if-ge p1, v4, :cond_13

    .line 127
    const/16 p1, 0x12

    .line 128
    goto :goto_0

    :cond_13
    const/16 v4, 0xfa0

    if-ge p1, v4, :cond_14

    .line 129
    const/16 p1, 0x13

    .line 130
    goto/16 :goto_0

    .line 131
    :cond_14
    const/16 p1, 0x14

    goto/16 :goto_0

    .line 137
    .restart local v1    # "i":I
    :cond_15
    iget-object v4, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_visualization:[I

    aput v5, v4, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 142
    .end local v1    # "i":I
    :cond_16
    iget v4, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_amplitude:I

    if-ge p1, v4, :cond_17

    .line 143
    const/4 v0, -0x1

    .line 146
    :cond_17
    iput p1, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_amplitude:I

    .line 148
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v4, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->visualizationRandSeed:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 149
    if-lez v0, :cond_19

    .line 150
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sget-object v6, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->visualizationRandSeed:[I

    aget v6, v6, v1

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sget-object v6, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->visualizationBands:[[I

    aget-object v6, v6, p1

    aget v6, v6, v1

    int-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    aput v4, v2, v1

    .line 155
    :goto_3
    aget v4, v2, v1

    iget-object v5, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_visualization:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_18

    .line 156
    if-lez v0, :cond_1a

    .line 157
    iget-object v4, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_visualization:[I

    aget v4, v4, v1

    add-int/lit8 v4, v4, 0x5

    aput v4, v2, v1

    .line 163
    :cond_18
    :goto_4
    aget v4, v2, v1

    invoke-direct {p0, v4}, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->clipVisualizatoin(I)I

    move-result v3

    .local v3, "tmp449_446":I
    aput v3, v2, v1

    iget-object v4, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_visualization:[I

    aput v3, v4, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 152
    .end local v3    # "tmp449_446":I
    :cond_19
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sget-object v6, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->visualizationRandSeed:[I

    aget v6, v6, v1

    int-to-double v6, v6

    mul-double/2addr v4, v6

    int-to-double v6, v0

    mul-double/2addr v4, v6

    sget-object v6, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->visualizationBands:[[I

    aget-object v6, v6, p1

    aget v6, v6, v1

    int-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    aput v4, v2, v1

    goto :goto_3

    .line 159
    :cond_1a
    iget-object v4, p0, Lcom/samsung/android/media/soundshot/SemAudioVisualization;->prev_visualization:[I

    aget v4, v4, v1

    add-int/lit8 v4, v4, -0x5

    aput v4, v2, v1

    goto :goto_4
.end method
