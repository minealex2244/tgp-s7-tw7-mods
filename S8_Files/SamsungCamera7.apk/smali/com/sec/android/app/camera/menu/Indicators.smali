.class public Lcom/sec/android/app/camera/menu/Indicators;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "Indicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "Indicators"

.field private static final VIEW_MODE_INDICATOR_TIMEOUT:I = 0x7d0

.field private static final VISIBLE_REMAIN_COUNT:I = 0x12c

.field private static final VOICE_INDICATOR_TIMEOUT:I = 0x320


# instance fields
.field private final INDICATOR_GROUP_HEIGHT:I

.field private final INDICATOR_GROUP_ITEM_PADDING:I

.field private final INDICATOR_GROUP_LANDSCAPE_X_PADDING:I

.field private final INDICATOR_GROUP_PORTRAIT_X_PADDING:I

.field private final INDICATOR_GROUP_POS_X:I

.field private final INDICATOR_GROUP_POS_Y:I

.field private final INDICATOR_GROUP_WIDTH:I

.field private final INDICATOR_ITEM_HEIGHT:I

.field private final INDICATOR_REMAIN_COUNTER_TEXT_SIZE:I

.field private final INDICATOR_TEXT_COLOR:I

.field private final INDICATOR_TEXT_STROKE_COLOR:I

.field private final INDICATOR_TEXT_STROKE_WIDTH:I

.field private mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mHideViewModeIndicator:Ljava/lang/Runnable;

.field private final mHideVoiceIndicator:Ljava/lang/Runnable;

.field private mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

.field private mRemainCount:I

.field private mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

.field private mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

.field private mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

.field private mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

.field private mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 88
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 50
    const v0, 0x7f0a0284

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    .line 51
    const v0, 0x7f0a0283

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    .line 52
    const v0, 0x7f0a0142

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_POS_X:I

    .line 53
    const v0, 0x7f0a0143

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_POS_Y:I

    .line 54
    const v0, 0x7f0a0340

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_ITEM_PADDING:I

    .line 55
    const v0, 0x7f0a0342

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_PORTRAIT_X_PADDING:I

    .line 56
    const v0, 0x7f0a0341

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_X_PADDING:I

    .line 57
    const v0, 0x7f0a0343

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_ITEM_HEIGHT:I

    .line 58
    const v0, 0x7f0d000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_COLOR:I

    .line 59
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    .line 60
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 61
    const v0, 0x7f0a0285

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_REMAIN_COUNTER_TEXT_SIZE:I

    .line 70
    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Indicators$1;-><init>(Lcom/sec/android/app/camera/menu/Indicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/Indicators$2;-><init>(Lcom/sec/android/app/camera/menu/Indicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    .line 90
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/Indicators;->init()V

    .line 94
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    .line 238
    .local v1, "glContext":Lcom/samsung/android/glview/GLContext;
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v11

    .line 241
    .local v11, "screenWidth":I
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 242
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_X_PADDING:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_PORTRAIT_X_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_ITEM_PADDING:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    .line 255
    .end local v11    # "screenWidth":I
    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->setClipping(Z)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setTimerIndicator(I)V

    .line 258
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setFocusable(Z)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 258
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 246
    .end local v10    # "i":I
    .restart local v11    # "screenWidth":I
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    sub-int v2, v11, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_PORTRAIT_X_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_LANDSCAPE_X_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_ITEM_PADDING:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    goto :goto_0

    .line 251
    .end local v11    # "screenWidth":I
    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_GROUP_ITEM_PADDING:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    goto/16 :goto_0

    .line 263
    .restart local v10    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainCount(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    .line 264
    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_ITEM_HEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_ITEM_HEIGHT:I

    int-to-float v5, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v12, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_REMAIN_COUNTER_TEXT_SIZE:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setClipping(Z)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 272
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02023d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setClipping(Z)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 276
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setClipping(Z)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setBatteryLevel(I)V

    .line 279
    const/4 v10, 0x0

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setFocusable(Z)V

    .line 279
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 283
    :cond_4
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setClipping(Z)V

    .line 285
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    .line 290
    :goto_3
    const/4 v10, 0x0

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->getSize()I

    move-result v0

    if-ge v10, v0, :cond_6

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setFocusable(Z)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    .line 290
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVisibility(I)V

    goto :goto_3

    .line 295
    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setClipping(Z)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setVisibility(I)V

    .line 298
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_7

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setViewModeIndicator(I)V

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_8

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 311
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setRemainCount(I)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    .line 319
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 321
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setCoverCamera(Z)V

    .line 323
    :cond_a
    return-void
.end method

.method private setCoverCamera(Z)V
    .locals 2
    .param p1, "coverCamera"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 330
    :cond_0
    if-eqz p1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTimerIndicator(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 342
    :cond_0
    if-nez p1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 347
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->setTimerStatus(I)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 104
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 6
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 111
    sparse-switch p1, :sswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 113
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/Indicators;->setTimerIndicator(I)V

    .line 114
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    .line 115
    .local v2, "selectedCommandId":I
    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 116
    .local v1, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/TimerIndicator;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLView;->setSubTitle(Ljava/lang/String;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "i":I
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v2    # "selectedCommandId":I
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 122
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    .line 128
    :sswitch_2
    if-ne p2, v4, :cond_2

    .line 129
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setCoverCamera(Z)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/Indicators;->setCoverCamera(Z)V

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x47 -> :sswitch_1
        0x137 -> :sswitch_2
    .end sparse-switch
.end method

.method public refreshAllIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setTimerIndicator(I)V

    .line 142
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_VOICE_COMMAND:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setVoiceStatus(I)V

    .line 147
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setRemainCount(I)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(I)V

    .line 152
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/Indicators;->setViewModeIndicator(I)V

    .line 155
    :cond_1
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBatteryLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    const/16 v5, 0x10

    const/4 v1, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    .line 165
    :cond_2
    if-ltz p1, :cond_3

    if-ge p1, v1, :cond_3

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setLevel(I)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090116

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    if-lt p1, v1, :cond_4

    if-ge p1, v5, :cond_4

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->setLevel(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090116

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_4
    if-lt p1, v5, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mBatteryIndicator:Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setRemainCount(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 184
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    .line 185
    iget v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCount:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCounterIndicator:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mRemainCountImageIndicator:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setViewModeIndicator(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setViewMode(I)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideViewModeIndicator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public setVoiceStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 215
    const-string v0, "Indicators"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mHideVoiceIndicator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;->setVoiceStatus(I)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Indicators;->mVoiceIndicator:Lcom/sec/android/app/camera/widget/gl/VoiceIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_1
.end method
