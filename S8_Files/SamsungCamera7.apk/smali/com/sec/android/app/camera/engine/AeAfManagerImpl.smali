.class public Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager;
.implements Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;
.implements Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;
.implements Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;
.implements Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;
.implements Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;
    }
.end annotation


# static fields
.field private static final AF_WAIT_TIMER_EXPIRED_MSG:I = 0x4

.field private static final AUTOFOCUS_CANCELED:I = 0x2

.field private static final AUTOFOCUS_FAIL:I = 0x0

.field private static final AUTOFOCUS_FOCUSING:I = 0x3

.field private static final AUTOFOCUS_RESTART:I = 0x4

.field private static final AUTOFOCUS_SUCCESS:I = 0x1

.field private static final COMPLETE_TOUCH_AE_TIMER:I = 0x6

.field private static final DELAY_TIME_TO_RESET_TOUCH_AF:I = 0xbb8

.field private static final DELAY_TIME_TO_START_AUTO_FOCUS:I = 0xfa

.field private static final DELAY_TIME_TO_START_TOUCH_AE:I = 0x320

.field private static final DELAY_TIME_TO_WAIT_AE_RESULT:I = 0x4b0

.field private static final HALF_SHUTTER_DURATION:I = 0xc8

.field private static final MOVE_THRESHOLD_FOR_AFAE_MOVE:I = 0xa

.field private static final MOVE_THRESHOLD_FOR_ONETOUCH_SHOOTING:I = 0xf

.field private static final OBJECT_TRACKING_AREA_OFFSET:I = 0x1

.field private static final OBJECT_TRACKING_STATE_IDLE:I = 0x1

.field private static final OBJECT_TRACKING_STATE_OK:I = 0x2

.field private static final RESET_TOUCH_AF:I = 0x1

.field private static final START_AUTO_FOCUS_MSG:I = 0x2

.field private static final START_TOUCH_AE_MSG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AeAfManagerImpl"

.field private static final WAIT_TOUCH_AE_RESULT:I = 0x5


# instance fields
.field private mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

.field private mAfAeTouchCurrentPt:Landroid/graphics/Point;

.field private mAfAeTouchStartingPt:Landroid/graphics/Point;

.field private mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

.field private mAfMoveThreshold:I

.field private mAfState:I

.field private mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mIsDivideAFStarted:Z

.field private mIsTouchAEStarted:Z

.field private mIsTouchAeTimerExpired:Z

.field private mIsTouchAfActive:Z

.field private mLastTouchAePt:Landroid/graphics/Point;

.field private mLastTouchAfAePt:Landroid/graphics/Point;

.field private mLastTouchAfPt:Landroid/graphics/Point;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMoveThreshold:I

.field private mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mTouchAeLockState:I

.field private mTouchAfPosX:I

