.class public Lcom/sec/android/app/camera/shootingmode/SlowMotion;
.super Ljava/lang/Object;
.source "SlowMotion.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;


# static fields
.field private static final MAX_NUM_OF_EVENT_POINTS:I = 0x4

.field private static final MAX_NUM_OF_EVENT_RESULTS:I = 0x2

.field private static final SLOW_MOTION_RECORDING_BITRATE:I = 0xe4e1c0

.field private static final SLOW_MOTION_RECORDING_FPS:I = 0xf0

.field private static final TAG:Ljava/lang/String; = "SlowMotion"


# instance fields
.field private final BASEMENU_GROUP_WIDTH:F

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final RIGHT_SIDE_MENU_POS_X:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_POS_Y:I

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SIDE_MENU_HEIGHT:I

.field private final SIDE_MENU_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

.field private mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mEventResult:[I

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mNumOfEventResults:I

.field private mRecButton:Lcom/samsung/android/glview/GLButton;

.field private mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

.field private mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .param p3, "recordingController"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    .line 79
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    .line 80
    const v0, 0x7f0a01b2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_WIDTH:I

    .line 81
    const v0, 0x7f0a01b1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_HEIGHT:I

    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RIGHT_SIDE_MENU_POS_X:I

    .line 85
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->BASEMENU_GROUP_WIDTH:F

    .line 86
    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 87
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 88
    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_WIDTH:F

    .line 89
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_POS_Y:I

    .line 91
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 92
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 93
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    .line 102
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    .line 103
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    .line 105
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 106
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 107
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 109
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 112
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 113
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 114
    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 115
    const-string v0, "SlowMotion"

    const-string v1, "SlowMotion"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method private addSlowMotionEventResultToSEF()V
    .locals 9

    .prologue
    .line 670
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    if-lez v4, :cond_2

    .line 671
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 672
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 673
    .local v2, "eventPoint":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    if-ge v3, v4, :cond_1

    .line 674
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 675
    add-int/lit8 v2, v2, 0x1

    .line 676
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 678
    add-int/lit8 v2, v2, 0x1

    .line 679
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 681
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 682
    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 686
    :cond_1
    const-string v4, "SlowMotion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addSlowMotionEventResultToSEF : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "SlowMotion_Data"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 689
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    .line 688
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/16 v7, 0x890

    const/16 v8, 0x1000

    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->resetEventResult()V

    .line 695
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "eventPoint":I
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 690
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "eventPoint":I
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    .line 691
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "SlowMotion"

    const-string v5, "error while addSEFData"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 698
    const-string v0, "SlowMotion"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->resetEventResult()V

    .line 700
    return-void
.end method

.method private resetEventResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 703
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    .line 704
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    aput v2, v1, v0

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_0
    return-void
.end method

.method private startRecordingButtonHideAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 13
    .param p1, "button"    # Lcom/samsung/android/glview/GLButton;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v8, 0x23a

    const/4 v0, 0x0

    .line 710
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    if-nez v1, :cond_0

    .line 711
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    .line 712
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 713
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 714
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v3, v0

    move v4, v11

    move v5, v0

    move-object v6, p1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0, v12}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 718
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 719
    return-void
.end method

