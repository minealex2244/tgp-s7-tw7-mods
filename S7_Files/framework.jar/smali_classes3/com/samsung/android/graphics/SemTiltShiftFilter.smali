.class public Lcom/samsung/android/graphics/SemTiltShiftFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemTiltShiftFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;


# static fields
.field private static final BOTTOM_Y:I = 0x5

.field private static final BRIGHTNESS:I = 0x8

.field private static final CONTRAST:I = 0x6

.field private static final GRADIENT_ANGLE:I = 0xa

.field private static final GRADIENT_RATE:I = 0x9

.field private static final MAX_PARAMS:I = 0x10

.field private static final SATURATION:I = 0x7

.field private static final TOP_Y:I = 0x4

.field private static final mFragmentShader:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform float filterParams[16];\nuniform float areaH;\n\nvec3 ContrastSaturationBrightness(vec3 color, float brt, float sat, float con)\n{\n   float AvgLumR = 0.5;\n   float AvgLumG = 0.5;\n   float AvgLumB = 0.5;\n\n   vec3 LumCoeff = vec3(0.2125, 0.7154, 0.0721);\n\n   vec3 AvgLumin = vec3(AvgLumR, AvgLumG, AvgLumB);\n   vec3 brtColor = color * brt;\n   vec3 intensity = vec3(dot(brtColor, LumCoeff));\n   vec3 satColor = mix(intensity, brtColor, sat);\n   vec3 conColor = mix(AvgLumin, satColor, con);\n   return conColor;\n}\n\nvoid main(void) {\n    vec4 colorBlur = texture2D(baseSampler, outTexCoords);\n    vec4 originalColor = texture2D(originalSampler, outTexCoords);\n    float point1 = filterParams[4] / areaH;\n    float point2 = filterParams[5] / areaH;\n    float kx = filterParams[10] * outTexCoords.x - outTexCoords.y;\n    float k1 = (kx + point1) * filterParams[9];\n    float k2 = (kx + point2) * filterParams[9];\n    float s = abs(point1 - point2);\n    float mixCoef = clamp(clamp(1.0 - min(abs(k1), abs(k2)) / (s * 0.5), 0.0, 1.0) * 1.1 + clamp(sign(k1 * k2), 0.0, 1.0), 0.0, 1.0);\n    vec4 color = mix(originalColor, colorBlur, mixCoef);\n    color.rgb = ContrastSaturationBrightness(color.rgb, filterParams[8], filterParams[7], filterParams[6]);\n    gl_FragColor = color;\n}\n\n"

.field private static final mVertexShader:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nuniform float filterParams[16];\nuniform float areaH;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"


# instance fields
.field private mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

.field private mBottomY:F

.field private mBrightness:F

.field private mContrast:F

.field private mGradientAngle:F

.field private mGradientRate:F

.field private mSaturation:F