.field private mTouchAfPosY:I

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    .line 88
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    .line 89
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    .line 90
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;

    .line 91
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

    .line 92
    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    .line 94
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    .line 95
    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    .line 96
    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    .line 97
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    .line 99
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    .line 102
    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    .line 103
    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    .line 104
    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMoveThreshold:I

    .line 105
    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMoveThreshold:I

    .line 106
    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeLockState:I

    .line 107
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAfActive:Z

    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 112
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 113
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 114
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMoveThreshold:I

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMoveThreshold:I

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private checkDivideAFBoundary(II)Z
    .locals 4
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    const v3, 0x7f0a02b7

    const v2, 0x7f0a02b6

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    .line 832
    const/4 v0, 0x1

    .line 835
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTouchAEBoundary(II)Z
    .locals 4
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    const v3, 0x7f0a02b7

    const v2, 0x7f0a02b6

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    .line 841
    const/4 v0, 0x1

    .line 844
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertToTouchArea(IIIIII)Ljava/util/List;
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "focusWidth"    # I
    .param p6, "focusHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v6, 0x44fa0000    # 2000.0f

    const/high16 v5, 0x447a0000    # 1000.0f

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v0, "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    new-instance v2, Lcom/samsung/android/camera/core/SemCamera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core/SemCamera$Area;

    iget-object v1, v2, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    .line 865
    .local v1, "rect":Landroid/graphics/Rect;
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 866
    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 867
    int-to-float v2, p2

    int-to-float v3, p4

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 868
    int-to-float v2, p1

    int-to-float v3, p5

    add-float/2addr v2, v3

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 869
    int-to-float v2, p2

    int-to-float v3, p6

    add-float/2addr v2, v3

    int-to-float v3, p4

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 876
    .end local v0    # "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    :goto_0
    return-object v0

    .line 871
    .restart local v0    # "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    :cond_0
    const-string v2, "AeAfManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToTouchArea : leftTop ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), previewWH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), focusWH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v2, "AeAfManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToTouchArea : areaList.get(0).rect ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getTransformedFocusArea(II)[Landroid/graphics/Point;
    .locals 4
    .param p1, "PtX"    # I
    .param p2, "PtY"    # I

    .prologue
    .line 882
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v2, :cond_0

    .line 883
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0378

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 884
    .local v0, "leftMargin":I
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0377

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 890
    .local v1, "topMargin":I
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(IIII)[Landroid/graphics/Point;

    move-result-object v2

    return-object v2

    .line 886
    .end local v0    # "leftMargin":I
    .end local v1    # "topMargin":I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 887
    .restart local v0    # "leftMargin":I
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1    # "topMargin":I
    goto :goto_0
.end method

.method private getTransformedFocusArea(IIII)[Landroid/graphics/Point;
    .locals 11
    .param p1, "PtX"    # I
    .param p2, "PtY"    # I
    .param p3, "leftMargin"    # I
    .param p4, "topMargin"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 894
    new-array v2, v10, [Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v2, v8

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v2, v9

    .line 895
    .local v2, "focusArea":[Landroid/graphics/Point;
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getTouchAutoFocusBoundary()Landroid/graphics/Rect;

    move-result-object v1

    .line 896
    .local v1, "boundary":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 897
    .local v3, "leftBoundary":I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 898
    .local v5, "topBoundary":I
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 899
    .local v4, "rightBoundary":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 900
    .local v0, "bottomBoundary":I
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v6

    .line 902
    .local v6, "windowOrientation":I
    if-lt p1, v3, :cond_8

    if-gt p1, v4, :cond_8

    if-lt p2, v5, :cond_8

    if-gt p2, v0, :cond_8

    .line 903
    add-int v7, v3, p3

    if-gt p1, v7, :cond_5

    .line 904
    add-int p1, v3, p3

    .line 908
    :cond_0
    :goto_0
    add-int v7, v5, p4

    if-gt p2, v7, :cond_6

    .line 909
    add-int p2, v5, p4

    .line 914
    :cond_1
    :goto_1
    aget-object v7, v2, v8

    iput p1, v7, Landroid/graphics/Point;->x:I

    .line 915
    aget-object v7, v2, v8

    iput p2, v7, Landroid/graphics/Point;->y:I

    .line 918
    if-eqz v6, :cond_2

    if-ne v6, v10, :cond_7

    .line 919
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ne v3, v7, :cond_3

    .line 920
    sub-int/2addr p1, v3

    .line 922
    :cond_3
    sub-int/2addr p2, v5

    .line 931
    :cond_4
    :goto_2
    aget-object v7, v2, v9

    iput p1, v7, Landroid/graphics/Point;->x:I

    .line 932
    aget-object v7, v2, v9

    iput p2, v7, Landroid/graphics/Point;->y:I

    .line 937
    .end local v2    # "focusArea":[Landroid/graphics/Point;
    :goto_3
    return-object v2

    .line 905
    .restart local v2    # "focusArea":[Landroid/graphics/Point;
    :cond_5
    sub-int v7, v4, p3

    if-lt p1, v7, :cond_0

    .line 906
    sub-int p1, v4, p3

    goto :goto_0

    .line 910
    :cond_6
    sub-int v7, v0, p4

    if-lt p2, v7, :cond_1

    .line 911
    sub-int p2, v0, p4

    goto :goto_1

    .line 924
    :cond_7
    sub-int/2addr p1, v3

    .line 925
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ne v5, v7, :cond_4

    .line 926
    sub-int/2addr p2, v5

    goto :goto_2

    .line 937
    :cond_8
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 949
    :cond_0
    const-string v0, "AeAfManagerImpl"

    const-string v1, "handleMessage - returned. camera is inactive"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_1
    :goto_0
    return-void

    .line 952
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 954
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAF()V

    goto :goto_0

    .line 959
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setHalfShutter(Z)V

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 962
    const-string v0, "AeAfManagerImpl"

    const-string v1, "START_AUTO_FOCUS is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 976
    :catch_0
    move-exception v0

    goto :goto_0

    .line 965
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 966
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAfIndicatorPosition()V

    .line 969
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    .line 972
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setFocusMode(I)V

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 981
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEVSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->hideTouchEVSlider()V

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    .line 986
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    if-eqz v0, :cond_1

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAEAWBLockParameter(Z)V

    .line 990
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelAutoFocus()V

    .line 992
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopObjectTrackingAF()V

    .line 993
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleTouchAE(I)V

    .line 994
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-nez v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfPosition(II)V

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V

    goto/16 :goto_0

    .line 1001
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->restartTouchAF()V

    goto/16 :goto_0

    .line 1004
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeWaitTouchAeResult()V

    .line 1006
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->touchAECompleted()V

    goto/16 :goto_0

    .line 1010
    :pswitch_5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    goto/16 :goto_0

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1018
    const-string v1, "AeAfManagerImpl"

    const-string v2, "handleTouchAutoFocusEvent"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeResetTouchAfMessage()V

    .line 1021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(II)[Landroid/graphics/Point;

    move-result-object v0

    .line 1022
    .local v0, "focusArea":[Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 1023
    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfAePosition(II)V

    .line 1025
    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfPosition(II)V

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1028
    aget-object v1, v0, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfPosition(II)V

    .line 1031
    :cond_0
    return-void
.end method

.method private isDivideAFStarted()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    return v0
.end method

.method private isObjectTrackingArea(FF)Z
    .locals 6
    .param p1, "PtX"    # F
    .param p2, "PtY"    # F

    .prologue
    .line 1042
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getTouchAutoFocusBoundary()Landroid/graphics/Rect;

    move-result-object v1

    .line 1043
    .local v1, "boundary":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v5, 0x1

    .line 1044
    .local v2, "leftBoundary":I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v5, 0x1

    .line 1045
    .local v4, "topBoundary":I
    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v5, -0x1

    .line 1046
    .local v3, "rightBoundary":I
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v5, -0x1

    .line 1048
    .local v0, "bottomBoundary":I
    int-to-float v5, v2

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    int-to-float v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    int-to-float v5, v0

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 1049
    const/4 v5, 0x1

    .line 1051
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isTouchAEEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1061
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1062
    const-string v1, "AeAfManagerImpl"

    const-string v2, "Wrong state for touchAE"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_0
    :goto_0
    return v0

    .line 1065
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1074
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAESupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-nez v1, :cond_0

    .line 1086
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTouchAeTimerExpired()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    return v0
.end method

.method private isTouchAutoFocusEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1094
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1095
    const-string v1, "AeAfManagerImpl"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_0
    :goto_0
    return v0

    .line 1098
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isStopPreviewPending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1099
    const-string v1, "AeAfManagerImpl"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1103
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1107
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1115
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FRONT_AF:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1118
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1119
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1123
    :cond_5
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1126
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAFSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1129
    goto :goto_0
.end method

.method private needToResetTouchAe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchAeParameter()V
    .locals 2

    .prologue
    .line 1137
    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAeParameter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->disableFaceRect(Z)V

    .line 1140
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeResetTouchAeTimer()V

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetTouchAeParameter()V

    .line 1142
    return-void
.end method

.method private sendMSGToStartTouchAE()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1146
    const-string v0, "AeAfManagerImpl"

    const-string v1, "sendMSGToStartTouchAE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1149
    return-void
.end method

.method private setDivideAfPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 1154
    return-void
.end method

.method private startAFWaitTimer()V
    .locals 4

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1158
    return-void
.end method

.method private startObjectTrackingAF(FF)V
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1161
    const-string v1, "AeAfManagerImpl"

    const-string v8, "startObjectTrackingAF"

    invoke-static {v1, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v16

    .line 1168
    .local v16, "windowOrientation":I
    const/4 v6, 0x2

    .line 1169
    .local v6, "focusWidth":I
    const/4 v7, 0x2

    .line 1171
    .local v7, "focusHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1172
    .local v4, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1174
    .local v5, "height":I
    if-eqz v16, :cond_0

    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_1

    .line 1175
    :cond_0
    move/from16 v0, p1

    float-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    .line 1176
    .local v2, "left":I
    move/from16 v0, p2

    float-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    .local v3, "top":I
    move-object/from16 v1, p0

    .line 1178
    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    .line 1186
    .local v15, "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v15}, Lcom/sec/android/app/camera/engine/CommonEngine;->startObjectTrackingAF(Ljava/util/List;)V

    .line 1187
    return-void

    .line 1180
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v15    # "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    :cond_1
    move/from16 v0, p2

    float-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    .line 1181
    .restart local v2    # "left":I
    move/from16 v0, p1

    float-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int v1, v4, v1

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    .restart local v3    # "top":I
    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    move v13, v7

    move v14, v6

    .line 1183
    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    .restart local v15    # "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    goto :goto_0
.end method

.method private updateDivideAFPosition(IIZ)V
    .locals 5
    .param p1, "afPosX"    # I
    .param p2, "afPosY"    # I
    .param p3, "update"    # Z

    .prologue
    const v2, 0x7f0a0227

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1190
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(IIII)[Landroid/graphics/Point;

    move-result-object v0

    .line 1191
    .local v0, "focusArea":[Landroid/graphics/Point;
    if-eqz v0, :cond_1

    .line 1192
    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setDivideAfPosition(II)V

    .line 1193
    if-eqz p3, :cond_0

    .line 1194
    aget-object v1, v0, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfPosition(II)V

    .line 1196
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v1, :cond_1

    .line 1197
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, v0, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onAfPosChanged(IIZ)V

    .line 1200
    :cond_1
    return-void
.end method

.method private updateTouchAePosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 1205
    return-void
.end method

.method private updateTouchAfAePosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 1210
    return-void
.end method

.method private updateTouchAfPosition(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1213
    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    .line 1214
    iput p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    iget v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onAfPosChanged(IIZ)V

    .line 1219
    :cond_0
    return-void
.end method


# virtual methods
.method public getAfState()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    return v0
.end method

.method protected getCurrentTouchAfAePosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLastTouchAfAePosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    return-object v0
.end method

.method protected getMeteringAreas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getLastTouchAfAePosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getLastTouchAfAePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAEPosition(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getTouchAEPosition(II)Ljava/util/List;
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    const-string v1, "AeAfManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTouchAEPosition, x = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v16

    .line 753
    .local v16, "windowOrientation":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v1, :cond_1

    .line 754
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a0378

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 755
    .local v6, "focusWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a0377

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 760
    .local v7, "focusHeight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 761
    .local v4, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 763
    .local v5, "height":I
    if-eqz v16, :cond_0

    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    .line 764
    :cond_0
    div-int/lit8 v1, v6, 0x2

    sub-int v1, p1, v1

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    .line 765
    .local v2, "left":I
    div-int/lit8 v1, v7, 0x2

    sub-int v1, p2, v1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    .local v3, "top":I
    move-object/from16 v1, p0

    .line 767
    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    .line 774
    .local v15, "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    :goto_1
    return-object v15

    .line 757
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "focusWidth":I
    .end local v7    # "focusHeight":I
    .end local v15    # "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a02ea

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 758
    .restart local v6    # "focusWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a02e9

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .restart local v7    # "focusHeight":I
    goto :goto_0

    .line 769
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    :cond_2
    div-int/lit8 v1, v7, 0x2

    sub-int v1, p2, v1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    .line 770
    .restart local v2    # "left":I
    sub-int v1, v4, p1

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v1, v8

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    .restart local v3    # "top":I
    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    move v13, v7

    move v14, v6

    .line 772
    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    .restart local v15    # "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    goto :goto_1
.end method

.method public getTouchAeLockState()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeLockState:I

    return v0
.end method

.method protected isAeAfMoving()Z
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAeMoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAfMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAfMoving()Z
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAfState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObjectTrackingEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 152
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v1

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    const-string v1, "AeAfManagerImpl"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isStopPreviewPending()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    const-string v1, "AeAfManagerImpl"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderObjectTrackingAvailableFeature(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isObjectTrackingSupported()Z

    move-result v0

    goto :goto_0
.end method

.method protected isTouchAeMoving()Z
    .locals 2

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAfActive()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAfActive:Z

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    move v3, v4

    .line 382
    :cond_1
    :goto_1
    return v3

    .line 193
    :pswitch_0
    const-string v5, "AeAfManagerImpl"

    const-string v6, "MotionEvent.ACTION_DOWN"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    .line 197
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 198
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 199
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 200
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 202
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-eqz v5, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    iget v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    invoke-interface {v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAEEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 206
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 207
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->checkTouchAEBoundary(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 208
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    const-string v4, "AeAfManagerImpl"

    const-string v5, "af is processing, so return"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 212
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    .line 213
    iget-boolean v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-nez v5, :cond_3

    .line 214
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v6, 0x1c24

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 215
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    .line 216
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateDivideAFPosition(IIZ)V

    .line 228
    :cond_3
    :goto_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAeAfMoving()Z

    move-result v3

    if-nez v3, :cond_4

    .line 230
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v5, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAEPosition(IIZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->sendMSGToStartTouchAE()V

    .line 235
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAeAfMoving()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v3

    if-eq v3, v9, :cond_5

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isObjectTrackingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->hideFaceRect(Z)V

    goto/16 :goto_0

    .line 218
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->checkDivideAFBoundary(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 219
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_2

    .line 221
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    goto :goto_2

    .line 224
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    goto :goto_2

    .line 248
    :pswitch_1
    const-string v5, "AeAfManagerImpl"

    const-string v6, "MotionEvent.ACTION_UP"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 251
    .local v1, "posX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 252
    .local v2, "posY":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    iget v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    invoke-interface {v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 253
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->needToResetTouchAe()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isObjectTrackingEnabled()Z

    move-result v5

    if-nez v5, :cond_f

    .line 254
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FAST_REACTIVE_AF:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v5

    if-nez v5, :cond_a

    .line 255
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 256
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->removeAfRequest()V

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    .line 259
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 260
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelAutoFocus()V

    .line 263
    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V

    .line 264
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    .line 267
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAESupported()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-eq v5, v3, :cond_10

    .line 268
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEVSupported()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 269
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    .line 270
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v5

    if-eq v5, v3, :cond_c

    .line 271
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 273
    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showTouchEVSlider()V

    .line 275
    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleTouchAE(I)V

    .line 282
    :cond_e
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V

    .line 286
    :cond_f
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v5

    if-nez v5, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v8, :cond_13

    .line 288
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->checkDivideAFBoundary(II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    .line 290
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 278
    :cond_10
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v5

    if-nez v5, :cond_e

    .line 279
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    goto :goto_3

    .line 292
    :cond_11
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAEPosition(IIZ)Z

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    .line 294
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v3, :cond_12

    .line 296
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    .line 297
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeParameter()V

    .line 299
    :cond_12
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 303
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAfState()I

    move-result v5

    if-ne v5, v8, :cond_15

    .line 304
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->checkTouchAEBoundary(II)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 305
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    .line 306
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 308
    :cond_14
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateDivideAFPosition(IIZ)V

    .line 309
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V

    goto/16 :goto_1

    .line 313
    :cond_15
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    .line 315
    iget v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMoveThreshold:I

    if-ge v5, v6, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMoveThreshold:I

    if-ge v5, v6, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isObjectTrackingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-eq v5, v3, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-nez v5, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isObjectTrackingArea(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 318
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isObjectTrackingAFStarted()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 319
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopObjectTrackingAF()V

    goto/16 :goto_0

    .line 321
    :cond_16
    invoke-direct {p0, v1, v2, v4, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(IIII)[Landroid/graphics/Point;

    move-result-object v0

    .line 322
    .local v0, "focusArea":[Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 323
    aget-object v5, v0, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    aget-object v3, v0, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startObjectTrackingAF(FF)V

    goto/16 :goto_0

    .line 335
    .end local v0    # "focusArea":[Landroid/graphics/Point;
    .end local v1    # "posX":I
    .end local v2    # "posY":I
    :pswitch_2
    const-string v3, "AeAfManagerImpl"

    const-string v5, "MotionEvent.ACTION_CANCEL"

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAF()V

    .line 339
    :cond_17
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v3, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    goto/16 :goto_0

    .line 344
    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v3, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAeAfMoving()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    :cond_18
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 347
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 349
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMoveThreshold:I

    if-le v5, v6, :cond_1a

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMoveThreshold:I

    if-le v5, v6, :cond_1a

    .line 350
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 351
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 352
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 353
    iget-boolean v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    if-eqz v5, :cond_19

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    .line 356
    :cond_19
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    .line 369
    :cond_1a
    :goto_4
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v5

    if-nez v5, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAeMoving()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 371
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v5, v6, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAEPosition(IIZ)Z

    goto/16 :goto_0

    .line 357
    :cond_1b
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 358
    iget-boolean v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    if-eqz v5, :cond_1c

    .line 359
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    .line 361
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v8, :cond_1a

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v3, :cond_1a

    .line 363
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    .line 364
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeParameter()V

    goto :goto_4

    .line 372
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAfMoving()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v5, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateDivideAFPosition(IIZ)V

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onAutoExposure(I)V
    .locals 3
    .param p1, "aeMsg"    # I

    .prologue
    .line 387
    const-string v0, "AeAfManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoExposure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeWaitTouchAeResult()V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->touchAECompleted()V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAeTimerExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCaptureRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAF()V

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_0
.end method

.method public onAutoFocus(ILcom/samsung/android/camera/core/SemCamera;)V
    .locals 7
    .param p1, "afMsg"    # I
    .param p2, "semCamera"    # Lcom/samsung/android/camera/core/SemCamera;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 413
    const-string v0, "AeAfManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoFocusCallback.onAutoFocus : msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isHalfShutter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;->onAutoFocus()V

    .line 426
    :cond_3
    if-eq p1, v4, :cond_4

    if-nez p1, :cond_a

    .line 427
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->unlockAEAWB()V

    .line 430
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->unlockAWB()V

    .line 434
    :cond_7
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    .line 439
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eq v0, v5, :cond_9

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 442
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAESupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 443
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeResetTouchAfMessage()V

    .line 444
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startResetTouchAeTimer()V

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    .line 452
    :cond_9
    :goto_2
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->onAutoFocusComplete()V

    goto/16 :goto_0

    .line 435
    :cond_a
    if-ne p1, v5, :cond_8

    .line 436
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_1

    .line 446
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 447
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isDivideAFStarted()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-eq v0, v4, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v0

    if-nez v0, :cond_9

    .line 448
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startResetTouchAfTimer()V

    goto :goto_2
.end method

.method public onMultiAutoFocus([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onMultiAfChanged([B)V

    .line 465
    :cond_0
    return-void
.end method

.method public onObjectTrackingAutoFocus(Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;)V
    .locals 5
    .param p1, "objectTrackingData"    # Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 472
    const-string v0, "AeAfManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingAutoFocus : focusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusState:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v0, "AeAfManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingAutoFocus : focusedArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusedArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    const-string v0, "AeAfManagerImpl"

    const-string v1, "onPause state, so do not update tracking af"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-short v0, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusState:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isObjectTrackingAFStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFaceDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopFaceDetection()V

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    const-string v0, "AeAfManagerImpl"

    const-string v1, "during capturing, skip tracking ui update"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_0

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecorderStopping()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 490
    :cond_4
    const-string v0, "AeAfManagerImpl"

    const-string v1, "recording is starting or stopping, skip tracking ui update"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_0

    .line 494
    :cond_5
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;

    iget-object v1, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusedArea:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;->onTrackingAfRectChanged(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 502
    :cond_6
    iget-short v0, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusState:S

    if-ne v0, v4, :cond_7

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopObjectTrackingAF()V

    .line 505
    :cond_7
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_0
.end method

.method public onPhaseAutoFocus(SSSSS)V
    .locals 2
    .param p1, "mode"    # S
    .param p2, "goal_pos"    # S
    .param p3, "reliability"    # S
    .param p4, "lens_position_current"    # S
    .param p5, "driver_resolution"    # S

    .prologue
    .line 515
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v1, :cond_1

    .line 516
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 517
    :cond_0
    sub-int v0, p4, p2

    .line 518
    .local v0, "positionGap":I
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    invoke-interface {v1, v0, p3}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onPhaseAfChanged(II)V

    .line 523
    .end local v0    # "positionGap":I
    :cond_1
    return-void
.end method

.method public onShutterKeyPressed()V
    .locals 4

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startAFWaitTimer()V

    .line 536
    :cond_1
    return-void
.end method

.method public removeAfMessages()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method protected removeResetTouchAeTimer()V
    .locals 2

    .prologue
    .line 790
    const-string v0, "AeAfManagerImpl"

    const-string v1, "removeResetTouchAeTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 793
    return-void
.end method

.method protected removeResetTouchAfMessage()V
    .locals 2

    .prologue
    .line 796
    const-string v0, "AeAfManagerImpl"

    const-string v1, "removeResetTouchAfMessage"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 798
    return-void
.end method

.method public removeTouchAeMessage()V
    .locals 2

    .prologue
    .line 550
    const-string v0, "AeAfManagerImpl"

    const-string v1, "removeTouchAeMessage"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    .line 553
    return-void
.end method

.method protected removeWaitTouchAeResult()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 801
    const-string v0, "AeAfManagerImpl"

    const-string v1, "removeWaitTouchAeResult"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    :cond_0
    return-void
.end method

.method public resetAfIndicatorPosition()V
    .locals 4

    .prologue
    .line 557
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 558
    .local v0, "pX":I
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 560
    .local v1, "pY":I
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    const v3, 0x7f0a0109

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 562
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const v3, 0x7f0a0108

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 565
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfPosition(II)V

    .line 566
    return-void
.end method

.method public resetTouchAE()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-nez v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-eqz v0, :cond_0

    .line 577
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    .line 578
    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    .line 579
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetTouchAeParameter()V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEVSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->hideTouchEVSlider()V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    .line 586
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setDivideAFStarted(Z)V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 590
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->removeTouchAeRequest()V

    goto :goto_0
.end method

.method public resetTouchAF()V
    .locals 2

    .prologue
    .line 597
    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAF"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const-string v0, "AeAfManagerImpl"

    const-string v1, "Camera is destroying, so return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 603
    const-string v0, "AeAfManagerImpl"

    const-string v1, "current auto focus is locked, so do not resetTouchAF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    .line 609
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetTouchAf()V

    .line 612
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfActive(Z)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->hideTouchEVSlider()V

    goto :goto_0
.end method

.method public resetTouchAfIfNeeded()V
    .locals 2

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAF()V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public restartTouchAF()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 630
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopTouchAutoFocus()V

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    .line 636
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAutoFocusEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    iget v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfPosition(II)V

    .line 639
    iget v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(II)[Landroid/graphics/Point;

    move-result-object v0

    .line 640
    .local v0, "focusArea":[Landroid/graphics/Point;
    if-eqz v0, :cond_1

    .line 641
    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfPosition(II)V

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->setHalfShutter(Z)V

    .line 644
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    .line 646
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V

    .line 653
    .end local v0    # "focusArea":[Landroid/graphics/Point;
    :cond_1
    return-void
.end method

.method public setAeEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    .line 658
    return-void
.end method

.method public setAfEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    .line 663
    return-void
.end method

.method public setAfState(I)V
    .locals 1
    .param p1, "afState"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onAfStateChanged(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

    .line 668
    return-void
.end method

.method protected setDivideAFStarted(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 1038
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    .line 1039
    return-void
.end method

.method protected setTouchAeLockState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeLockState:I

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;->onAeStateChanged(I)V

    .line 149
    :cond_0
    return-void
.end method

.method protected setTouchAfActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAfActive:Z

    .line 187
    return-void
.end method

.method public setTouchAfPosition(II)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v16

    .line 678
    .local v16, "windowOrientation":I
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v1, :cond_1

    .line 679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a0378

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 680
    .local v6, "focusWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a0377

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 686
    .local v7, "focusHeight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 687
    .local v4, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 689
    .local v5, "height":I
    if-eqz v16, :cond_0

    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    .line 690
    :cond_0
    div-int/lit8 v1, v6, 0x2

    sub-int v1, p1, v1

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    .line 691
    .local v2, "left":I
    div-int/lit8 v1, v7, 0x2

    sub-int v1, p2, v1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    .local v3, "top":I
    move-object/from16 v1, p0

    .line 693
    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    .line 701
    .local v15, "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    :goto_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfActive(Z)V

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v8, 0x1

    invoke-interface {v1, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v15}, Lcom/sec/android/app/camera/engine/CommonEngine;->setTouchAfPosition(Ljava/util/List;)V

    .line 705
    return-void

    .line 682
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "focusWidth":I
    .end local v7    # "focusHeight":I
    .end local v15    # "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a02ea

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 683
    .restart local v6    # "focusWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a02e9

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .restart local v7    # "focusHeight":I
    goto :goto_0

    .line 695
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    :cond_2
    div-int/lit8 v1, v7, 0x2

    sub-int v1, p2, v1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    .line 696
    .restart local v2    # "left":I
    sub-int v1, v4, p1

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v1, v8

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    .restart local v3    # "top":I
    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    move v13, v7

    move v14, v6

    .line 698
    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    .restart local v15    # "areaList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Area;>;"
    goto :goto_1
.end method

.method public setTrackingAfListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;

    .line 710
    return-void
.end method

.method public startResetTouchAeTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 714
    const-string v0, "AeAfManagerImpl"

    const-string v1, "startResetTouchAETimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 719
    return-void
.end method

.method protected startResetTouchAfTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 808
    const-string v0, "AeAfManagerImpl"

    const-string v1, "startResetTouchAfTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 811
    return-void
.end method

.method protected touchAE(I)V
    .locals 4
    .param p1, "lockState"    # I

    .prologue
    const/4 v2, 0x1

    .line 814
    const-string v0, "AeAfManagerImpl"

    const-string v1, "touchAE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetFaceRect()V

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->disableFaceRect(Z)V

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeResetTouchAeTimer()V

    .line 820
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    .line 821
    if-ne p1, v2, :cond_0

    .line 822
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    .line 823
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getCurrentTouchAfAePosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getCurrentTouchAfAePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAEPosition(IIZ)Z

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 827
    return-void
.end method

.method public updateTouchAEPosition(IIZ)Z
    .locals 7
    .param p1, "aePosX"    # I
    .param p2, "aePosY"    # I
    .param p3, "update"    # Z

    .prologue
    const v4, 0x7f0a0227

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 722
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(IIII)[Landroid/graphics/Point;

    move-result-object v0

    .line 723
    .local v0, "focusArea":[Landroid/graphics/Point;
    if-eqz v0, :cond_2

    .line 724
    aget-object v3, v0, v1

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAePosition(II)V

    .line 725
    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfAePosition(II)V

    .line 726
    if-eqz p3, :cond_1

    .line 727
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    if-eqz v3, :cond_1

    .line 728
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget-object v5, v0, v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeLockState:I

    if-ne v6, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {v3, v4, v5, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;->onAePosChanged(IIZ)V

    .line 733
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v1

    goto :goto_0
.end method
