.class public Lcom/sec/android/app/camera/shootingmode/Recording;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "Recording.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;
    }
.end annotation


# static fields
.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_ICON:I = 0x1

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Recording"

.field private static final VIEW_MODE_INDICATOR_TIMEOUT:I = 0x7d0


# instance fields
.field private BASEMENU_GROUP_HEIGHT:I

.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final CAF_BUTTON_DIAMETER:I

.field private final CAF_BUTTON_POS_X:I

.field private final CAF_BUTTON_POS_Y:I

.field private final CAF_BUTTON_POS_Y_BOTTOM:I

.field private final COVER_BACK_BUTTON_POS_X:F

.field private final COVER_BACK_BUTTON_POS_Y:F

.field private final COVER_BACK_BUTTON_POS_Y_RTL:F

.field private final COVER_CAF_BUTTON_POS_X:F

.field private final COVER_CAF_BUTTON_POS_Y:F

.field private final COVER_INDICATOR_POS_X:F

.field private final COVER_RECORDING_INDICATOR_GROUP_HEIGHT:F

.field private final COVER_RECORDING_PAUSE_BUTTON_POS_X:F

.field private final COVER_RECORDING_PAUSE_BUTTON_POS_Y:F

.field private final COVER_RECORDING_REC_TIME_TEXT_COLOR:I

.field private final COVER_RECORDING_STOP_BUTTON_POS_X:F

.field private final COVER_RECORDING_STOP_BUTTON_POS_Y:F

.field private final COVER_REC_ICON_WIDTH:F

.field private final COVER_REC_SIZE_TEXT_SIZE:F

.field private final COVER_SNAPSHOT_BUTTON_POS_Y:F

.field private final COVER_VIEW_HEIGHT:F

.field private final INDICATOR_GROUP_HEIGHT:I

.field private final INDICATOR_GROUP_POS_X:I

.field private final INDICATOR_GROUP_POS_Y:I

.field private final INDICATOR_GROUP_WIDTH:I

.field private final KEYBOARD_COVER_RECORDING_INDICATOR_POS_X:F

.field private NAVIGATOR_HEIGHT:I

.field private final PROGRESSBAR_HEIGHT:I

.field private final PROGRESSBAR_POS_X:I

.field private final PROGRESSBAR_SIDE_MARGIN:I

.field private final PROGRESSBAR_WIDTH:I

.field private final PROGRESS_GROUP_HEIGHT:I

.field private final PROGRESS_GROUP_POS_X:I

.field private final PROGRESS_GROUP_POS_X_PORTRAIT:I

.field private final PROGRESS_GROUP_POS_Y:I

.field private final PROGRESS_GROUP_WIDTH:I

.field private final PROGRESS_MAX_SIZE_POS_X:I

.field private final PROGRESS_SIZE_TEXT_WIDTH:I

.field private final RECORDING_MODE_TEXT_SHADOW:Z

.field private final RECORDING_MODE_TEXT_SHADOW_OFFSET:I

.field private final RECORDING_PAUSE_BUTTON_DIAMETER:I

.field private final RECORDING_PAUSE_BUTTON_WIDTH:I

.field private final RECORDING_REC_ICON_LEFT_MARGIN:I

.field private final RECORDING_REC_ICON_WIDTH:I

.field private final RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_HEIGHT:I

.field private final RECORDING_REC_TIME_GROUP_POS_Y:I

.field private final RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_TEXT_HEIGHT:I

.field private final RECORDING_REC_TIME_TEXT_POS_X:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

.field private final RECORDING_SIZE_TEXT_STROKE_COLOR:I

.field private final RECORDING_SNAPSHOT_MARGIN_Y:I

.field private final REC_INDICATOR_TEXT_SIZE:F

.field private final REC_SIZE_TEXT_SIZE:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_POS_Y:I

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SNAPSHOT_BUTTON_POS_Y:I

.field private final SNAPSHOT_BUTTON_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkCount:I

.field private mCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mCoverBackButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCurRecSize:Lcom/samsung/android/glview/GLText;

.field private mCurrentMultiWindowMode:I

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private final mHideViewModeIndicator:Ljava/lang/Runnable;

.field private mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIsRecordingTimeLimited:Z

.field private mLastWindowOrientation:I

.field private mMaxRecSize:Lcom/samsung/android/glview/GLText;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mProgress:I

.field private mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

.field private mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private final mShutterSnapshotRatio:F

.field private mSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private final mSnapshotShutterRatio:F

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