.method private startRecordingButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 13
    .param p1, "button"    # Lcom/samsung/android/glview/GLButton;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const v11, 0x3f35c28f    # 0.71f

    const/16 v8, 0x23a

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 722
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    if-nez v1, :cond_0

    .line 723
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    .line 724
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v3, v12

    move v4, v11

    move v5, v12

    move-object v6, p1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 730
    invoke-virtual {p1, v9}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 731
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 732
    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 5
    .param p1, "cmd"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 735
    const-string v0, "SlowMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingLayout : cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion$1;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 768
    :goto_0
    return-void

    .line 739
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingButtonHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    goto :goto_0

    .line 748
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingButtonHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    .line 755
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancelRecording()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "SlowMotion"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 122
    const-string v0, "SlowMotion"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapShotAvailable()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->register(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v2, [I

    aput v4, v1, v3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const-string v1, "1280x720"

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlowMotionEventListener(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 173
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 174
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "SlowMotion"

    const-string v1, "onAnimationEnd - mStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingTimeLimited()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitInSecond()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->startTimer(ZI)V

    .line 189
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 193
    return-void
.end method

.method public onBuildMediaRecorderProfile(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .prologue
    .line 197
    const v0, 0x895440

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoEncodingBitrate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->recordingMode(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 199
    const/16 v0, 0xf0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoFrameRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 200
    return-void
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    .line 205
    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 6
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const v5, 0x3a980

    const/16 v4, 0xe

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 209
    const-string v0, "max-limit-recording-time-slowmotion"

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v1, "max-limit-recording-time-slowmotion"

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    .line 213
    :cond_0
    invoke-virtual {p1, v5, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 214
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderPreviewWidthFeature(II)I

    move-result v0

    .line 215
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderPreviewHeightFeature(II)I

    move-result v1

    .line 214
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewSize(II)V

    .line 216
    const/16 v0, 0x170e

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1280x720"

    .line 218
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v0, 0xbb9

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1280x720"

    .line 220
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, -0x1

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(II)V

    .line 224
    :cond_1
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_2

    .line 226
    const-string v0, "phase-af"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_2
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposureMeterString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 14
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 233
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 234
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 236
    const/4 v9, 0x0

    .line 237
    .local v9, "baseMenuWeightValue":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->BASEMENU_GROUP_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    .line 239
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v1, v2

    add-float/2addr v1, v9

    float-to-int v10, v1

    .line 240
    .local v10, "controllerButtonBaseX":I
    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_POS_Y:I

    .line 242
    .local v11, "controllerButtonBaseY":I
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 245
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RIGHT_SIDE_MENU_POS_X:I

    sub-int v12, v10, v1

    .line 246
    .local v12, "recButtonX":I
    move v13, v11

    .line 249
    .local v13, "recButtonY":I
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    int-to-float v3, v12

    int-to-float v4, v13

    const v5, 0x7f0200fb

    const v6, 0x7f0200fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 263
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    int-to-float v3, v12

    int-to-float v4, v13

    const v5, 0x7f020101

    const v6, 0x7f020103

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090236

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 279
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setRotatable(Z)V

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const v2, 0x7f0201dc

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setRecordingIconImage(I)V

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 284
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    .line 303
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraPreviewParameters()V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlowMotionEventListener(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->unregister()V

    .line 315
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->clear()V

    .line 316
    return-void

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecordingForced()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    const-string v1, "SlowMotion"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    :sswitch_0
    return v0

    .line 324
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 330
    const/4 v0, 0x0

    goto :goto_0

    .line 324
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    const-string v1, "SlowMotion"

    const-string v2, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return v0

    .line 339
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :sswitch_0
    const-string v1, "SlowMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : keyCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0

    .line 350
    :sswitch_1
    const-string v1, "SlowMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : keyCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :sswitch_2
    const-string v1, "SlowMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : keyCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public onNewVideoLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecording()V

    .line 391
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRecordingEvent(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 396
    packed-switch p1, :pswitch_data_0

    .line 431
    :goto_0
    :pswitch_0
    return-void

    .line 398
    :pswitch_1
    const-string v0, "232"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    .line 412
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 413
    const-string v0, "231"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    .line 425
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 426
    const-string v0, "231"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f09027b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->onStopRecordingRequested(Z)V

    .line 438
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f09027a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 443
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    .line 444
    return-void
.end method

.method public onRecordingRestricted(ZZ)V
    .locals 4
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 452
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    .line 463
    :cond_1
    :goto_0
    return-void

    .line 456
    :cond_2
    if-eqz p2, :cond_3

    .line 457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecordingForced()V

    goto :goto_0

    .line 459
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0
.end method

.method public onRecordingTick(JJ)V
    .locals 3
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    .line 467
    const-string v0, "SlowMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingTick : elapsedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateMaxRecordingTime(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 1
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 494
    return-void
.end method

.method public onSlowMotionEventResult([Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;)V
    .locals 4
    .param p1, "eventResult"    # [Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    .prologue
    const/4 v3, 0x2

    .line 498
    const-string v1, "SlowMotion"

    const-string v2, "onSlowMotionEventResult - E"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    array-length v1, p1

    if-le v1, v3, :cond_0

    .line 500
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    .line 505
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    if-ge v0, v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    mul-int/lit8 v2, v0, 0x2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;->startMillisecond:I

    aput v3, v1, v2

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    iget v3, v3, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;->endMillisecond:I

    aput v3, v1, v2

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    .end local v0    # "i":I
    :cond_0
    array-length v1, p1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    goto :goto_0

    .line 509
    .restart local v0    # "i":I
    :cond_1
    const-string v1, "SlowMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSlowMotionEventResult - X, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method

.method public onStopProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 514
    const-string v0, "SlowMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 519
    return-void
.end method

.method public onStopRecordingRequested(Z)V
    .locals 4
    .param p1, "forced"    # Z

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 531
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 535
    const-string v0, "SlowMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 542
    :cond_1
    if-nez p1, :cond_2

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 546
    :cond_2
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x82

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 550
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 557
    goto :goto_0

    .line 559
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 560
    goto :goto_0

    .line 562
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 563
    goto :goto_0

    .line 567
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 570
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 571
    goto :goto_0

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    const-string v0, "1122"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    move v0, v1

    .line 579
    goto :goto_0

    .line 576
    :cond_4
    const-string v0, "1102"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 568
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 589
    const-string v0, "recording_mode"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 2

    .prologue
    .line 595
    const-string v0, "SlowMotion"

    const-string v1, "onVideoStoringCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->addSlowMotionEventResultToSEF()V

    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public startRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 606
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setMaxVideoFileSize()V

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFSMax(I)V

    .line 625
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 629
    const-string v0, "SlowMotion"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public stopRecordingForced()V
    .locals 4

    .prologue
    .line 650
    const-string v0, "SlowMotion"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method
