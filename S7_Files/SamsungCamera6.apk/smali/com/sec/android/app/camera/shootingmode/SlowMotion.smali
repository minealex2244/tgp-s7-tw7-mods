.class public Lcom/sec/android/app/camera/shootingmode/SlowMotion;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "SlowMotion.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;
    }
.end annotation


# static fields
.field private static final MAX_NUM_OF_EVENT_POINTS:I = 0x4

.field private static final MAX_NUM_OF_EVENT_RESULTS:I = 0x2

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_ICON:I = 0x1

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_TIME:I = 0x2

.field private static final SLOW_MOTION_RECORDING_BITRATE:I = 0xe4e1c0

.field private static final SLOW_MOTION_RECORDING_FPS:I

.field private static final TAG:Ljava/lang/String; = "SlowMotion"


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final RECORDING_MODE_TEXT_SHADOW:Z

.field private final RECORDING_MODE_TEXT_SHADOW_OFFSET:I

.field private final RECORDING_REC_ICON_LEFT_MARGIN:I

.field private final RECORDING_REC_ICON_WIDTH:I

.field private final RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_HEIGHT:I

.field private final RECORDING_REC_TIME_GROUP_POS_Y:I

.field private final RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_TEXT_HEIGHT:I

.field private final RECORDING_REC_TIME_TEXT_POS_X:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

.field private final RECORDING_STOP_BUTTON_POS_X:I

.field private final RECORDING_STOP_BUTTON_POS_Y:I

.field private final REC_INDICATOR_TEXT_SIZE:F

.field private final RIGHT_SIDE_MENU_POS_X:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_POS_Y:I

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SIDE_MENU_HEIGHT:I

.field private final SIDE_MENU_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkCount:I

.field private mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

.field private mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