.field private mTopY:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBottomY:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBrightness:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mContrast:F

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientAngle:F

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientRate:F

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mSaturation:F

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/graphics/SemTiltShiftFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mTopY:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBottomY:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBrightness:F

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mContrast:F

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientAngle:F

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientRate:F

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mSaturation:F

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/graphics/SemTiltShiftFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mTopY:F

    return p1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 99
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nuniform float filterParams[16];\nuniform float areaH;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform float filterParams[16];\nuniform float areaH;\n\nvec3 ContrastSaturationBrightness(vec3 color, float brt, float sat, float con)\n{\n   float AvgLumR = 0.5;\n   float AvgLumG = 0.5;\n   float AvgLumB = 0.5;\n\n   vec3 LumCoeff = vec3(0.2125, 0.7154, 0.0721);\n\n   vec3 AvgLumin = vec3(AvgLumR, AvgLumG, AvgLumB);\n   vec3 brtColor = color * brt;\n   vec3 intensity = vec3(dot(brtColor, LumCoeff));\n   vec3 satColor = mix(intensity, brtColor, sat);\n   vec3 conColor = mix(AvgLumin, satColor, con);\n   return conColor;\n}\n\nvoid main(void) {\n    vec4 colorBlur = texture2D(baseSampler, outTexCoords);\n    vec4 originalColor = texture2D(originalSampler, outTexCoords);\n    float point1 = filterParams[4] / areaH;\n    float point2 = filterParams[5] / areaH;\n    float kx = filterParams[10] * outTexCoords.x - outTexCoords.y;\n    float k1 = (kx + point1) * filterParams[9];\n    float k2 = (kx + point2) * filterParams[9];\n    float s = abs(point1 - point2);\n    float mixCoef = clamp(clamp(1.0 - min(abs(k1), abs(k2)) / (s * 0.5), 0.0, 1.0) * 1.1 + clamp(sign(k1 * k2), 0.0, 1.0), 0.0, 1.0);\n    vec4 color = mix(originalColor, colorBlur, mixCoef);\n    color.rgb = ContrastSaturationBrightness(color.rgb, filterParams[8], filterParams[7], filterParams[6]);\n    gl_FragColor = color;\n}\n\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientAngle:F

    .line 79
    iput v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mTopY:F

    .line 80
    iput v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBottomY:F

    .line 81
    iput v3, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mContrast:F

    .line 82
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mSaturation:F

    .line 83
    iput v3, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBrightness:F

    .line 84
    iput v3, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientRate:F

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterParams()V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData01()V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->useFilterData02()V

    .line 104
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mContrast:F

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 105
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mSaturation:F

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 106
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBrightness:F

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 107
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientRate:F

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 98
    return-void
.end method

