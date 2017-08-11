.class public Lcom/sec/android/app/camera/shootingmode/HyperMotion;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "HyperMotion.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;
    }
.end annotation


# static fields
.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HyperMotion"


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

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

.field private mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

.field private mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mRecButton:Lcom/samsung/android/glview/GLButton;

.field private mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mSystemTime:I

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 73
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    .line 74
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_HEIGHT:I

    .line 75
    const v0, 0x7f0b0188

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SIDE_MENU_WIDTH:I

    .line 76
    const v0, 0x7f0b0187

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SIDE_MENU_HEIGHT:I

    .line 77
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RIGHT_SIDE_MENU_POS_X:I

    .line 80
    const v0, 0x7f0b01d9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SHUTTER_BUTTON_WIDTH:F

    .line 81
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SHUTTER_BUTTON_POS_Y:I

    .line 82
    const v0, 0x7f0b005b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->BASEMENU_GROUP_ICON_GAP:F

    .line 83
    const v0, 0x7f0b034e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 86
    const v0, 0x7f0b0197

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_STOP_BUTTON_POS_X:I

    .line 87
    const v0, 0x7f0b0198

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_STOP_BUTTON_POS_Y:I

    .line 90
    const v0, 0x7f0b033f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->REC_INDICATOR_TEXT_SIZE:F

    .line 91
    const v0, 0x7f0b00f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    .line 92
    const v0, 0x7f0b00f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    .line 93
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    .line 94
    const v0, 0x7f0b00f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    .line 95
    const v0, 0x7f0b00f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    .line 96
    const v0, 0x7f0b019a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_WIDTH:I

    .line 97
    const v0, 0x7f0b0199

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_LEFT_MARGIN:I

    .line 98
    const v0, 0x7f0b019c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_POS_X:I

    .line 99
    const v0, 0x7f0b019b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    .line 100
    const v0, 0x7f0e0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    .line 101
    const v0, 0x7f0d003a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    .line 105
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 106
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 107
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mSystemTime:I

    .line 119
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    .line 120
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    .line 121
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 123
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion$1;-><init>(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->clear()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    .prologue
    .line 68
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mSystemTime:I

    return v0
.end method

.method static synthetic access$308(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    .prologue
    .line 68
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mSystemTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mSystemTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/HyperMotion;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/HyperMotion;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->updateSystemTimeIndicator(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->startRecIconIndicatorBlinking()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/HyperMotion;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/HyperMotion;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->blinkRecIconIndicator(Z)V

    return-void
.end method

.method private blinkRecIconIndicator(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;->removeMessages(I)V

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 722
    if-eqz p1, :cond_2

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 728
    :cond_1
    :goto_0
    return-void

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;->access$200(Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;)V

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

    .line 733
    return-void
.end method

.method private showRecordingTimeIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 739
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->startRecordingTimeIndicatorShowAnimation(Lcom/samsung/android/glview/GLViewGroup;)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private startRecIconIndicatorBlinking()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 747
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->blinkRecIconIndicator(Z)V

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 751
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

    .line 754
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    if-nez v1, :cond_0

    .line 755
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    .line 756
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 757
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 758
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

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

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonHideAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0, v12}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 762
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 763
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

    .line 766
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    if-nez v1, :cond_0

    .line 767
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    .line 768
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 770
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

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

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 774
    invoke-virtual {p1, v9}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 775
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 776
    return-void
.end method

.method private startRecordingTimeIndicatorShowAnimation(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 4
    .param p1, "viewGroup"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 785
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 786
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 787
    return-void
.end method

.method private startSystemTimeTick()V
    .locals 4

    .prologue
    .line 790
    const-string v1, "HyperMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSystemTimeTick : elapsedTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mSystemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion$2;-><init>(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 815
    .local v0, "systemTimeTickThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 816
    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 6
    .param p1, "cmd"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 819
    const-string v0, "HyperMotion"

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

    .line 820
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion$3;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 858
    :goto_0
    return-void

    .line 822
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->startRecordingButtonHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->startRecordingButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    goto :goto_0

    .line 831
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->startRecordingButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->startRecordingButtonHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    .line 840
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 844
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 850
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_1

    .line 820
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
    .locals 5
    .param p1, "ms"    # J

    .prologue
    .line 861
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 863
    .local v0, "seconds":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method private updateSystemTimeIndicator(I)V
    .locals 3
    .param p1, "sec"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 868
    return-void
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 583
    const-string v0, "HyperMotion"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 585
    const-string v0, "HyperMotion"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    .line 593
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mSystemTime:I

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected isSnapShotAvailable()Z
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 164
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/HyperMotion;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/HyperMotion$RecordingHandler;

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 169
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mSystemTime:I

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideCamcorderResolution(I)V

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 180
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 185
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 188
    return-void

    .line 177
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_0

    .line 166
    nop

    :array_0
    .array-data 4
        0x3
        0x96
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 195
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
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mControlButtonShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "HyperMotion"

    const-string v1, "onAnimationEnd - mStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->showRecordingTimeIndicator()V

    .line 204
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->startSystemTimeTick()V

    .line 207
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 212
    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 4
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v0, 0x7530

    const/4 v3, 0x5

    const/4 v2, -0x1

    .line 216
    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 217
    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewSize(II)V

    .line 218
    const/16 v0, 0x170e

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1920x1080"

    .line 220
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v0, 0xbb9

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1920x1080"

    .line 223
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/16 v0, 0x170d

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRecordingMotionSpeed()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionSpeed(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "ois"

    const-string v1, "center"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(II)V

    .line 229
    :cond_0
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_1

    .line 231
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "dynamic-range-control"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v0, 0x1

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const-string v1, "HyperMotion"

    const-string v2, "onClick : mStopButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :goto_0
    return v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->stopRecording()V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    const-string v0, "HyperMotion"

    const-string v1, "onClick : mRecButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 24
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 255
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 256
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 259
    .local v20, "controllerButtonBaseX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v21, v0

    .line 261
    .local v21, "controllerButtonBaseY":I
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SIDE_MENU_WIDTH:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SIDE_MENU_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RIGHT_SIDE_MENU_POS_X:I

    sub-int v22, v20, v2

    .line 265
    .local v22, "recButtonX":I
    move/from16 v23, v21

    .line 268
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

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01f2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 281
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

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0228

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecordingControllerGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 297
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v11

    .line 298
    .local v11, "recTimeTextWidth":F
    const-string v2, " ()"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v2

    add-float v16, v11, v2

    .line 299
    .local v16, "systemTimeTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    add-float v6, v2, v16

    .line 301
    .local v6, "recTimeGroupWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 303
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 304
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    sub-float v4, v4, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    add-float v4, v4, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 315
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v5, v11

    sub-float v5, v5, v16

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v11

    add-float v5, v5, v16

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 321
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0200bd

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 323
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v2, v2

    add-float v9, v2, v16

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 325
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 330
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 334
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v14, v2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 336
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    .line 341
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 349
    return-void

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    sub-float v4, v4, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    add-float v4, v4, v16

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 327
    :cond_1
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v9, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 328
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    goto/16 :goto_1

    .line 338
    :cond_2
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v2, v2

    add-float v14, v2, v11

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    .line 339
    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    goto/16 :goto_2
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 360
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingControlAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->stopRecordingForced()V

    .line 366
    :goto_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraPreviewParameters()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->unregisterRecordingController()V

    .line 386
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->clear()V

    .line 387
    return-void

    .line 364
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->cancelRecording()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    const-string v1, "HyperMotion"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_0
    :sswitch_0
    return v0

    .line 395
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 401
    const/4 v0, 0x0

    goto :goto_0

    .line 395
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

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    const-string v1, "HyperMotion"

    const-string v2, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_0
    return v0

    .line 410
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 430
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    :sswitch_0
    const-string v1, "HyperMotion"

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

    .line 413
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->stopRecording()V

    goto :goto_0

    .line 421
    :sswitch_1
    const-string v1, "HyperMotion"

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

    .line 424
    :sswitch_2
    const-string v1, "HyperMotion"

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

    .line 425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->stopRecording()V

    goto :goto_0

    .line 410
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
    .line 435
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    .line 436
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mMaxRecordingTimeLimitInSecond:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 437
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mMaxRecordingTimeLimitInSecond:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 439
    :cond_0
    return-void
.end method

.method public onMenuSelected(II)Z
    .locals 4
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v0, 0x0

    .line 443
    const-string v1, "HyperMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMenuSelected: menuId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/16 v1, 0x170d

    if-ne p1, v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    .line 446
    const-string v1, "HyperMotion"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRecordingMotionSpeed(I)V

    .line 450
    const/4 v0, 0x1

    goto :goto_0
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
    .line 457
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const-string v0, "Z110"

    const/16 v1, 0x170d

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 459
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRecordingMotionSpeed()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    :cond_0
    const/4 v0, 0x0

    .line 471
    :goto_0
    return v0

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->startRecording()V

    .line 471
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRecordingEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 476
    packed-switch p1, :pswitch_data_0

    .line 510
    :goto_0
    :pswitch_0
    return-void

    .line 480
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 492
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    goto :goto_0

    .line 495
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 505
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    goto :goto_0

    .line 476
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
    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a026b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->onStopRecordingRequested(Z)V

    .line 517
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a026a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->stopRecording()V

    .line 523
    return-void
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 2
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mRecButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 611
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 613
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->cancelRecording()V

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 615
    :cond_2
    if-eqz p2, :cond_3

    .line 616
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->stopRecordingForced()V

    goto :goto_0

    .line 618
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->stopRecording()V

    goto :goto_0
.end method

.method public onRecordingTick(JJ)V
    .locals 5
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    const/4 v3, 0x0

    .line 527
    const-string v0, "HyperMotion"

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

    .line 529
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->updateRecordingTimeIndicator(J)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 1
    .param p1, "captureMethod"    # I

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 554
    return-void
.end method

.method protected onStopProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 626
    const-string v0, "HyperMotion"

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

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 631
    return-void
.end method

.method protected onStopRecordingRequested(Z)V
    .locals 1
    .param p1, "forced"    # Z

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingControlAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    if-eqz p1, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->stopRecordingForced()V

    .line 644
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->stopRecording()V

    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->cancelRecording()V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 558
    const-string v0, "HyperMotion"

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

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 565
    :cond_1
    if-nez p1, :cond_2

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 569
    :cond_2
    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 573
    const-string v0, "recording_mode"

    const-string v1, "5"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method protected startRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 647
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 652
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->checkAvailableRecordingStorage()V

    .line 653
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 666
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 670
    :cond_1
    return-void
.end method

.method protected stopRecording()V
    .locals 2

    .prologue
    .line 673
    const-string v0, "HyperMotion"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getTotalRecordingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->updateRecordingTimeIndicator(J)V

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    .line 686
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mSystemTime:I

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method protected stopRecordingForced()V
    .locals 2

    .prologue
    .line 695
    const-string v0, "HyperMotion"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->getTotalRecordingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->updateRecordingTimeIndicator(J)V

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    .line 709
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mSystemTime:I

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method