.field private mEventResult:[I

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mNumOfEventResults:I

.field private mRecButton:Lcom/samsung/android/glview/GLButton;

.field private mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->SLOWMOTION_RECORDING_PREVIEW_FPS:I

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SLOW_MOTION_RECORDING_FPS:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 83
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    .line 84
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    .line 85
    const v2, 0x7f0b0188

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_WIDTH:I

    .line 86
    const v2, 0x7f0b0187

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_HEIGHT:I

    .line 87
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RIGHT_SIDE_MENU_POS_X:I

    .line 88
    const v2, 0x7f0b033f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->REC_INDICATOR_TEXT_SIZE:F

    .line 91
    const v2, 0x7f0b01d9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_WIDTH:F

    .line 92
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_POS_Y:I

    .line 93
    const v2, 0x7f0b005b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->BASEMENU_GROUP_ICON_GAP:F

    .line 94
    const v2, 0x7f0b034e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 97
    const v2, 0x7f0b00f2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    .line 98
    const v2, 0x7f0b00f1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    .line 99
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    .line 100
    const v2, 0x7f0b00f0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    .line 101
    const v2, 0x7f0b00f3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    .line 102
    const v2, 0x7f0b019a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    .line 103
    const v2, 0x7f0b0199

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_LEFT_MARGIN:I

    .line 104
    const v2, 0x7f0b019c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_POS_X:I

    .line 105
    const v2, 0x7f0b019b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    .line 106
    const v2, 0x7f0e0045

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    .line 107
    const v2, 0x7f0d003a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    .line 110
    const v2, 0x7f0b0197

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_STOP_BUTTON_POS_X:I

    .line 111
    const v2, 0x7f0b0198

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_STOP_BUTTON_POS_Y:I

    .line 113
    const v2, 0x7f0e0023

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    .line 114
    const v2, 0x7f0e0022

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_MODE_TEXT_SHADOW:Z

    .line 116
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 117
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 118
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    .line 129
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    .line 133
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBlinkCount:I

    .line 134
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 135
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    .line 136
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    .line 141
    const-string v0, "SlowMotion"

    const-string v1, "SlowMotion"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    :cond_0
    move v0, v1

    .line 114
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/SlowMotion;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SlowMotion;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->blinkRecIconIndicator(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/SlowMotion;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SlowMotion;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->blinkRecRemainTimeIndicator(Z)V

    return-void
.end method

.method private addSlowMotionEventResultToSEF()V
    .locals 9

    .prologue
    .line 756
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    if-lez v4, :cond_2

    .line 757
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 758
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 759
    .local v2, "eventPoint":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    if-ge v3, v4, :cond_1

    .line 760
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 761
    add-int/lit8 v2, v2, 0x1

    .line 762
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 764
    add-int/lit8 v2, v2, 0x1

    .line 765
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 767
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 768
    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 772
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

    .line 774
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "SlowMotion_Data"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 775
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    .line 774
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/16 v7, 0x890

    const/16 v8, 0x1000

    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->resetEventResult()V

    .line 781
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "eventPoint":I
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 776
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "eventPoint":I
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    .line 777
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "SlowMotion"

    const-string v5, "error while addSEFData"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private blinkRecIconIndicator(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;->removeMessages(I)V

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 788
    if-eqz p1, :cond_2

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 794
    :cond_1
    :goto_0
    return-void

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private blinkRecRemainTimeIndicator(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;->removeMessages(I)V

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 802
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    if-eqz p1, :cond_2

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 810
    :cond_1
    :goto_0
    return-void

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 813
    const-string v0, "SlowMotion"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;->access$000(Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;)V

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    .line 818
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->resetEventResult()V

    .line 819
    return-void
.end method

.method private resetEventResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 822
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    .line 823
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    aput v2, v1, v0

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 826
    :cond_0
    return-void
.end method

.method private showRecordingTimeIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMaxRecordingTimeLimitInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRemainRecordingTime:Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 833
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingTimeIndicatorShowAnimation(Lcom/samsung/android/glview/GLViewGroup;)V

    .line 847
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 841
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingTimeIndicatorShowAnimation(Lcom/samsung/android/glview/GLViewGroup;)V

    goto :goto_0

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private startRecIconIndicatorBlinking()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 850
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->blinkRecIconIndicator(Z)V

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 854
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

    .line 857
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    if-nez v1, :cond_0

    .line 858
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    .line 859
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

    .line 860
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 861
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

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0, v12}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 865
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 866
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

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    if-nez v1, :cond_0

    .line 870
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    .line 871
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

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 873
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

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 877
    invoke-virtual {p1, v9}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 878
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 879
    return-void
.end method

.method private startRecordingTimeIndicatorShowAnimation(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 4
    .param p1, "viewGroup"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 888
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 889
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 890
    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 6
    .param p1, "cmd"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 893
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

    .line 895
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion$1;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 937
    :goto_0
    return-void

    .line 897
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingButtonHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    goto :goto_0

    .line 906
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecordingButtonHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 914
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    .line 918
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 922
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 928
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_1

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRecordingTimeIndicator(J)V
    .locals 7
    .param p1, "ms"    # J

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 940
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 941
    .local v0, "seconds":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingTimeLimited()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 942
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 944
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMaxRecordingTimeLimitInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    .line 945
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBlinkCount:I

    .line 946
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 954
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBlinkCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBlinkCount:I

    if-lez v1, :cond_1

    .line 955
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->blinkRecRemainTimeIndicator(Z)V

    .line 957
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    if-eqz v1, :cond_1

    .line 958
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 964
    :cond_1
    :goto_1
    return-void

    .line 947
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMaxRecordingTimeLimitInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_3

    .line 948
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBlinkCount:I

    .line 949
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 950
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMaxRecordingTimeLimitInSecond:I

    sub-int/2addr v1, v0

    if-ne v1, v6, :cond_0

    .line 951
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBlinkCount:I

    goto :goto_0

    .line 962
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 636
    const-string v0, "SlowMotion"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 638
    const-string v0, "SlowMotion"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected isSnapShotAvailable()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 13
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v3, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v1, -0x1

    .line 161
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 162
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/SlowMotion;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/SlowMotion$RecordingHandler;

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v11, [I

    aput v3, v2, v12

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    .line 169
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    const v2, 0x895440

    sget v3, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SLOW_MOTION_RECORDING_FPS:I

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;-><init>(IIIIIIIII)V

    invoke-interface {v10, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRequestedMediaRecorderProfileInfo(Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v11}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlowMotionEventListener(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 181
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 182
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v12}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "SlowMotion"

    const-string v1, "onAnimationEnd - mStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->showRecordingTimeIndicator()V

    .line 200
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 204
    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/4 v2, 0x5

    .line 208
    const-string v0, "max-limit-recording-time-slowmotion"

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "max-limit-recording-time-slowmotion"

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->limitRecordingTimeBySystem(I)V

    .line 212
    :cond_0
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->SLOWMOTION_RECORDING_PREVIEW_FPS:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->SLOWMOTION_RECORDING_PREVIEW_FPS:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 213
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_RESOLUTION_1280X720_PREVIEW_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_RESOLUTION_1280X720_PREVIEW_HEIGHT:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewSize(II)V

    .line 214
    const/16 v0, 0x170e

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SLOW_MOTION_RECORDING_FPS:I

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1280x720"

    .line 216
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/16 v0, 0xbb9

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
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, -0x1

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(II)V

    .line 222
    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_2

    .line 224
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_3

    .line 227
    const-string v0, "phase-af"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_3
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v0, 0x1

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    const-string v1, "SlowMotion"

    const-string v2, "onClick : mStopButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    const-string v0, "SlowMotion"

    const-string v1, "onClick : mRecButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 245
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 25
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 250
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 251
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 254
    .local v20, "controllerButtonBaseX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v21, v0

    .line 256
    .local v21, "controllerButtonBaseY":I
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_WIDTH:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SIDE_MENU_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 259
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RIGHT_SIDE_MENU_POS_X:I

    sub-int v22, v20, v2

    .line 260
    .local v22, "recButtonX":I
    move/from16 v23, v21

    .line 263
    .local v23, "recButtonY":I
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    const v6, 0x7f0200e9

    const v7, 0x7f0200ea

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01f2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 277
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    const v6, 0x7f0200ef

    const v7, 0x7f0200f1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0228

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 293
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v11

    .line 294
    .local v11, "recTimeTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v6, v2, v11

    .line 296
    .local v6, "recTimeGroupWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 298
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 299
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 309
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v5, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 315
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201ca

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 318
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v9, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 319
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 328
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 329
    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    .line 328
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v24, v2, v3

    .line 331
    .local v24, "remainRecTimeTextWidth":F
    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v16, v2, v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v24

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float v5, v5, v24

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float v4, v4, v24

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v24

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 343
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v14, v2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 344
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    move-object/from16 v13, p1

    move/from16 v16, v24

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v2, :cond_1

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    .line 352
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 355
    return-void

    .line 305
    .end local v24    # "remainRecTimeTextWidth":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 350
    .restart local v24    # "remainRecTimeTextWidth":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    goto :goto_1
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    .line 372
    :goto_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraPreviewParameters()V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRequestedMediaRecorderProfileInfo(Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlowMotionEventListener(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 387
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->unregisterRecordingController()V

    .line 388
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->clear()V

    .line 389
    return-void

    .line 370
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

    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    const-string v1, "SlowMotion"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    :sswitch_0
    return v0

    .line 397
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 403
    const/4 v0, 0x0

    goto :goto_0

    .line 397
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

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    const-string v1, "SlowMotion"

    const-string v2, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_0
    return v0

    .line 412
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 432
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 414
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

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0

    .line 423
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

    .line 426
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

    .line 427
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0

    .line 412
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

.method public onMediaRecorderPreparedEvent(Landroid/media/MediaRecorder;)V
    .locals 2
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    .line 438
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMaxRecordingTimeLimitInSecond:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 439
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMaxRecordingTimeLimitInSecond:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 441
    :cond_0
    return-void
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 445
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
    .line 450
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    :cond_0
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecording()V

    .line 462
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRecordingEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 467
    packed-switch p1, :pswitch_data_0

    .line 501
    :goto_0
    :pswitch_0
    return-void

    .line 471
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording_over_60fps"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 483
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording_over_60fps"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 496
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a026b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->onStopRecordingRequested(Z)V

    .line 508
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a026a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    .line 514
    return-void
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 4
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 662
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 664
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    .line 673
    :cond_1
    :goto_0
    return-void

    .line 666
    :cond_2
    if-eqz p2, :cond_3

    .line 667
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecordingForced()V

    goto :goto_0

    .line 669
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0
.end method

.method public onRecordingTick(JJ)V
    .locals 5
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    const/4 v3, 0x0

    .line 518
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

    .line 520
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 529
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecIconIndicatorBlinking()V

    .line 530
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 527
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingTimeIndicator(J)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 1
    .param p1, "captureMethod"    # I

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 549
    return-void
.end method

.method public onSlowMotionEventResult([Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;)V
    .locals 4
    .param p1, "eventResult"    # [Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    .prologue
    const/4 v3, 0x2

    .line 553
    const-string v1, "SlowMotion"

    const-string v2, "onSlowMotionEventResult - E"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    array-length v1, p1

    if-le v1, v3, :cond_0

    .line 555
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    .line 560
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    if-ge v0, v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    mul-int/lit8 v2, v0, 0x2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;->startMillisecond:I

    aput v3, v1, v2

    .line 562
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    iget v3, v3, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;->endMillisecond:I

    aput v3, v1, v2

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 557
    .end local v0    # "i":I
    :cond_0
    array-length v1, p1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    goto :goto_0

    .line 564
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

    .line 565
    return-void
.end method

.method protected onStopProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 677
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

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 682
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 569
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

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 576
    :cond_1
    if-nez p1, :cond_2

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 580
    :cond_2
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x82

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 584
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v2, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 588
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_3

    .line 589
    const-string v2, "SlowMotion"

    const-string v3, "onTouch : SHUTTER_RECORDING_START"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 594
    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    move v0, v1

    .line 619
    goto :goto_0

    .line 598
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 601
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 602
    const-string v0, "SlowMotion"

    const-string v2, "return isRecording.."

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 603
    goto :goto_0

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    const-string v0, "SlowMotion"

    const-string v2, "return isAutoFocusing.."

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 607
    goto :goto_0

    .line 609
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_6

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    move v0, v1

    .line 611
    goto :goto_0

    .line 613
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 624
    const-string v0, "recording_mode"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 2

    .prologue
    .line 630
    const-string v0, "SlowMotion"

    const-string v1, "onVideoStoringCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->addSlowMotionEventResultToSEF()V

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method protected startRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 685
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->checkAvailableRecordingStorage()V

    .line 690
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording_over_60fps"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 703
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

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFSMax(I)V

    .line 710
    return-void
.end method

.method protected stopRecording()V
    .locals 4

    .prologue
    .line 713
    const-string v0, "SlowMotion"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 720
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getTotalRecordingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingTimeIndicator(J)V

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method protected stopRecordingForced()V
    .locals 4

    .prologue
    .line 734
    const-string v0, "SlowMotion"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 741
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getTotalRecordingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingTimeIndicator(J)V

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method