.field private pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final translationDeltaY:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const v7, 0x7f0b02c0

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 76
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    .line 77
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    .line 78
    const v2, 0x7f0b033f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    .line 79
    const v2, 0x7f0b0191

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_SIZE_TEXT_SIZE:I

    .line 82
    const v2, 0x7f0b01d9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    .line 83
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_POS_Y:I

    .line 84
    const v2, 0x7f0b005b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_ICON_GAP:F

    .line 85
    const v2, 0x7f0b034e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 87
    const v2, 0x7f0b00f2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    .line 88
    const v2, 0x7f0b00f1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    .line 89
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    .line 90
    const v2, 0x7f0b00ef

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    .line 91
    const v2, 0x7f0b00f0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    .line 92
    const v2, 0x7f0b00f3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    .line 93
    const v2, 0x7f0b019a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    .line 94
    const v2, 0x7f0b0199

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_LEFT_MARGIN:I

    .line 95
    const v2, 0x7f0b019c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_POS_X:I

    .line 96
    const v2, 0x7f0b019b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    .line 97
    const v2, 0x7f0e0045

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    .line 98
    const v2, 0x7f0d003a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    .line 99
    const v2, 0x7f0d000f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    .line 101
    const v2, 0x7f0b02ff

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_WIDTH:I

    .line 102
    const v2, 0x7f0b02fb

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_HEIGHT:I

    .line 103
    const v2, 0x7f0b00ec

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_POS_X:I

    .line 104
    const v2, 0x7f0b00ed

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_POS_Y:I

    .line 106
    const v2, 0x7f0b018e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    .line 107
    const v2, 0x7f0b018a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    .line 108
    const v2, 0x7f0b018b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X:I

    .line 109
    const v2, 0x7f0b018c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X_PORTRAIT:I

    .line 110
    const v2, 0x7f0b018d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    .line 111
    const v2, 0x7f0b0192

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    .line 112
    const v2, 0x7f0b0190

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    .line 113
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_POS_X:I

    .line 114
    const v2, 0x7f0b0193

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    .line 115
    const v2, 0x7f0b018f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    .line 116
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_MAX_SIZE_POS_X:I

    .line 118
    const v2, 0x7f0b0196

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    .line 119
    const v2, 0x7f0b034f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    .line 120
    const v2, 0x7f0b0189

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    .line 122
    const v2, 0x7f0b0194

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_Y:I

    .line 123
    const v2, 0x7f0b0195

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    .line 125
    const v2, 0x7f0b0028

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    .line 126
    const v2, 0x7f0b033e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y_BOTTOM:I

    .line 127
    const v2, 0x7f0b033d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    .line 128
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y_BOTTOM:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y:I

    .line 130
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_VIEW_HEIGHT:F

    .line 131
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_VIEW_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const v3, 0x7f0b02be

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:F

    .line 132
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_Y:F

    .line 133
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:F

    .line 134
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    const v3, 0x7f0b01d2

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x7f0b02b8

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_Y:F

    .line 135
    const v2, 0x7f0b02b1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_X:F

    .line 136
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x7f0b02b4

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x7f0b02b0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y:F

    .line 137
    const v2, 0x7f0b02b6

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y_RTL:F

    .line 138
    const v2, 0x7f0b02bd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_SNAPSHOT_BUTTON_POS_Y:F

    .line 139
    const v2, 0x7f0b02ba

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:F

    .line 140
    const v2, 0x7f0b02bb

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:F

    .line 141
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:F

    const v3, 0x7f0b02bc

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_INDICATOR_POS_X:F

    .line 142
    const v2, 0x7f0b02b7

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:F

    .line 143
    const v2, 0x7f0d000b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    .line 144
    const v2, 0x7f0b02b9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_X:F

    .line 145
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_Y:F

    .line 147
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const v3, 0x7f0b0106

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const v3, 0x7f0b0105

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_INDICATOR_POS_X:F

    .line 148
    const v2, 0x7f0e0023

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    .line 149
    const v2, 0x7f0e0022

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    .line 150
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    .line 151
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    .line 152
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    .line 153
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    .line 156
    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 157
    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 158
    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 159
    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 160
    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 169
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Recording$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Recording$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Recording;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    .line 199
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    .line 201
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    .line 204
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIsRecordingTimeLimited:Z

    .line 208
    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 212
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurrentMultiWindowMode:I

    .line 216
    return-void

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Recording;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Recording;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Recording;->blinkRecIconIndicator(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Recording;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Recording;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Recording;->blinkRecTimeIndicator(Z)V

    return-void
.end method

.method private blinkRecIconIndicator(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->removeMessages(I)V

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    if-eqz p1, :cond_2

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 900
    :cond_1
    :goto_0
    return-void

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 893
    :cond_3
    if-eqz p1, :cond_4

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 896
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private blinkRecTimeIndicator(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->removeMessages(I)V

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 909
    if-eqz p1, :cond_2

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 922
    :cond_1
    :goto_0
    return-void

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 915
    :cond_3
    if-eqz p1, :cond_4

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 918
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 925
    const-string v0, "Recording"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->access$000(Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;)V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 929
    return-void
.end method

.method private hideCAFButton()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 932
    const-string v0, "Recording"

    const-string v1, "hideCAFButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 940
    :cond_1
    return-void
.end method

.method private hideCoverRecordingLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 943
    const-string v0, "Recording"

    const-string v1, "hideCoverRecordingLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 954
    return-void
.end method

.method private hideRecordingButtonWithAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 957
    const-string v0, "Recording"

    const-string v1, "hideRecordingButtonWithAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v3, v1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    .line 965
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 970
    return-void

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    goto :goto_0

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v3, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    goto :goto_0
.end method

.method private hideRecordingLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 974
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 983
    return-void
.end method

.method private init()V
    .locals 56

    .prologue
    .line 986
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v43, v0

    .line 987
    .local v43, "controllerButtonBaseX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v44, v0

    .line 988
    .local v44, "controllerButtonBaseY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    float-to-int v0, v2

    move/from16 v42, v0

    .line 989
    .local v42, "controllerButtonBaseWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_ICON_GAP:F

    float-to-int v0, v2

    move/from16 v45, v0

    .line 990
    .local v45, "controllerButtonGap":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v46, 0x0

    .line 992
    .local v46, "isGUIRotatable":Z
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v11

    .line 993
    .local v11, "recTimeTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v6, v2, v11

    .line 995
    .local v6, "recTimeGroupWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 998
    if-eqz v46, :cond_0

    .line 999
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_1_1_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1016
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v5, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1022
    :cond_0
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const v7, 0x7f0201c6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1025
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const v7, 0x7f0201c5

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1028
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v9, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1029
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1041
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1042
    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    .line 1041
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v51, v2, v3

    .line 1043
    .local v51, "recRemainTimeTextWidth":F
    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v16, v2, v51

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1044
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v14, v2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1045
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v19, v2, v3

    move/from16 v16, v51

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1048
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v2, :cond_10

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    .line 1053
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1055
    if-eqz v46, :cond_1

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v51

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float v5, v5, v51

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float v4, v4, v51

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v51

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1064
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1070
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1071
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const-string v18, "0K"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v19, v0

    const v2, 0x7f0d0010

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    move/from16 v21, v0

    invoke-direct/range {v12 .. v21}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1076
    new-instance v12, Lcom/samsung/android/glview/GLProgressBar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_POS_X:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v15, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const v18, 0x7f02018d

    const v19, 0x7f02018e

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    .line 1078
    new-instance v12, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v14, v2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const-string v18, ""

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_SIZE_TEXT_SIZE:I

    int-to-float v0, v2

    move/from16 v19, v0

    const v2, 0x7f0d0010

    .line 1079
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    move/from16 v21, v0

    invoke-direct/range {v12 .. v21}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1083
    if-eqz v46, :cond_2

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X_PORTRAIT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X_PORTRAIT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1089
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1097
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1098
    new-instance v12, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_POS_X:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_POS_Y:I

    int-to-float v15, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_WIDTH:I

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v0, v2

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v18}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    .line 1101
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setClipping(Z)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1108
    :cond_3
    const/16 v49, 0x0

    .line 1109
    .local v49, "pauseButtonX":I
    const/16 v50, 0x0

    .line 1111
    .local v50, "pauseButtonY":I
    if-eqz v46, :cond_4

    .line 1112
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    sub-int v2, v42, v2

    div-int/lit8 v2, v2, 0x2

    add-int v49, v43, v2

    .line 1113
    add-int v2, v44, v42

    add-int v50, v2, v45

    .line 1114
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_4

    .line 1115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v50, v50, v2

    .line 1119
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1120
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    move/from16 v0, v49

    int-to-float v14, v0

    move/from16 v0, v50

    int-to-float v15, v0

    const v16, 0x7f0200f8

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 1124
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 1136
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    move/from16 v0, v49

    int-to-float v14, v0

    move/from16 v0, v50

    int-to-float v15, v0

    const v16, 0x7f0200fb

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 1141
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0202

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1149
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_6

    .line 1151
    const/16 v52, 0x0

    .line 1152
    .local v52, "snapshotButtonX":I
    const/16 v53, 0x0

    .line 1154
    .local v53, "snapshotButtonY":I
    if-eqz v46, :cond_5

    .line 1155
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int v2, v42, v2

    div-int/lit8 v2, v2, 0x2

    add-int v52, v43, v2

    .line 1156
    sub-int v2, v44, v45

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int v53, v2, v3

    .line 1159
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 1160
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move/from16 v0, v52

    int-to-float v14, v0

    move/from16 v0, v53

    int-to-float v15, v0

    const v16, 0x7f0200f4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    .line 1164
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a012f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0130

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1178
    .end local v52    # "snapshotButtonX":I
    .end local v53    # "snapshotButtonY":I
    :cond_6
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1179
    :cond_7
    const/16 v40, 0x0

    .line 1180
    .local v40, "afButtonX":I
    const/16 v41, 0x0

    .line 1182
    .local v41, "afButtonY":I
    if-eqz v46, :cond_8

    .line 1183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    move/from16 v40, v0

    .line 1184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y:I

    move/from16 v41, v0

    .line 1186
    :cond_8
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move/from16 v0, v40

    int-to-float v14, v0

    move/from16 v0, v41

    int-to-float v15, v0

    const v16, 0x7f020023

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a003d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1199
    .end local v40    # "afButtonX":I
    .end local v41    # "afButtonY":I
    :cond_9
    const/16 v54, 0x0

    .line 1200
    .local v54, "stopButtonX":I
    const/16 v55, 0x0

    .line 1202
    .local v55, "stopButtonY":I
    if-eqz v46, :cond_a

    .line 1203
    move/from16 v54, v43

    .line 1204
    move/from16 v55, v44

    .line 1205
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_a

    .line 1206
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v55, v55, v2

    .line 1209
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 1210
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move/from16 v0, v54

    int-to-float v14, v0

    move/from16 v0, v55

    int-to-float v15, v0

    const v16, 0x7f0200f0

    const v17, 0x7f0200f2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 1214
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0228

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1225
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1226
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:F

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v21

    .line 1227
    .local v21, "coverRecTimeTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:F

    add-float v16, v2, v21

    .line 1229
    .local v16, "coverRecTimeGroupWidth":F
    new-instance v12, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:F

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_INDICATOR_POS_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v21

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:F

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1233
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f020086

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1235
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7f020085

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1237
    new-instance v17, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:F

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:F

    move/from16 v22, v0

    const/4 v2, 0x0

    .line 1238
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v17 .. v26}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1247
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:F

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v31, v2, v3

    .line 1248
    .local v31, "coverRemainRecTimeTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:F

    add-float v26, v2, v31

    .line 1249
    .local v26, "coverRemainRecTimeGroupWidth":F
    new-instance v22, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:F

    move/from16 v27, v0

    invoke-direct/range {v22 .. v27}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_INDICATOR_POS_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v31

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:F

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1253
    new-instance v27, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_ICON_WIDTH:F

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_INDICATOR_GROUP_HEIGHT:F

    move/from16 v32, v0

    const/4 v2, 0x0

    .line 1254
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_REC_SIZE_TEXT_SIZE:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_REC_TIME_TEXT_COLOR:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-direct/range {v27 .. v36}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1263
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_Y:F

    move/from16 v35, v0

    const v36, 0x7f0200f7

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1276
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_Y:F

    move/from16 v35, v0

    const v36, 0x7f0200ef

    const v37, 0x7f0200f1

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0228

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1288
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_Y:F

    move/from16 v35, v0

    const v36, 0x7f0200f9

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0202

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1300
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1301
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_X:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y_RTL:F

    move/from16 v35, v0

    const v36, 0x7f020084

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 1309
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1315
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_b

    .line 1316
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_SNAPSHOT_BUTTON_POS_Y:F

    move/from16 v35, v0

    const v36, 0x7f0200f3

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a012f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0130

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1330
    :cond_b
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_c

    .line 1331
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_X:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_Y:F

    move/from16 v35, v0

    const v36, 0x7f020023

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a003d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1361
    .end local v16    # "coverRecTimeGroupWidth":F
    .end local v21    # "coverRecTimeTextWidth":F
    .end local v26    # "coverRemainRecTimeGroupWidth":F
    .end local v31    # "coverRemainRecTimeTextWidth":F
    :cond_c
    :goto_8
    return-void

    .line 990
    .end local v6    # "recTimeGroupWidth":F
    .end local v11    # "recTimeTextWidth":F
    .end local v46    # "isGUIRotatable":Z
    .end local v49    # "pauseButtonX":I
    .end local v50    # "pauseButtonY":I
    .end local v51    # "recRemainTimeTextWidth":F
    .end local v54    # "stopButtonX":I
    .end local v55    # "stopButtonY":I
    :cond_d
    const/16 v46, 0x1

    goto/16 :goto_0

    .line 1006
    .restart local v6    # "recTimeGroupWidth":F
    .restart local v11    # "recTimeTextWidth":F
    .restart local v46    # "isGUIRotatable":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_1

    .line 1012
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_1

    .line 1051
    .restart local v51    # "recRemainTimeTextWidth":F
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    goto/16 :goto_2

    .line 1122
    .restart local v49    # "pauseButtonX":I
    .restart local v50    # "pauseButtonY":I
    :cond_11
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    move/from16 v0, v49

    int-to-float v14, v0

    move/from16 v0, v50

    int-to-float v15, v0

    const v16, 0x7f0200f7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_3

    .line 1138
    :cond_12
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v13

    move/from16 v0, v49

    int-to-float v14, v0

    move/from16 v0, v50

    int-to-float v15, v0

    const v16, 0x7f0200f9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_4

    .line 1162
    .restart local v52    # "snapshotButtonX":I
    .restart local v53    # "snapshotButtonY":I
    :cond_13
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move/from16 v0, v52

    int-to-float v14, v0

    move/from16 v0, v53

    int-to-float v15, v0

    const v16, 0x7f0200f3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_5

    .line 1212
    .end local v52    # "snapshotButtonX":I
    .end local v53    # "snapshotButtonY":I
    .restart local v54    # "stopButtonX":I
    .restart local v55    # "stopButtonY":I
    :cond_14
    new-instance v12, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move/from16 v0, v54

    int-to-float v14, v0

    move/from16 v0, v55

    int-to-float v15, v0

    const v16, 0x7f0200ef

    const v17, 0x7f0200f1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_6

    .line 1305
    .restart local v16    # "coverRecTimeGroupWidth":F
    .restart local v21    # "coverRecTimeTextWidth":F
    .restart local v26    # "coverRemainRecTimeGroupWidth":F
    .restart local v31    # "coverRemainRecTimeTextWidth":F
    :cond_15
    new-instance v32, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_X:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y:F

    move/from16 v35, v0

    const v36, 0x7f020084

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v32 .. v39}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    goto/16 :goto_7

    .line 1343
    .end local v16    # "coverRecTimeGroupWidth":F
    .end local v21    # "coverRecTimeTextWidth":F
    .end local v26    # "coverRemainRecTimeGroupWidth":F
    .end local v31    # "coverRemainRecTimeTextWidth":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_INDICATOR_POS_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v11

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->KEYBOARD_COVER_RECORDING_INDICATOR_POS_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v51

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1352
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const v3, 0x7f0b0106

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    sub-float v48, v2, v3

    .line 1353
    .local v48, "keyboardCoverStopButtonX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v47, v48, v2

    .line 1354
    .local v47, "keyboardCoverPauseButtonX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v54

    int-to-float v3, v0

    sub-float v3, v48, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v49

    int-to-float v3, v0

    sub-float v3, v47, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v49

    int-to-float v3, v0

    sub-float v3, v47, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1357
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_c

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v49

    int-to-float v3, v0

    sub-float v3, v47, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_8