.method private buildFilters()V
    .locals 3

    .prologue
    .line 540
    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearFilters()V

    .line 542
    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    if-eqz v1, :cond_0

    .line 543
    const/4 v0, 0x0

    .local v0, "pass":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    .end local v0    # "pass":I
    :cond_0
    const-string/jumbo v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nuniform float filterParams[16];\nuniform float areaH;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string/jumbo v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform float filterParams[16];\nuniform float areaH;\n\nvec3 ContrastSaturationBrightness(vec3 color, float brt, float sat, float con)\n{\n   float AvgLumR = 0.5;\n   float AvgLumG = 0.5;\n   float AvgLumB = 0.5;\n\n   vec3 LumCoeff = vec3(0.2125, 0.7154, 0.0721);\n\n   vec3 AvgLumin = vec3(AvgLumR, AvgLumG, AvgLumB);\n   vec3 brtColor = color * brt;\n   vec3 intensity = vec3(dot(brtColor, LumCoeff));\n   vec3 satColor = mix(intensity, brtColor, sat);\n   vec3 conColor = mix(AvgLumin, satColor, con);\n   return conColor;\n}\n\nvoid main(void) {\n    vec4 colorBlur = texture2D(baseSampler, outTexCoords);\n    vec4 originalColor = texture2D(originalSampler, outTexCoords);\n    float point1 = filterParams[4] / areaH;\n    float point2 = filterParams[5] / areaH;\n    float kx = filterParams[10] * outTexCoords.x - outTexCoords.y;\n    float k1 = (kx + point1) * filterParams[9];\n    float k2 = (kx + point2) * filterParams[9];\n    float s = abs(point1 - point2);\n    float mixCoef = clamp(clamp(1.0 - min(abs(k1), abs(k2)) / (s * 0.5), 0.0, 1.0) * 1.1 + clamp(sign(k1 * k2), 0.0, 1.0), 0.0, 1.0);\n    vec4 color = mix(originalColor, colorBlur, mixCoef);\n    color.rgb = ContrastSaturationBrightness(color.rgb, filterParams[8], filterParams[7], filterParams[6]);\n    gl_FragColor = color;\n}\n\n"

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->createCustomFilter(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/graphics/SemCustomFilter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 539
    return-void
.end method

.method private copyBlurShaders()V
    .locals 6

    .prologue
    .line 513
    iget-object v4, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    invoke-virtual {v4}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 514
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/String;

    .line 515
    .local v3, "vs":[Ljava/lang/String;
    new-array v0, v2, [Ljava/lang/String;

    .line 517
    .local v0, "fs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "pass":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_0

    .line 518
    iget-object v4, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    invoke-virtual {v4, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getVertexShaderCode(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 519
    iget-object v4, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    invoke-virtual {v4, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getFragmentShaderCode(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :cond_0
    add-int/lit8 v4, v2, -0x1

    const-string/jumbo v5, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nuniform float filterParams[16];\nuniform float areaH;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    aput-object v5, v3, v4

    .line 523
    add-int/lit8 v4, v2, -0x1

    const-string/jumbo v5, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D originalSampler;\nuniform float filterParams[16];\nuniform float areaH;\n\nvec3 ContrastSaturationBrightness(vec3 color, float brt, float sat, float con)\n{\n   float AvgLumR = 0.5;\n   float AvgLumG = 0.5;\n   float AvgLumB = 0.5;\n\n   vec3 LumCoeff = vec3(0.2125, 0.7154, 0.0721);\n\n   vec3 AvgLumin = vec3(AvgLumR, AvgLumG, AvgLumB);\n   vec3 brtColor = color * brt;\n   vec3 intensity = vec3(dot(brtColor, LumCoeff));\n   vec3 satColor = mix(intensity, brtColor, sat);\n   vec3 conColor = mix(AvgLumin, satColor, con);\n   return conColor;\n}\n\nvoid main(void) {\n    vec4 colorBlur = texture2D(baseSampler, outTexCoords);\n    vec4 originalColor = texture2D(originalSampler, outTexCoords);\n    float point1 = filterParams[4] / areaH;\n    float point2 = filterParams[5] / areaH;\n    float kx = filterParams[10] * outTexCoords.x - outTexCoords.y;\n    float k1 = (kx + point1) * filterParams[9];\n    float k2 = (kx + point2) * filterParams[9];\n    float s = abs(point1 - point2);\n    float mixCoef = clamp(clamp(1.0 - min(abs(k1), abs(k2)) / (s * 0.5), 0.0, 1.0) * 1.1 + clamp(sign(k1 * k2), 0.0, 1.0), 0.0, 1.0);\n    vec4 color = mix(originalColor, colorBlur, mixCoef);\n    color.rgb = ContrastSaturationBrightness(color.rgb, filterParams[8], filterParams[7], filterParams[6]);\n    gl_FragColor = color;\n}\n\n"

    aput-object v5, v0, v4

    .line 524
    invoke-super {p0, v2, v3, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private copyParams()[F
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 528
    new-array v3, v5, [F

    .line 530
    .local v3, "params":[F
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 531
    iget-object v4, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    invoke-virtual {v4, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v1

    .line 532
    .local v1, "param1":F
    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getParam(I)F

    move-result v2

    .line 533
    .local v2, "param2":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_0

    .end local v2    # "param2":F
    :goto_1
    aput v2, v3, v0

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v2    # "param2":F
    :cond_0
    move v2, v1

    .line 533
    goto :goto_1

    .line 536
    .end local v1    # "param1":F
    .end local v2    # "param2":F
    :cond_1
    return-object v3
.end method

.method private setFiltersParams([F)V
    .locals 2
    .param p1, "params"    # [F

    .prologue
    .line 552
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 553
    aget v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 551
    return-void
.end method


# virtual methods
.method public animateBrightness(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 285
    new-instance v1, Lcom/samsung/android/graphics/SemTiltShiftFilter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemTiltShiftFilter$4;-><init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateContrast(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 187
    new-instance v1, Lcom/samsung/android/graphics/SemTiltShiftFilter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemTiltShiftFilter$2;-><init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradient(FFFFJJLandroid/animation/TimeInterpolator;)[I
    .locals 9
    .param p1, "aStartValueTopY"    # F
    .param p2, "aEndValueTopY"    # F
    .param p3, "aStartValueBottomY"    # F
    .param p4, "aEndValueBottomY"    # F
    .param p5, "aDuration"    # J
    .param p7, "aDelay"    # J
    .param p9, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 339
    new-instance v0, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/graphics/SemTiltShiftFilter$5;-><init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FFFF)V

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientAngle(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 137
    new-instance v1, Lcom/samsung/android/graphics/SemTiltShiftFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemTiltShiftFilter$1;-><init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientBottomY(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 421
    new-instance v1, Lcom/samsung/android/graphics/SemTiltShiftFilter$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemTiltShiftFilter$7;-><init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientRate(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 470
    new-instance v1, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemTiltShiftFilter$8;-><init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateGradientTopY(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 382
    new-instance v1, Lcom/samsung/android/graphics/SemTiltShiftFilter$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemTiltShiftFilter$6;-><init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public animateSaturation(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 236
    new-instance v1, Lcom/samsung/android/graphics/SemTiltShiftFilter$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemTiltShiftFilter$3;-><init>(Lcom/samsung/android/graphics/SemTiltShiftFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToView()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public onParamsChanged()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    if-eqz v0, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->copyParams()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->setFiltersParams([F)V

    .line 562
    :cond_0
    return-void
.end method

.method public onViewSizeChanged()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public setBlurFilter(Lcom/samsung/android/graphics/SemGenericImageFilter;)V
    .locals 2
    .param p1, "blurFilter"    # Lcom/samsung/android/graphics/SemGenericImageFilter;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    .line 501
    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    if-nez v1, :cond_0

    .line 502
    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBlurFilter:Lcom/samsung/android/graphics/SemGenericImageFilter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/graphics/SemImageFilterSet;->setListener(Lcom/samsung/android/graphics/SemImageFilter$IImageFilterListener;)V

    .line 506
    invoke-direct {p0}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->copyParams()[F

    move-result-object v0

    .line 507
    .local v0, "tempParams":[F
    invoke-direct {p0}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->copyBlurShaders()V

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->buildFilters()V

    .line 509
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemTiltShiftFilter;->setFiltersParams([F)V

    .line 498
    return-void
.end method

.method public setBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 265
    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBrightness:F

    .line 266
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBrightness:F

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 264
    return-void
.end method

.method public setContrast(F)V
    .locals 2
    .param p1, "contast"    # F

    .prologue
    .line 167
    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mContrast:F

    .line 168
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mContrast:F

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 166
    return-void
.end method

.method public setGradient(FF)V
    .locals 2
    .param p1, "topY"    # F
    .param p2, "bottomY"    # F

    .prologue
    .line 314
    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mTopY:F

    .line 315
    iput p2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBottomY:F

    .line 316
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mTopY:F

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 317
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mBottomY:F

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 313
    return-void
.end method

.method public setGradientAngle(F)V
    .locals 4
    .param p1, "degree"    # F

    .prologue
    .line 115
    neg-float v2, p1

    const/4 v3, 0x1

    invoke-super {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setValue(IF)V

    .line 116
    neg-float v2, p1

    iput v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientAngle:F

    .line 117
    iget v2, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 118
    .local v0, "angleInRadians":D
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 114
    return-void
.end method

.method public setGradientRate(F)V
    .locals 2
    .param p1, "gradientRate"    # F

    .prologue
    .line 450
    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientRate:F

    .line 451
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mGradientRate:F

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 449
    return-void
.end method

.method public setSaturation(F)V
    .locals 2
    .param p1, "saturation"    # F

    .prologue
    .line 216
    iput p1, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mSaturation:F

    .line 217
    iget v0, p0, Lcom/samsung/android/graphics/SemTiltShiftFilter;->mSaturation:F

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 215
    return-void
.end method