.end method

.method private makeRecordingAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v10, 0x23a

    const/4 v11, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1404
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1405
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x12c

    const/16 v4, 0x82

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1406
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0x12c

    const/16 v7, 0x82

    move v2, v0

    move v3, v1

    .line 1407
    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1408
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1410
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_0

    .line 1411
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1412
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1414
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x1d6

    const/16 v4, 0x64

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1415
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1417
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1420
    :cond_0
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1421
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1423
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v10, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1424
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1427
    return-void
.end method

.method private makeRecordingAnimation(I)V
    .locals 19
    .param p1, "orientation"    # I

    .prologue
    .line 1364
    const/4 v10, 0x0

    .local v10, "fromSnapShotX":F
    const/4 v14, 0x0

    .local v14, "toSnapshotX":F
    const/4 v11, 0x0

    .local v11, "fromSnapShotY":F
    const/4 v15, 0x0

    .line 1365
    .local v15, "toSnapshotY":F
    const/4 v12, 0x0

    .local v12, "fromStopX":F
    const/16 v16, 0x0

    .local v16, "toStopX":F
    const/4 v13, 0x0

    .local v13, "fromStopY":F
    const/16 v17, 0x0

    .line 1367
    .local v17, "toStopY":F
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 1368
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    div-float v11, v1, v2

    .line 1369
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    div-float v13, v1, v2

    .line 1375
    :goto_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x12c

    const/16 v3, 0x82

    new-instance v4, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v4}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    const/16 v7, 0x12c

    const/16 v8, 0x82

    .line 1378
    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1381
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v1, :cond_1

    .line 1382
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    new-instance v8, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v8}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v9, 0x23a

    move v1, v10

    move v2, v14

    move v3, v11

    move v4, v15

    invoke-static/range {v1 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x1d6

    const/16 v3, 0x64

    new-instance v4, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v4}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v7, 0x23a

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1391
    :cond_1
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    new-instance v8, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v8}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v9, 0x23a

    move v1, v12

    move/from16 v2, v16

    move v3, v13

    move/from16 v4, v17

    invoke-static/range {v1 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x23a

    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v7, 0x23a

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1400
    return-void

    .line 1371
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mShutterSnapshotRatio:F

    div-float v10, v1, v2

    .line 1372
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->translationDeltaY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapshotShutterRatio:F

    div-float v12, v1, v2

    goto/16 :goto_0
.end method

.method private pauseRecording()V
    .locals 2

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 1431
    const-string v0, "Recording"

    const-string v1, "Return pauseRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :goto_0
    return-void

    .line 1434
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1435
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1436
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    goto :goto_0
.end method

.method private relocateRecordingLayout(III)V
    .locals 28
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1442
    const v24, 0x7f0b0266

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_HEIGHT:I

    .line 1447
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_HEIGHT:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->NAVIGATOR_HEIGHT:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v4, v0

    .line 1462
    .local v4, "baseMenuWeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v25

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v17

    .line 1463
    .local v17, "recTimeTextWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v25

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v24

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v24, v24, v25

    const-string v25, " / "

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v27, v0

    .line 1464
    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v27

    mul-float v26, v26, v27

    .line 1463
    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v25

    add-float v16, v24, v25

    .line 1466
    .local v16, "recRemainTimeTextWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    move/from16 v25, v0

    add-int v13, v24, v25

    .line 1467
    .local v13, "progressGroupSize":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    .line 1471
    .local v12, "progressBarSize":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v8

    .line 1472
    .local v8, "currentWidth":I
    if-le v13, v8, :cond_4

    .line 1473
    move v13, v8

    .line 1474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    move/from16 v25, v0

    add-int v24, v24, v25

    mul-int/lit8 v24, v24, 0x2

    sub-int v12, v13, v24

    .line 1475
    const/4 v14, 0x0

    .line 1476
    .local v14, "progressX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    move/from16 v24, v0

    sub-int v9, v13, v24

    .line 1482
    .local v9, "maxSizeX":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 1483
    const v24, 0x7f0b0264

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v7, v0

    .line 1488
    .local v7, "controllerIconGap":I
    :goto_2
    if-eqz p1, :cond_0

    const/16 v24, 0x2

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1489
    :cond_0
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    int-to-float v0, v4

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->NAVIGATOR_HEIGHT:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v5, v0

    .line 1490
    .local v5, "controllerButtonBaseX":I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v6, v0

    .line 1491
    .local v6, "controllerButtonBaseY":I
    int-to-float v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v10, v0

    .line 1492
    .local v10, "pauseButtonX":I
    int-to-float v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    add-float v24, v24, v25

    int-to-float v0, v7

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v11, v0

    .line 1493
    .local v11, "pauseButtonY":I
    int-to-float v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1494
    .local v22, "snapShotButtonX":I
    sub-int v24, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    move/from16 v25, v0

    sub-int v23, v24, v25

    .line 1495
    .local v23, "snapShotButtonY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    .line 1496
    .local v2, "afButtonX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y:I

    .line 1497
    .local v3, "afButtonY":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v17

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1498
    .local v18, "recTimeX":I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_INDICATOR_TEXT_SIZE:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1499
    .local v19, "recTimeY":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v16

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1500
    .local v20, "remainRecTimeX":I
    move/from16 v21, v19

    .line 1501
    .local v21, "remainRecTimeY":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    .line 1518
    .local v15, "progressY":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v24, v0

    int-to-float v0, v5

    move/from16 v25, v0

    int-to-float v0, v6

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v24, v0

    int-to-float v0, v10

    move/from16 v25, v0

    int-to-float v0, v11

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v24, v0

    int-to-float v0, v10

    move/from16 v25, v0

    int-to-float v0, v11

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v24, v0

    int-to-float v0, v2

    move/from16 v25, v0

    int-to-float v0, v3

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1526
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->checkAvailableRecordingStorage()V

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v24

    sget-object v25, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIsRecordingTimeLimited:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 1528
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 1534
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v24, v0

    int-to-float v0, v13

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    move-object/from16 v24, v0

    int-to-float v0, v12

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLProgressBar;->setSize(FF)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    move-object/from16 v24, v0

    int-to-float v0, v9

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLText;->moveBaseLayoutAbsolute(FF)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v24, v0

    int-to-float v0, v14

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 1539
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/camera/shootingmode/Recording;->makeRecordingAnimation(I)V

    .line 1540
    return-void

    .line 1444
    .end local v2    # "afButtonX":I
    .end local v3    # "afButtonY":I
    .end local v4    # "baseMenuWeight":I
    .end local v5    # "controllerButtonBaseX":I
    .end local v6    # "controllerButtonBaseY":I
    .end local v7    # "controllerIconGap":I
    .end local v8    # "currentWidth":I
    .end local v9    # "maxSizeX":I
    .end local v10    # "pauseButtonX":I
    .end local v11    # "pauseButtonY":I
    .end local v12    # "progressBarSize":I
    .end local v13    # "progressGroupSize":I
    .end local v14    # "progressX":I
    .end local v15    # "progressY":I
    .end local v16    # "recRemainTimeTextWidth":F
    .end local v17    # "recTimeTextWidth":F
    .end local v18    # "recTimeX":I
    .end local v19    # "recTimeY":I
    .end local v20    # "remainRecTimeX":I
    .end local v21    # "remainRecTimeY":I
    .end local v22    # "snapShotButtonX":I
    .end local v23    # "snapShotButtonY":I
    :cond_3
    const v24, 0x7f0b0265

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_HEIGHT:I

    goto/16 :goto_0

    .line 1478
    .restart local v4    # "baseMenuWeight":I
    .restart local v8    # "currentWidth":I
    .restart local v12    # "progressBarSize":I
    .restart local v13    # "progressGroupSize":I
    .restart local v16    # "recRemainTimeTextWidth":F
    .restart local v17    # "recTimeTextWidth":F
    :cond_4
    sub-int v24, v8, v13

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v14, v0

    .line 1479
    .restart local v14    # "progressX":I
    const/4 v9, 0x0

    .restart local v9    # "maxSizeX":I
    goto/16 :goto_1

    .line 1485
    :cond_5
    const v24, 0x7f0b005b

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v7, v0

    .restart local v7    # "controllerIconGap":I
    goto/16 :goto_2

    .line 1503
    :cond_6
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v5, v0

    .line 1504
    .restart local v5    # "controllerButtonBaseX":I
    sub-int v24, p3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->NAVIGATOR_HEIGHT:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v6, v0

    .line 1505
    .restart local v6    # "controllerButtonBaseY":I
    sub-int v24, v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    .line 1506
    .restart local v10    # "pauseButtonX":I
    int-to-float v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v11, v0

    .line 1507
    .restart local v11    # "pauseButtonY":I
    int-to-float v0, v5

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    add-float v24, v24, v25

    int-to-float v0, v7

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1508
    .restart local v22    # "snapShotButtonX":I
    int-to-float v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1509
    .restart local v23    # "snapShotButtonY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y_BOTTOM:I

    .line 1510
    .restart local v2    # "afButtonX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    .line 1511
    .restart local v3    # "afButtonY":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v17

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    move/from16 v25, v0

    sub-int v18, v24, v25

    .line 1512
    .restart local v18    # "recTimeX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    move/from16 v24, v0

    sub-int v24, p3, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    move/from16 v25, v0

    sub-int v19, v24, v25

    .line 1513
    .restart local v19    # "recTimeY":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v16

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_ICON_WIDTH:I

    move/from16 v25, v0

    sub-int v20, v24, v25

    .line 1514
    .restart local v20    # "remainRecTimeX":I
    move/from16 v21, v19

    .line 1515
    .restart local v21    # "remainRecTimeY":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    .restart local v15    # "progressY":I
    goto/16 :goto_3

    .line 1527
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v24

    if-nez v24, :cond_2

    .line 1531
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v24, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v24, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_4
.end method

.method private resetProgressBar()V
    .locals 2

    .prologue
    .line 1543
    const-string v0, "Recording"

    const-string v1, "resetProgressBar"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    if-lez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 1547
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1549
    :cond_0
    return-void
.end method

.method private resetRecordingLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1552
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1554
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1555
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 1557
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1561
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1563
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 1565
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 1570
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 1573
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_3

    .line 1574
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 1575
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 1578
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1580
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 1583
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    .line 1584
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1585
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    .line 1588
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_6

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1592
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 1593
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1596
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_7

    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1598
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    .line 1601
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    if-eqz v0, :cond_8

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgressBar;->clear()V

    .line 1603
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    .line 1606
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_9

    .line 1607
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1608
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    .line 1611
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_a

    .line 1612
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 1613
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 1616
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_b

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 1618
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 1621
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_c

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 1623
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    .line 1626
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_d

    .line 1627
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 1628
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 1631
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->init()V

    .line 1632
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 1636
    const-string v0, "Recording"

    const-string v1, "Return resumeRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :goto_0
    return-void

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 1640
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    goto :goto_0
.end method

.method private setRecordingButtonsDim(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1648
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 1652
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1655
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 1656
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1659
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    .line 1660
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1662
    :cond_3
    return-void
.end method

.method private showCAFButton()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1665
    const-string v0, "Recording"

    const-string v1, "showCAFButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1668
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1672
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isObjectTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showRecordingTextAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1679
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1680
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1687
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1705
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setViewModeIndicator(I)V

    .line 1708
    :cond_1
    return-void

    .line 1690
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1691
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1692
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1695
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1697
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1698
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1700
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1702
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private startRecIconIndicatorBlinking()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1711
    const-string v0, "Recording"

    const-string v1, "startRecIconIndicatorBlinking"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1714
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Recording;->blinkRecIconIndicator(Z)V

    .line 1716
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1720
    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1723
    const-string v0, "Recording"

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1726
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIsRecordingTimeLimited:Z

    if-eqz v0, :cond_1

    .line 1727
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1728
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    .line 1729
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1730
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1732
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_0

    .line 1733
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showRecordingTextAnimation()V

    .line 1773
    :goto_0
    return-void

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1738
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1739
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1742
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_2

    .line 1743
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showRecordingTextAnimation()V

    goto :goto_0

    .line 1745
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1749
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIsRecordingTimeLimited:Z

    if-eqz v0, :cond_5

    .line 1750
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1751
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    .line 1752
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1753
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1755
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_4

    .line 1756
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showRecordingTextAnimation()V

    goto :goto_0

    .line 1758
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1761
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1763
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1764
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1766
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1767
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showRecordingTextAnimation()V

    goto/16 :goto_0

    .line 1769
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private terminateRecording(Z)V
    .locals 4
    .param p1, "forced"    # Z

    .prologue
    .line 1776
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Recording$2;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingState:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1806
    :goto_0
    :pswitch_0
    return-void

    .line 1782
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1783
    if-eqz p1, :cond_0

    .line 1784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->cancelRecording()V

    .line 1795
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideRecordingLayout()V

    goto :goto_0

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleCancelVideoRecording()V

    goto :goto_1

    .line 1789
    :cond_1
    if-eqz p1, :cond_2

    .line 1790
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecordingForced()V

    goto :goto_1

    .line 1792
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_1

    .line 1798
    :pswitch_2
    if-eqz p1, :cond_3

    .line 1799
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    .line 1801
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideRecordingLayout()V

    goto :goto_0

    .line 1776
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProgressBarText(J)V
    .locals 11
    .param p1, "bytes"    # J

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x400

    .line 1809
    const-string v2, "Recording"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProgressBarText : bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isVideoCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 1812
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    .line 1813
    .local v0, "mMaxSize":J
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    .line 1814
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 1816
    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1817
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    .line 1820
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    div-long v4, p1, v6

    div-long/2addr v4, v6

    cmp-long v2, v4, v8

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1822
    .end local v0    # "mMaxSize":J
    :cond_1
    return-void

    .line 1820
    .restart local v0    # "mMaxSize":J
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "K"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 11
    .param p1, "cmd"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    .prologue
    const/high16 v10, 0x41200000    # 10.0f

    const/16 v3, -0x181

    const-wide/16 v8, 0x400

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1825
    const-string v0, "Recording"

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

    .line 1827
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Recording$2;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1985
    :cond_0
    :goto_0
    return-void

    .line 1829
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1830
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1834
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1835
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1837
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1838
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1840
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1841
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1843
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 1847
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 1848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1850
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 1853
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    div-long/2addr v0, v8

    div-long/2addr v0, v8

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    div-long/2addr v2, v8

    div-long/2addr v2, v8

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1860
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1861
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLProgressBar;->setVisibility(I)V

    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1872
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1874
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1875
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1877
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1878
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1880
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1881
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1883
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1884
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1885
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1888
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1891
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto/16 :goto_0

    .line 1857
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    div-long/2addr v2, v8

    div-long/2addr v2, v8

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1858
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    div-long/2addr v2, v8

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "K"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1865
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLProgressBar;->setVisibility(I)V

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1867
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1868
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_2

    .line 1897
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1898
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1899
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1901
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1902
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1903
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1904
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1905
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1907
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1919
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 1909
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1910
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1912
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1913
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1914
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_4

    .line 1922
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1927
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1928
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 1929
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1933
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1935
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1936
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1937
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1939
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1958
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 1941
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1944
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1945
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1946
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_10

    .line 1947
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1951
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1953
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_5

    .line 1963
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_11

    .line 1964
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1965
    const-string v0, "Recording"

    const-string v1, "PauseButton animation was not finished, so cancel the animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->cancelAnimation()V

    .line 1969
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1970
    const-string v0, "Recording"

    const-string v1, "StopButton animation was not finished, so cancel the animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->cancelAnimation()V

    .line 1973
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_13

    .line 1974
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1975
    const-string v0, "Recording"

    const-string v1, "SnapShotButton animation was not finished, so cancel the animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->cancelAnimation()V

    .line 1980
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 1827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateRecordingTime(J)V
    .locals 7
    .param p1, "ms"    # J

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    .line 1988
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 1990
    .local v0, "seconds":I
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIsRecordingTimeLimited:Z

    if-eqz v1, :cond_5

    .line 1991
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1992
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1997
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_3

    .line 1998
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    .line 2005
    :cond_0
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    if-lez v1, :cond_1

    .line 2006
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->blinkRecTimeIndicator(Z)V

    .line 2008
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    if-eqz v1, :cond_1

    .line 2009
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2019
    :cond_1
    :goto_2
    return-void

    .line 1994
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1999
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_4

    .line 2000
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    goto :goto_1

    .line 2001
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    sub-int/2addr v1, v0

    if-ne v1, v5, :cond_0

    .line 2002
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    goto :goto_1

    .line 2013
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2014
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 2016
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 723
    const-string v0, "Recording"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 725
    const-string v0, "Recording"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_0
    return-void

    .line 729
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 730
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    .line 733
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingButtonsDim(Z)V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method protected isSnapShotAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 738
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v1, :cond_1

    .line 763
    :cond_0
    :goto_0
    return v0

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    .line 750
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEffectRecordingRestricted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_WIDTH:I

    if-nez v1, :cond_3

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_HEIGHT:I

    if-eqz v1, :cond_0

    .line 759
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_WIDTH:I

    if-nez v1, :cond_4

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_HEIGHT:I

    if-eqz v1, :cond_0

    .line 763
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x0

    .line 235
    const-string v2, "Recording"

    const-string v3, "onActivate"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Recording;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 237
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v2

    if-lez v2, :cond_3

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v1

    .line 243
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v0

    .line 249
    .local v0, "screenHeight":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getDisplayRotation()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mLastWindowOrientation:I

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurrentMultiWindowMode:I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->resetRecordingLayout()V

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->relocateRecordingLayout(III)V

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurrentMultiWindowMode:I

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v3, 0x8

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 266
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x240

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 268
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Recording;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Recording$RecordingHandler;

    .line 270
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->startRecording()V

    .line 275
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 276
    return-void

    .line 245
    .end local v0    # "screenHeight":I
    .end local v1    # "screenWidth":I
    :cond_3
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    .line 246
    .restart local v1    # "screenWidth":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    .restart local v0    # "screenHeight":I
    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    const/4 v0, 0x1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 285
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    const-string v1, "Recording"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    const-string v1, "Recording"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showCAFButton()V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 318
    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_3

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->snapShotButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 330
    :cond_3
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 334
    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v2, 0x2a

    .line 339
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 342
    const-string v0, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->limitRecordingTimeBySystem(I)V

    .line 355
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 356
    const-string v0, "phase-af"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "dynamic-range-control"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1
    :goto_1
    return-void

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 346
    const-string v0, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->limitRecordingTimeBySystem(I)V

    goto :goto_0

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 350
    const-string v0, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->limitRecordingTimeBySystem(I)V

    goto :goto_0

    .line 359
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_5

    .line 360
    const-string v0, "phase-af"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_5
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "dynamic-range-control"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v1, :cond_2

    .line 369
    :cond_0
    const-string v1, "Recording"

    const-string v2, "Call onClick after Clear!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1
    :goto_0
    return v0

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    const-string v1, "Recording"

    const-string v2, "onClick = mCAFButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    const-string v1, "Recording"

    const-string v2, "onClick = mCoverCAFButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 387
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 388
    :cond_5
    const-string v1, "Recording"

    const-string v2, "onClick = mSnapShotButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 390
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->onShutterKeyReleased(I)Z

    goto :goto_0

    .line 392
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 393
    :cond_7
    const-string v1, "Recording"

    const-string v2, "onClick = mStopButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto/16 :goto_0

    .line 399
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 400
    :cond_9
    const-string v1, "Recording"

    const-string v2, "onClick = mPauseButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseRecording()V

    goto/16 :goto_0

    .line 409
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 410
    :cond_b
    const-string v1, "Recording"

    const-string v2, "onClick = mResumeButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->resumeRecording()V

    goto/16 :goto_0

    .line 416
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 417
    const-string v1, "Recording"

    const-string v2, "onClick = mCoverBackButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    .line 426
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 431
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 432
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 434
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 435
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 436
    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 438
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->init()V

    .line 439
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->makeRecordingAnimation()V

    .line 440
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 2

    .prologue
    .line 444
    const-string v0, "Recording"

    const-string v1, "onImageStoringCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 450
    const-string v0, "Recording"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->terminateRecording(Z)V

    .line 455
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideCAFButton()V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->resetProgressBar()V

    .line 469
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->unregisterRecordingController()V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 472
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->clear()V

    .line 473
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 477
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    const-string v1, "Recording"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    return v0

    .line 481
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 491
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 485
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    const-string v1, "Recording"

    const-string v2, "returning capture key because recording snapshot is unavailable"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 496
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    const-string v1, "Recording"

    const-string v2, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    :goto_0
    return v0

    .line 500
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 520
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0

    .line 509
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 510
    const-string v1, "Recording"

    const-string v2, "returning capture key because recording snapshot is unavailable"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 515
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0

    .line 500
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onLayoutChanged(III)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 526
    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChanged : orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurrentMultiWindowMode:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mLastWindowOrientation:I

    if-eq v0, p1, :cond_4

    .line 534
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->terminateRecording(Z)V

    .line 536
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/Recording;->relocateRecordingLayout(III)V

    goto :goto_0
.end method

.method public onMediaRecorderPreparedEvent(Landroid/media/MediaRecorder;)V
    .locals 2
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 541
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 542
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 544
    :cond_0
    return-void
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 548
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
    .line 553
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    const-string v0, "Z101"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEffectRecordingRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const-string v0, "Z029"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_0
    :goto_0
    const-string v0, "Z070"

    const/16 v1, 0xbbf

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    const-string v0, "Z030"

    const-string v1, "Video"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_1
    return-void

    .line 559
    :cond_2
    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEffectRecordingRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    const-string v0, "Z028"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    return v0
.end method

.method public onRecordingEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    const/16 v3, 0x2a

    const/4 v2, 0x0

    .line 577
    packed-switch p1, :pswitch_data_0

    .line 623
    :goto_0
    :pswitch_0
    return-void

    .line 585
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording_over_60fps"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 594
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCoverRecordingState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideCoverRecordingLayout()V

    .line 603
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restorePreviousShootingMode()V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 601
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideRecordingButtonWithAnimation()V

    goto :goto_2

    .line 606
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording_over_60fps"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 613
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCoverRecordingState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 614
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideCoverRecordingLayout()V

    .line 618
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restorePreviousShootingMode()V

    goto/16 :goto_0

    .line 610
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    .line 616
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideRecordingButtonWithAnimation()V

    goto :goto_4

    .line 577
    nop

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
    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a026b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->onStopRecordingRequested(Z)V

    .line 630
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 6

    .prologue
    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxVideoFileSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a026a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0

    .line 641
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 642
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->checkAvailableRecordingStorage()V

    .line 644
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecordingTimeLimitInSecond:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getTotalRecordingTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRemainRecordingTime:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeTouchAeRequest()V

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopAndRestartVideoRecording()V

    goto :goto_0
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 0
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    .line 768
    if-eqz p1, :cond_0

    .line 769
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Recording;->onStopRecordingRequested(Z)V

    .line 771
    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 3
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    .line 655
    const-string v0, "Recording"

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

    .line 657
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingTimeLimited()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIsRecordingTimeLimited:Z

    .line 659
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->startTimer()V

    .line 664
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->startRecIconIndicatorBlinking()V

    .line 665
    return-void

    .line 661
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingTime(J)V

    .line 662
    invoke-direct {p0, p3, p4}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateProgressBarText(J)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2
    .param p1, "captureMethod"    # I

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainRecordingTime()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    .line 686
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 691
    return-void
.end method

.method protected onStopProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 776
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCoverRecordingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 790
    const-string v0, "Recording"

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

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 794
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 695
    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method public setViewModeIndicator(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setViewMode(I)V

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method protected startRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 798
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 799
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->checkAvailableRecordingStorage()V

    .line 800
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 801
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_2

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording_over_60fps"

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 808
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 809
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->startRecordingPreviewVI()V

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->finishRecordingPreviewVI()V

    .line 815
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBlinkCount:I

    .line 817
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 819
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const-string v2, "0K"

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 823
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRemainRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 829
    :goto_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingButtonsDim(Z)V

    .line 830
    return-void

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "resolution":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording"

    invoke-static {v1, v2, v4, v0}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 826
    .end local v0    # "resolution":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected stopRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 833
    const-string v0, "Recording"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 835
    :cond_0
    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return stopRecording - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_0
    return-void

    .line 839
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateProgressBarText(J)V

    .line 841
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getTotalRecordingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingTime(J)V

    .line 842
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 854
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingButtonsDim(Z)V

    goto :goto_0

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_1
.end method

.method protected stopRecordingForced()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 858
    const-string v0, "Recording"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 860
    :cond_0
    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingForced : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_0
    return-void

    .line 864
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 865
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getCurrentRecordingFileSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateProgressBarText(J)V

    .line 866
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->getTotalRecordingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingTime(J)V

    .line 867
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 878
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingButtonsDim(Z)V

    goto :goto_0

    .line 874
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_1
.end method
