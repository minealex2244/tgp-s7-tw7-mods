.class public Lcom/sec/android/app/camera/shootingmode/Dual;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "Dual.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;,
        Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_DUAL_RECT:I = 0x0

.field private static final DELAY_TIME_TO_UPDATE_VIDEO_THUMBNAIL:I = 0x1f4

.field private static final DUAL_MAX_LIMIT_RECORDING_TIME_FHD:I = 0x12c

.field private static final DUAL_MAX_LIMIT_RECORDING_TIME_NORMAL:I = 0x258

.field private static final EFFECT_ORIENTATION_0:I = 0x3

.field private static final EFFECT_ORIENTATION_180:I = 0x1

.field private static final EFFECT_ORIENTATION_270:I = 0x0

.field private static final EFFECT_ORIENTATION_90:I = 0x2

.field private static final FLIP_PHOTO_FIRST_IMAGE_COUNT:I = 0x1

.field private static final FLIP_PHOTO_SECOND_IMAGE_COUNT:I = 0x2

.field private static final FLIP_PHOTO_SEF_KEYNAME:Ljava/lang/String; = "FlipPhoto_002"

.field private static final HIDE_BOUNDARY:I = 0x1

.field private static final HIDE_TIMEOUT:I = 0xbb8

.field private static final KEY_GLOBAL_DUAL_RECT_LEFTTOP_X:Ljava/lang/String; = "pref_global_dual_rect_lefttop_x"

.field private static final KEY_GLOBAL_DUAL_RECT_LEFTTOP_Y:Ljava/lang/String; = "pref_global_dual_rect_lefttop_y"

.field private static final KEY_GLOBAL_DUAL_RECT_RIGHTBOTTOM_X:Ljava/lang/String; = "pref_global_dual_rect_rightbottom_x"

.field private static final KEY_GLOBAL_DUAL_RECT_RIGHTBOTTOM_Y:Ljava/lang/String; = "pref_global_dual_rect_rightbottom_y"

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_ICON:I = 0x1

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_TIME:I = 0x2

.field private static final SHOW_BOUNDARY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Dual"

.field private static final UPDATE_VIDEO_THUMBNAIL:I = 0x4


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final DEFAULT_PIP_HEIGHT:I

.field private final DEFAULT_PIP_WIDTH:I

.field private final DUAL_BUTTON_POS_X:I

.field private final DUAL_BUTTON_POS_Y:I

.field private final FLIP_PHOTO_PIP_HEIGHT:I

.field private final FLIP_PHOTO_PIP_LEFT:I

.field private final FLIP_PHOTO_PIP_TOP:I

.field private final FULL_SCREEN_HEIGHT:I

.field private final FULL_SCREEN_WIDTH:I

.field private final HANDLER_AREA_PADDING:I

.field private final RECORDINGMODE_TEXT_SHADOW_OFFSET:I

.field private final RECORDING_MODE_TEXT_SHADOW:Z

.field private final RECORDING_PAUSE_BUTTON_DIAMETER:I

.field private final RECORDING_PAUSE_BUTTON_WIDTH:I

.field private final RECORDING_REC_ICON_LEFT_MARGIN:I

.field private final RECORDING_REC_ICON_WIDTH:I

.field private final RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_HEIGHT:I

.field private final RECORDING_REC_TIME_GROUP_POS_Y:I

.field private final RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

.field private final RECORDING_REC_TIME_GROUP_WIDTH:I

.field private final RECORDING_REC_TIME_TEXT_HEIGHT:I

.field private final RECORDING_REC_TIME_TEXT_POS_X:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

.field private final RECORDING_SNAPSHOT_MARGIN_Y:I

.field private final REC_INDICATOR_TEXT_SIZE:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_POS_Y:I

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SNAPSHOT_BUTTON_POS_Y:I

.field private final SNAPSHOT_BUTTON_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkCount:I

.field private mCaptureMethod:I

.field private mCurrentEffect:I

.field private mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

.field private mDualBoundryRectVisibility:Z

.field private mDualButton:Lcom/samsung/android/glview/GLButton;

.field private mDualHeight:I

.field private mDualLeft:I

.field private mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

.field private mDualTop:I

.field private mDualWidth:I

.field private mDual_flip_photo_pip_width:I

.field private mDual_splitview_height:I

.field private mDual_splitview_start_posX:I

.field private mDual_splitview_start_posY:I

.field private mDual_splitview_width:I

.field private mFlipPhotoCallbackCnt:I

.field private mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

.field private mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;

.field private mHandler_area_bottom_boundary:I

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mHandler_area_top_boundary:I

.field private mHeightFactor:F

.field private mHeightOffsetForhandle:I

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mInvisible:Z

.field private mIsFlipCaptureStarted:Z

.field private mIsFlipPhotoDBPrepareCompleted:Z

.field private mIsMultiTouch:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mOrientation:I

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mRecordingDualMode:I

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

.field private mRemainRecordingTime:Ljava/lang/String;

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private final mSnapshotShutterRatio:F

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mStopping:Z

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mWidthFactor:F

.field private mWidthOffsetForhandle:I

.field private pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final translationDeltaY:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 123
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    .line 124
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    .line 125
    const v0, 0x7f0b0059

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    .line 127
    const v0, 0x7f0b00cb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_WIDTH:I

    .line 128
    const v0, 0x7f0b00ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_HEIGHT:I

    .line 131
    const v0, 0x7f0b0185

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DUAL_BUTTON_POS_X:I

    .line 132
    const v0, 0x7f0b0186

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DUAL_BUTTON_POS_Y:I

    .line 134
    const v0, 0x7f0b033f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    .line 135
    const v0, 0x7f0b00f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    .line 136
    const v0, 0x7f0b019c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_POS_X:I

    .line 137
    const v0, 0x7f0b019b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    .line 138
    const v0, 0x7f0e0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    .line 139
    const v0, 0x7f0d003a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    .line 140
    const v0, 0x7f0b019a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    .line 141
    const v0, 0x7f0b0199

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_LEFT_MARGIN:I

    .line 142
    const v0, 0x7f0b00f4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    .line 143
    const v0, 0x7f0b00f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    .line 144
    const v0, 0x7f0b00f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    .line 145
    const v0, 0x7f0b00f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    .line 146
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_BOTTOM_MARGIN:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    .line 147
    const v0, 0x7f0e0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    .line 148
    const v0, 0x7f0e0022

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_MODE_TEXT_SHADOW:Z

    .line 151
    const v0, 0x7f0b005b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->BASEMENU_GROUP_ICON_GAP:F

    .line 152
    const v0, 0x7f0b034e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 155
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v0, :cond_1

    const v0, 0x7f0b0196

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_1
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_SNAPSHOT_MARGIN_Y:I

    .line 156
    const v0, 0x7f0b034f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    .line 157
    const v0, 0x7f0b0189

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    .line 158
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SCREEN_WIDTH:I

    .line 159
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SCREEN_HEIGHT:I

    .line 160
    const v0, 0x7f0b01d9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_WIDTH:F

    .line 161
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_POS_Y:I

    .line 163
    const v0, 0x7f0b0194

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_POS_Y:I

    .line 164
    const v0, 0x7f0b0195

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_WIDTH:I

    .line 166
    const v0, 0x7f0b02c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_HEIGHT:I

    .line 167
    const v0, 0x7f0b02c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_TOP:I

    .line 168
    const v0, 0x7f0b02c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_LEFT:I

    .line 170
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->translationDeltaY:F

    .line 171
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_WIDTH:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mSnapshotShutterRatio:F

    .line 173
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightFactor:F

    .line 174
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthFactor:F

    .line 176
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    .line 177
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    .line 178
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_top_boundary:I

    .line 179
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    .line 180
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    .line 181
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    .line 182
    const v0, 0x7f0b0017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    .line 183
    const v0, 0x7f0b0014

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    .line 184
    const v0, 0x7f0b02d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    .line 185
    const v0, 0x7f0b0016

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    .line 186
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    .line 187
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 188
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    .line 189
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    .line 190
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    .line 192
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    .line 193
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    .line 194
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    .line 195
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 197
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 198
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 199
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 214
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 217
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    .line 219
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    .line 221
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsMultiTouch:Z

    .line 225
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    .line 226
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    .line 227
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    .line 233
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Dual$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Dual$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 256
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 258
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 155
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Dual;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->unregisterCameraOrientationListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->clearDual()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Dual;)Lcom/sec/android/app/camera/widget/gl/RectHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateVideoThumbnail()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Dual;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->blinkRecIconIndicator(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/Dual;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Dual;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->blinkRecTimeIndicator(Z)V

    return-void
.end method

.method private applyInvisible()V
    .locals 2

    .prologue
    .line 1301
    const-string v0, "Dual"

    const-string v1, "applyInvisible"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    .line 1303
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideDualAreaHandle()V

    .line 1304
    return-void
.end method

.method private applyVisible()V
    .locals 2

    .prologue
    .line 1307
    const-string v0, "Dual"

    const-string v1, "applyVisible"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 1311
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showDualAreaHandle()V

    .line 1313
    :cond_0
    return-void
.end method

.method private blinkRecIconIndicator(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->removeMessages(I)V

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1321
    if-eqz p1, :cond_2

    .line 1322
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1327
    :cond_1
    :goto_0
    return-void

    .line 1324
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private blinkRecTimeIndicator(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->removeMessages(I)V

    .line 1334
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1335
    if-eqz p1, :cond_2

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1341
    :cond_1
    :goto_0
    return-void

    .line 1338
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private calculatePreviewRectBoundary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0b0016

    const v2, 0x7f0b0014

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 1388
    :goto_0
    return-void

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    .line 1348
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1349
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    .line 1350
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    .line 1354
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1355
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    .line 1358
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isWidePreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1359
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1360
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    .line 1364
    :goto_2
    const v0, 0x7f0b0017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    .line 1365
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    .line 1366
    const v0, 0x7f0b02d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    .line 1367
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    .line 1368
    const v0, 0x7f0b02cc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    .line 1384
    :goto_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_top_boundary:I

    .line 1385
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    .line 1386
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_top_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setHandlerAreaTopBoundary(I)V

    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setHandlerAreaBottomBoundary(I)V

    goto/16 :goto_0

    .line 1352
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    goto/16 :goto_1

    .line 1362
    :cond_4
    const v0, 0x7f0b02cd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    goto :goto_2

    .line 1369
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSquarePreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1370
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    .line 1371
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    .line 1372
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    .line 1373
    const v0, 0x7f0b02cf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    .line 1374
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    .line 1375
    const v0, 0x7f0b02cb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    goto :goto_3

    .line 1377
    :cond_6
    const v0, 0x7f0b00c4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    .line 1378
    const v0, 0x7f0b0015

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    .line 1379
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    .line 1380
    const v0, 0x7f0b02ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    .line 1381
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    .line 1382
    const v0, 0x7f0b02ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    goto/16 :goto_3
.end method

.method private clearDual()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1391
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->access$300(Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;)V

    .line 1392
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->access$400(Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;)V

    .line 1394
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    .line 1395
    return-void
.end method

.method private convertOrientationForEffect(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 1398
    packed-switch p1, :pswitch_data_0

    .line 1408
    :goto_0
    :pswitch_0
    return v0

    .line 1400
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 1402
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1404
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultRectHeight(I)I
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 1413
    packed-switch p1, :pswitch_data_0

    .line 1432
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1415
    :pswitch_1
    const v0, 0x7f0b00c3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1417
    :pswitch_2
    const v0, 0x7f0b00bb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1419
    :pswitch_3
    const v0, 0x7f0b00ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1421
    :pswitch_4
    const v0, 0x7f0b00c6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1423
    :pswitch_5
    const v0, 0x7f0b00c1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1425
    :pswitch_6
    const v0, 0x7f0b00c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1427
    :pswitch_7
    const v0, 0x7f0b00b9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1429
    :pswitch_8
    const v0, 0x7f0b02c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1413
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getDefaultRectWidth(I)I
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 1437
    packed-switch p1, :pswitch_data_0

    .line 1455
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1439
    :pswitch_1
    const v0, 0x7f0b00c5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1441
    :pswitch_2
    const v0, 0x7f0b00bc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1443
    :pswitch_3
    const v0, 0x7f0b00cb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1445
    :pswitch_4
    const v0, 0x7f0b00c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1447
    :pswitch_5
    const v0, 0x7f0b00c2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1449
    :pswitch_6
    const v0, 0x7f0b00c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1451
    :pswitch_7
    const v0, 0x7f0b00ba

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1437
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private hideAllBoundaryRect()V
    .locals 1

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-eqz v0, :cond_0

    .line 1461
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 1463
    :cond_0
    return-void
.end method

.method private hideBoundaryRect()V
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->hideBoundaryRect()V

    .line 1468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    .line 1470
    :cond_0
    return-void
.end method

.method private hideDualAreaHandle()V
    .locals 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDisable(Z)V

    .line 1475
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setBackGroundInvisible()V

    .line 1477
    return-void
.end method

.method private hideRecordingButtonWithAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1487
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1488
    return-void
.end method

.method private hideRecordingLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1491
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1493
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1494
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1495
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1496
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1497
    return-void
.end method

.method private initDual()V
    .locals 1

    .prologue
    .line 1500
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    .line 1501
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getDualHandlerOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    .line 1504
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->loadDualEffectPositionFromPreference()V

    .line 1506
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->convertOrientationForEffect(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    .line 1507
    return-void
.end method

.method private isFlipEffect()Z
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDualEffectPositionFromPreference()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1514
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dual_rect_lefttop_x"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 1515
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dual_rect_lefttop_y"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    .line 1516
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dual_rect_rightbottom_x"

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_WIDTH:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    .line 1517
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_dual_rect_rightbottom_y"

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_HEIGHT:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    .line 1518
    return-void
.end method

.method private makeRecordingAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v10, 0x23a

    const/4 v11, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1521
    const-string v2, "Dual"

    const-string v3, "makeRecordingAnimation"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1523
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v3, 0x12c

    const/16 v4, 0x82

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1524
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v5}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    const/16 v6, 0x12c

    const/16 v7, 0x82

    move v2, v0

    move v3, v1

    .line 1525
    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1526
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1528
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1529
    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->translationDeltaY:F

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mSnapshotShutterRatio:F

    div-float v4, v2, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v0

    move v3, v0

    move v5, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1531
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v10, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1532
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mSnapshotShutterRatio:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mSnapshotShutterRatio:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v5, v1

    move v7, v1

    invoke-static/range {v4 .. v11}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1534
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1535
    return-void
.end method

.method private onDualModeRecodingSwitchCamera()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 1538
    const-string v0, "Dual"

    const-string v1, "onDualModeRecodingSwitchCamera"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1541
    const-string v0, "Dual"

    const-string v1, "onDualModeRecodingSwitchCamera failed - queue is not empty"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNotificationExist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1545
    const-string v0, "Dual"

    const-string v1, "onDualModeRecodingSwitchCamera failed - notification is not empty"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1549
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1550
    const-string v0, "Dual"

    const-string v1, "onDualModeRecodingSwitchCamera return - pip switching not supported in flip effect"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1554
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 1557
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetCameraSettingsInDual()V

    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1559
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 1560
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectLayerOrder()V

    .line 1561
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v1, 0xbba

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->changeParameterSync(II)V

    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x2

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->changeParameterSync(II)V

    goto :goto_0

    .line 1563
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFlashMode(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 1566
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectLayerOrder()V

    .line 1567
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->changeParameterSync(II)V

    goto :goto_0
.end method

.method private onDualModeSwitchCamera()V
    .locals 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1573
    const-string v0, "Dual"

    const-string v1, "onCameraDualModeSwitchCamera failed - queue is not empty"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_0
    return-void

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNotificationExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    const-string v0, "Dual"

    const-string v1, "onCameraDualModeSwitchCamera failed - notifycation is not empty"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1580
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1581
    const-string v0, "Dual"

    const-string v1, "onCameraDualModeSwitchCamera failed - capturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1585
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1586
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    .line 1589
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetCameraSettingsInDual()V

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->updateCameraResolutionForDual()V

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1592
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualBackCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 1597
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetDualEffectLayerOrder()V

    .line 1599
    const-string v0, "Dual"

    const-string v1, "onCameraDualModeSwitchCamera done!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1593
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_4

    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getDualFrontCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    goto :goto_1
.end method

.method private roundOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1611
    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method private saveDualEffectPositionInPreference()V
    .locals 4

    .prologue
    .line 1616
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    .line 1617
    .local v0, "nEffectMode":I
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1620
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_dual_rect_lefttop_x"

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1621
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_dual_rect_lefttop_y"

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1622
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_dual_rect_rightbottom_x"

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1623
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_dual_rect_rightbottom_y"

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private sendHideBoundaryRectMessage()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1627
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    if-nez v0, :cond_0

    .line 1635
    :goto_0
    return-void

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1632
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->removeMessages(I)V

    .line 1634
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setDualButtonResource(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1638
    const-string v0, "Dual"

    const-string v1, "setDualButtonResource"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    packed-switch p1, :pswitch_data_0

    .line 1652
    :goto_0
    return-void

    .line 1642
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 1643
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1646
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 1647
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDualEffectHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1655
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    .line 1656
    return-void
.end method

.method private setDualEffectLeftTopX(I)V
    .locals 0
    .param p1, "dualEffectLeftTopX"    # I

    .prologue
    .line 1659
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 1660
    return-void
.end method

.method private setDualEffectLeftTopY(I)V
    .locals 0
    .param p1, "dualEffectLeftTopY"    # I

    .prologue
    .line 1663
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    .line 1664
    return-void
.end method

.method private setDualEffectWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 1667
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    .line 1668
    return-void
.end method

.method private setDualPipPosition(FFFFII)V
    .locals 8
    .param p1, "topLeftX"    # F
    .param p2, "topLeftY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "mWidthOffsetForhandle"    # I
    .param p6, "mHeightOffsetForhandle"    # I

    .prologue
    .line 1671
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 1672
    return-void
.end method

.method private setDualPipPosition(FFFFIIZ)V
    .locals 13
    .param p1, "topLeftX"    # F
    .param p2, "topLeftY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "mWidthOffsetForhandle"    # I
    .param p6, "mHeightOffsetForhandle"    # I
    .param p7, "newEffect"    # Z

    .prologue
    .line 1680
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isWidePreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1681
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_16_9:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v10

    .line 1682
    .local v10, "previewWidth":I
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_16_9:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v9

    .line 1691
    .local v9, "previewHeight":I
    :goto_0
    int-to-float v1, v10

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 1692
    .local v11, "resizeFactorX":F
    int-to-float v1, v9

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 1694
    .local v12, "resizeFactorY":F
    mul-float v1, p1, v11

    float-to-int v1, v1

    int-to-float p1, v1

    .line 1695
    mul-float v1, p2, v12

    float-to-int v1, v1

    int-to-float p2, v1

    .line 1696
    mul-float v1, p3, v11

    float-to-int v1, v1

    int-to-float v0, v1

    move/from16 p3, v0

    .line 1697
    mul-float v1, p4, v12

    float-to-int v1, v1

    int-to-float v0, v1

    move/from16 p4, v0

    .line 1699
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/camera/interfaces/Engine;->coordinateSyncForDual(FFFFIIZ)V

    .line 1700
    return-void

    .line 1683
    .end local v9    # "previewHeight":I
    .end local v10    # "previewWidth":I
    .end local v11    # "resizeFactorX":F
    .end local v12    # "resizeFactorY":F
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSquarePreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1684
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_1_1:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v10

    .line 1685
    .restart local v10    # "previewWidth":I
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_1_1:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v9

    .restart local v9    # "previewHeight":I
    goto :goto_0

    .line 1687
    .end local v9    # "previewHeight":I
    .end local v10    # "previewWidth":I
    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_4_3:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v10

    .line 1688
    .restart local v10    # "previewWidth":I
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_4_3:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v9

    .restart local v9    # "previewHeight":I
    goto :goto_0
.end method

.method private setDualPipPositionAsDefault()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1703
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectLeftTopX(I)V

    .line 1704
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectLeftTopY(I)V

    .line 1705
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_WIDTH:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectWidth(I)V

    .line 1706
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_HEIGHT:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectHeight(I)V

    .line 1707
    return-void
.end method

.method private setEffect(I)V
    .locals 13
    .param p1, "effect"    # I

    .prologue
    .line 1710
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 1712
    const-string v0, "Dual"

    const-string v1, "setEffect : mCameraContext is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1717
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 1720
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->resetHandler()V

    .line 1721
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showDualAreaHandle()V

    .line 1723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    .line 1724
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->calculatePreviewRectBoundary()V

    .line 1726
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    .line 1728
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxBound()V

    .line 1729
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDualEffectTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setHandlerTitle(Ljava/lang/String;)V

    .line 1731
    packed-switch p1, :pswitch_data_0

    .line 1784
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setAspectRatioLocked(Z)V

    .line 1785
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setGrowable(Z)V

    .line 1786
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 1788
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_3

    .line 1789
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectOrientationSync(I)V

    .line 1791
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 1792
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v9

    .line 1793
    .local v9, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->calcRotatePosition(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v12

    .line 1794
    .local v12, "rotateRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1795
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    goto/16 :goto_0

    .line 1739
    .end local v9    # "rect":Landroid/graphics/RectF;
    .end local v12    # "rotateRect":Landroid/graphics/RectF;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectHeight(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightFactor:F

    .line 1740
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectWidth(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->DEFAULT_PIP_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthFactor:F

    .line 1742
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthFactor:F

    mul-float/2addr v0, v1

    float-to-int v11, v0

    .line 1743
    .local v11, "resizedWidth":I
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightFactor:F

    mul-float/2addr v0, v1

    float-to-int v10, v0

    .line 1745
    .local v10, "resizedHeight":I
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    add-int/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    if-le v0, v1, :cond_6

    .line 1746
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    add-int/2addr v0, v11

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->HANDLER_AREA_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v8, v0

    .line 1747
    .local v8, "diff":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    int-to-float v0, v0

    sub-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 1749
    .end local v8    # "diff":F
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    if-ge v0, v1, :cond_7

    .line 1750
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    .line 1751
    .restart local v8    # "diff":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    .line 1754
    .end local v8    # "diff":F
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    int-to-float v2, v2

    int-to-float v3, v11

    int-to-float v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1755
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectWidth(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectHeight(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxSize(FF)V

    .line 1756
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectWidth(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->getDefaultRectHeight(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMinSize(FF)V

    .line 1757
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isWidePreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_8

    .line 1758
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    int-to-float v2, v0

    int-to-float v3, v11

    int-to-float v4, v10

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    goto/16 :goto_1

    .line 1761
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualLeft:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualTop:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v11

    int-to-float v4, v10

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    goto/16 :goto_1

    .line 1766
    .end local v10    # "resizedHeight":I
    .end local v11    # "resizedWidth":I
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_left_boundary:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1767
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_start_posY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_width:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_splitview_height:I

    int-to-float v4, v0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 1769
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 1770
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPositionAsDefault()V

    goto/16 :goto_1

    .line 1773
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_LEFT:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_TOP:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1775
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_LEFT:I

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_TOP:I

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_LEFT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDual_flip_photo_pip_width:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FLIP_PHOTO_PIP_HEIGHT:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 1776
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 1777
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 1778
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPositionAsDefault()V

    goto/16 :goto_1

    .line 1731
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setEffectOrientation()V
    .locals 2

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectOrientationSync(I)V

    .line 1802
    return-void
.end method

.method private setMaxDualRecordingTime()V
    .locals 5

    .prologue
    const/16 v4, 0x258

    const/16 v3, 0x12c

    const/4 v2, -0x1

    .line 1805
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1806
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-le v0, v3, :cond_1

    .line 1807
    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    .line 1814
    :cond_1
    :goto_0
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxRecordingTimeLimitInSecond : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return-void

    .line 1810
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    if-le v0, v4, :cond_1

    .line 1811
    :cond_3
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    goto :goto_0
.end method

.method private setOrientationChanged(IZ)V
    .locals 10
    .param p1, "orientation"    # I
    .param p2, "forceUpdateHandler"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1818
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_4

    .line 1819
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    and-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_6

    .line 1820
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1821
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1822
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1823
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    if-eqz v0, :cond_5

    .line 1825
    :cond_3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    .line 1826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectOrientationSync(I)V

    .line 1841
    :cond_4
    :goto_0
    return-void

    .line 1829
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v8

    .line 1830
    .local v8, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x0

    iget v1, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, v8, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 1831
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v8, v2, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->calcRotatePosition(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v9

    .line 1832
    .local v9, "rotateRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->updateRectBeforeDragged()V

    .line 1834
    iget v0, v9, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, v9, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 1838
    .end local v8    # "rect":Landroid/graphics/RectF;
    .end local v9    # "rotateRect":Landroid/graphics/RectF;
    :cond_6
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    .line 1839
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectOrientationSync(I)V

    goto :goto_0
.end method

.method private setScreenForRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1844
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1846
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 1847
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualButtonResource(I)V

    .line 1849
    :cond_0
    return-void
.end method

.method private showBoundaryRect()V
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->showBoundaryRect()V

    .line 1854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    .line 1856
    :cond_0
    return-void
.end method

.method private showDualAreaHandle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1859
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setBackGroundVisible()V

    .line 1860
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setSideLock(I)V

    .line 1861
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDisable(Z)V

    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 1865
    :cond_0
    return-void
.end method

.method private showRecordingTextAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1868
    const-string v0, "Dual"

    const-string v1, "showRecordingTextAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1871
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1872
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1876
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 1877
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1879
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1880
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1881
    return-void
.end method

.method private startRecIconIndicatorBlinking()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1884
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1885
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Dual;->blinkRecIconIndicator(Z)V

    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1891
    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1894
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1896
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRemainRecordingTime:Ljava/lang/String;

    .line 1898
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimer 2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1900
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1902
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_0

    .line 1903
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showRecordingTextAnimation()V

    .line 1908
    :goto_0
    return-void

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1906
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private unregisterCameraOrientationListener()V
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/util/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 1912
    return-void
.end method

.method private updateDBForFlipPhoto(Landroid/content/ContentValues;Lcom/sec/android/app/camera/util/ContentData;)V
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "contentData"    # Lcom/sec/android/app/camera/util/ContentData;

    .prologue
    const/4 v8, 0x0

    .line 1915
    const/4 v2, 0x0

    .line 1916
    .local v2, "fileUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1918
    .local v3, "mContentResolver":Landroid/content/ContentResolver;
    const-string v5, "_size"

    new-instance v6, Ljava/io/File;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1921
    :try_start_0
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1923
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getAddressValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 1924
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getImageIDListHaveAddress()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    :cond_0
    invoke-virtual {p2, v2}, Lcom/sec/android/app/camera/util/ContentData;->setContentUri(Landroid/net/Uri;)V

    .line 1928
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/sec/android/app/camera/util/ContentData;->setContentVideoType(Z)V

    .line 1930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1931
    .local v0, "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v5, "Z001"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    const-string v5, "Z119"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getDualEffectString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    const-string v5, "G001"

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCaptureMethod:I

    invoke-static {v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getCaptureMethodString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1934
    const-string v5, "Z118"

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-static {v6, v5}, Lcom/sec/android/app/camera/util/Util;->broadcastMultipleGeneralEventForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1942
    .end local v0    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    return-void

    .line 1936
    :catch_0
    move-exception v4

    .line 1937
    .local v4, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "Dual"

    const-string v6, "Not enough space in database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v6, 0x7f0a01c2

    invoke-static {v5, v6, v8}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1939
    .end local v4    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 1940
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Dual"

    const-string v6, "ContentResolver insert failed"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 6
    .param p1, "cmd"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    .prologue
    const/16 v5, -0x181

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1945
    const-string v0, "Dual"

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

    .line 1947
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Dual$2;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2011
    :goto_0
    return-void

    .line 1949
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    .line 1950
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 1951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1956
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1957
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1959
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1960
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1961
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1962
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1963
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    goto :goto_0

    .line 1967
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1968
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1970
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1971
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1972
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 1976
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1979
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1980
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1981
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isRecordingTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1987
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1988
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1994
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 1995
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1996
    const-string v0, "Dual"

    const-string v1, "PauseButton animation was not finished, so cancel the animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->cancelAnimation()V

    .line 2000
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2001
    const-string v0, "Dual"

    const-string v1, "StopButton animation was not finished, so cancel the animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->cancelAnimation()V

    .line 2005
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    .line 1947
    nop

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

    .line 2014
    const-string v1, "Dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRecordingTime : ms = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 2018
    .local v0, "seconds":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRemainRecordingTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 2020
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    .line 2021
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    .line 2028
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    if-lez v1, :cond_1

    .line 2029
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->blinkRecTimeIndicator(Z)V

    .line 2031
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    if-eqz v1, :cond_1

    .line 2032
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Dual$RecordingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2035
    :cond_1
    return-void

    .line 2022
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    sub-int/2addr v1, v0

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_3

    .line 2023
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    goto :goto_0

    .line 2024
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    sub-int/2addr v1, v0

    if-ne v1, v5, :cond_0

    .line 2025
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    goto :goto_0
.end method

.method private updateVideoThumbnail()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2038
    const-string v3, "Dual"

    const-string v4, "Update video thumbnail"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    .line 2040
    .local v2, "width":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v0

    .line 2042
    .local v0, "height":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v0, v6}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2044
    .local v1, "lastRecordingDataBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 2045
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4, v5, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail(Landroid/graphics/Bitmap;IZ)V

    .line 2046
    const/4 v1, 0x0

    .line 2048
    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    .prologue
    .line 1159
    const-string v0, "Dual"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 1161
    const-string v0, "Dual"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :goto_0
    return-void

    .line 1165
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1166
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1168
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelMultiTrackRecording()V

    goto :goto_0

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    goto :goto_0
.end method

.method public getDualEffectTitle(I)Ljava/lang/String;
    .locals 3
    .param p1, "effect"    # I

    .prologue
    const v2, 0x7f0a003c

    .line 261
    const-string v0, ""

    .line 262
    .local v0, "title":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .line 264
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0036

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    goto :goto_0

    .line 273
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    goto :goto_0

    .line 276
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    goto :goto_0

    .line 279
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    goto :goto_0

    .line 282
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    goto :goto_0

    .line 285
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    goto :goto_0

    .line 288
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method protected isSnapShotAvailable()Z
    .locals 1

    .prologue
    .line 1177
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 327
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v1, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/util/CameraOrientationEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0xbb9

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 344
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->initDual()V

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectSync(I)V

    .line 348
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffect(I)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectLayerOrder()V

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 363
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 369
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setVisibility(I)V

    .line 372
    return-void

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startDualCamera()V

    goto :goto_0

    .line 360
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_1

    .line 334
    :array_0
    .array-data 4
        0x5a
        0x3
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 376
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_2

    .line 381
    const-string v1, "Dual"

    const-string v2, "onActivityTouchEvent- Preview is not started yet"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_3

    .line 386
    const-string v1, "Dual"

    const-string v2, "onActivityTouchEvent - Recording is not started yet"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 396
    :pswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsMultiTouch:Z

    if-eqz v2, :cond_4

    .line 397
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsMultiTouch:Z

    goto :goto_0

    .line 399
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mInvisible:Z

    if-eqz v2, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onDualModeRecodingSwitchCamera()V

    move v0, v1

    .line 401
    goto :goto_0

    .line 406
    :pswitch_2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsMultiTouch:Z

    goto :goto_0

    .line 409
    :pswitch_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 410
    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_2

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->stopButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 430
    :cond_2
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 434
    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 438
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 439
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Dual;->roundOrientation(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->setOrientationChanged(IZ)V

    .line 441
    :cond_0
    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 6
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 445
    packed-switch p1, :pswitch_data_0

    .line 465
    :goto_0
    return-void

    .line 447
    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 448
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 5
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v4, 0x5dc0

    const/4 v3, 0x0

    .line 469
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeModeParameters : current recording status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 472
    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    .line 473
    const-string v0, "dualrecording-hint"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 474
    invoke-virtual {p1, v4, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 480
    :goto_0
    return-void

    .line 476
    :cond_0
    const-string v0, "dualrecording-hint"

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 478
    const-string v0, "shot-mode"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeValueForISPset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 484
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    const-string v2, "Dual"

    const-string v3, "onClick = mDualButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    if-ne v2, v0, :cond_1

    .line 487
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyInvisible()V

    .line 488
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualButtonResource(I)V

    .line 489
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 490
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    .line 491
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffectOrientation()V

    .line 527
    :cond_0
    :goto_0
    return v0

    .line 494
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyVisible()V

    .line 495
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffectOrientation()V

    .line 496
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualButtonResource(I)V

    .line 497
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    goto :goto_0

    .line 501
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    const-string v1, "Dual"

    const-string v2, "onClick = mStopButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecording()V

    goto :goto_0

    .line 508
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 509
    const-string v1, "Dual"

    const-string v2, "onClick = mPauseButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->pauseRecording()V

    goto :goto_0

    .line 518
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 519
    const-string v1, "Dual"

    const-string v2, "onClick = mResumeButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->resumeRecording()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 527
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
    .line 532
    const-string v2, "Dual"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 534
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 536
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 537
    .local v16, "controllerButtonBaseX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v17, v0

    .line 538
    .local v17, "controllerButtonBaseY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->SHUTTER_BUTTON_WIDTH:F

    float-to-int v15, v2

    .line 539
    .local v15, "controllerButtonBaseWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->BASEMENU_GROUP_ICON_GAP:F

    float-to-int v0, v2

    move/from16 v18, v0

    .line 544
    .local v18, "controllerButtonGap":I
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/high16 v3, -0x3e600000    # -20.0f

    const/high16 v4, -0x3e600000    # -20.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxSize(FF)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMinSize(FF)V

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxBound()V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setRectHandlerClickListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;)V

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const-string v3, "DUAL_AREA_RECT"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setObjectTag(Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHandler_area_bottom_boundary:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxSize(FF)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMinSize(FF)V

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 561
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->DUAL_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->DUAL_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f02008b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0164

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a004c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 575
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v6

    .line 576
    .local v6, "recTimeTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v22, v2, v6

    .line 578
    .local v22, "recTimeGroupWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 580
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isDeviceScreenWideRatio()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 581
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v22

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float v4, v4, v22

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_4_3_RATIO_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 590
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 595
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201c6

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 598
    new-instance v2, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0201c5

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 601
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v4, v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v7, v3

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 602
    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v9, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 614
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->getMSFormatStringWidth(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, " / "

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 615
    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    .line 614
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    add-float v21, v2, v3

    .line 616
    .local v21, "recRemainTimeTextWidth":F
    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v2, v2

    add-float v11, v2, v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v12, v2

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 617
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v9, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->REC_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 618
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v14, v2, v3

    move-object/from16 v8, p1

    move/from16 v11, v21

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 621
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_MODE_TEXT_SHADOW:Z

    if-eqz v2, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    .line 627
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v21

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    sub-float v5, v5, v21

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float v4, v4, v21

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_RATIO_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v5

    add-float v5, v5, v21

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_ICON_WIDTH:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRemainRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 642
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_WIDTH:I

    sub-int v2, v15, v2

    div-int/lit8 v2, v2, 0x2

    add-int v19, v16, v2

    .line 643
    .local v19, "pauseButtonX":I
    add-int v2, v17, v15

    add-int v20, v2, v18

    .line 644
    .local v20, "pauseButtonY":I
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v20, v20, v2

    .line 648
    :cond_0
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move/from16 v0, v19

    int-to-float v9, v0

    move/from16 v0, v20

    int-to-float v10, v0

    const v11, 0x7f0200f7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a01de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 661
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move/from16 v0, v19

    int-to-float v9, v0

    move/from16 v0, v20

    int-to-float v10, v0

    const v11, 0x7f0200f9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0202

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 669
    move/from16 v23, v16

    .line 670
    .local v23, "stopButtonX":I
    move/from16 v24, v17

    .line 671
    .local v24, "stopButtonY":I
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_1

    .line 672
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v24, v24, v2

    .line 675
    :cond_1
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v23

    int-to-float v9, v0

    move/from16 v0, v24

    int-to-float v10, v0

    const v11, 0x7f0200ef

    const v12, 0x7f0200f1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0228

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->makeRecordingAnimation()V

    .line 688
    return-void

    .line 587
    .end local v19    # "pauseButtonX":I
    .end local v20    # "pauseButtonY":I
    .end local v21    # "recRemainTimeTextWidth":F
    .end local v23    # "stopButtonX":I
    .end local v24    # "stopButtonY":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v4, v22

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v4

    add-float v4, v4, v22

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->FULL_SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->RECORDING_REC_TIME_GROUP_POS_Y:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 624
    .restart local v21    # "recRemainTimeTextWidth":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    goto/16 :goto_1
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/16 v4, 0xa20

    const/4 v2, 0x1

    .line 693
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 694
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    if-ne v1, v2, :cond_2

    .line 695
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    .line 696
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    const-string v1, "sef_file_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateDBForFlipPhoto(Landroid/content/ContentValues;Lcom/sec/android/app/camera/util/ContentData;)V

    .line 701
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/ContentData;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/util/ContentData;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move v1, v2

    .line 716
    :goto_1
    return v1

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string v1, "Dual"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDBUpdatePrepared : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 705
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 706
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    .line 707
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    .line 708
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 709
    const-string v1, "sef_file_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateDBForFlipPhoto(Landroid/content/ContentValues;Lcom/sec/android/app/camera/util/ContentData;)V

    .line 712
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

    goto :goto_0

    .line 716
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onEngineStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 721
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEngineStateChanged : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    packed-switch p1, :pswitch_data_0

    .line 742
    :goto_0
    return-void

    .line 724
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    goto :goto_0

    .line 727
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchToCameraPreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDualEffectSync(I)V

    .line 729
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffect(I)V

    goto :goto_0

    .line 736
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onImageStoringCompleted()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 746
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 747
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    if-eqz v7, :cond_1

    .line 749
    const-string v2, "FlipPhoto_002"

    .line 750
    .local v2, "keyName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    .local v4, "rearImageFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 752
    .local v1, "frontImageFile":Ljava/io/File;
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v3

    .line 755
    .local v3, "orientation":I
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 756
    const/16 v7, 0xa20

    const/4 v8, 0x1

    invoke-static {v4, v2, v1, v7, v8}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    .line 757
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v3, v9}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 758
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoRearContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-interface {v7, v8}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentData(Lcom/sec/android/app/camera/util/ContentData;)V

    .line 759
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 760
    const-string v7, "Dual"

    const-string v8, "failed to delete front image"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_0
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoCallbackCnt:I

    .line 775
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    .line 776
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    .line 780
    .end local v1    # "frontImageFile":Ljava/io/File;
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "orientation":I
    .end local v4    # "rearImageFile":Ljava/io/File;
    :cond_1
    :goto_1
    return v5

    .line 763
    .restart local v1    # "frontImageFile":Ljava/io/File;
    .restart local v2    # "keyName":Ljava/lang/String;
    .restart local v3    # "orientation":I
    .restart local v4    # "rearImageFile":Ljava/io/File;
    :cond_2
    const/16 v7, 0xa20

    const/4 v8, 0x1

    :try_start_1
    invoke-static {v1, v2, v4, v7, v8}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I

    .line 764
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/util/ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v3, v9}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 765
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mFlipPhotoFrontContentData:Lcom/sec/android/app/camera/util/ContentData;

    invoke-interface {v7, v8}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentData(Lcom/sec/android/app/camera/util/ContentData;)V

    .line 766
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 767
    const-string v7, "Dual"

    const-string v8, "failed to delete rear image"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "Dual"

    const-string v8, "failed to add SEF data for Flip Photo!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "frontImageFile":Ljava/io/File;
    .end local v2    # "keyName":Ljava/lang/String;
    .end local v3    # "orientation":I
    .end local v4    # "rearImageFile":Ljava/io/File;
    :cond_3
    move v5, v6

    .line 780
    goto :goto_1
.end method

.method public onInactivate()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 785
    const-string v0, "Dual"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipPhotoDBPrepareCompleted:Z

    .line 788
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    .line 790
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 792
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->cancelRecording()V

    .line 796
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mRecordingDualMode:I

    .line 799
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideRecordingLayout()V

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->unregisterRecordingController()V

    .line 801
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Dual;->setSecImagingRecorderListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 813
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyVisible()V

    .line 814
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    .line 816
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->saveDualEffectPositionInPreference()V

    .line 818
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->unregisterCameraOrientationListener()V

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setMultiTrackMode(Z)V

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0xbb9

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 828
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->clearDual()V

    .line 829
    return-void

    .line 794
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecordingForced()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 833
    sparse-switch p1, :sswitch_data_0

    .line 841
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 837
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const/4 v0, 0x1

    goto :goto_0

    .line 833
    nop

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

    .line 846
    sparse-switch p1, :sswitch_data_0

    .line 873
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 848
    :sswitch_0
    const-string v1, "Dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : keyCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-eqz v1, :cond_1

    .line 850
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideBoundaryRect()V

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecording()V

    goto :goto_0

    .line 861
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 866
    :sswitch_2
    const-string v1, "Dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : keyCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecording()V

    goto :goto_0

    .line 846
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

.method public onLongPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 878
    const-string v0, "Dual"

    const-string v1, "onLongPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 891
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-nez v0, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showBoundaryRect()V

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getSideLock()I

    move-result v0

    if-nez v0, :cond_2

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 896
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setGrowable(Z)V

    .line 897
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->sendHideBoundaryRectMessage()V

    goto :goto_0
.end method

.method public onMediaRecorderPreparedEvent(Landroid/media/MediaRecorder;)V
    .locals 2
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 903
    const-string v0, "Dual"

    const-string v1, "onMediaRecorderPrepared"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMaxRecordingTimeLimitInSecond:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 905
    return-void
.end method

.method public onMenuSelected(II)Z
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 909
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuSelected: menuId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    packed-switch p1, :pswitch_data_0

    .line 919
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 913
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Dual;->setEffect(I)V

    goto :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method

.method public onMove(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 10
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->calculatePreviewRectBoundary()V

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxBound()V

    .line 932
    cmpl-float v0, p4, p5

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_2
    cmpg-float v0, p4, p5

    if-gez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    if-eqz v0, :cond_5

    :cond_3
    cmpg-float v0, p4, p5

    if-gez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_4
    cmpl-float v0, p4, p5

    if-lez v0, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCurrentEffect:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mOrientation:I

    if-nez v0, :cond_a

    .line 936
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v8

    .line 937
    .local v8, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->calcRotatePosition(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v9

    .line 938
    .local v9, "rotateRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    .line 939
    iget v0, v9, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, v9, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFIIZ)V

    .line 945
    .end local v8    # "rect":Landroid/graphics/RectF;
    .end local v9    # "rotateRect":Landroid/graphics/RectF;
    :goto_1
    float-to-int v0, p2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectLeftTopX(I)V

    .line 946
    float-to-int v0, p3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectLeftTopY(I)V

    .line 947
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthFactor:F

    div-float v0, p4, v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectWidth(I)V

    .line 948
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightFactor:F

    div-float v0, p5, v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualEffectHeight(I)V

    .line 950
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    .line 951
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v0, p3}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 952
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->showBoundaryRect()V

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_7

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 956
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getSideLock()I

    move-result v0

    if-nez v0, :cond_8

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    .line 959
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualAreaHandle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setGrowable(Z)V

    .line 960
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->sendHideBoundaryRectMessage()V

    .line 963
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualBoundryRectVisibility:Z

    if-eqz v0, :cond_0

    .line 964
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->sendHideBoundaryRectMessage()V

    goto/16 :goto_0

    .line 942
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    int-to-float v0, v0

    sub-float v1, p2, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    int-to-float v0, v0

    sub-float v2, p3, v0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mWidthOffsetForhandle:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mHeightOffsetForhandle:I

    move-object v0, p0

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/shootingmode/Dual;->setDualPipPosition(FFFFII)V

    goto :goto_1
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 970
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z119"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getDualEffectString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    return-void
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
    .line 975
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    const-string v0, "Z120"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getDualEffectString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    return-void
.end method

.method public onRecordKeyReleased()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 981
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 982
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyVisible()V

    .line 983
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideAllBoundaryRect()V

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    .line 985
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->applyInvisible()V

    .line 986
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->startRecording()V

    .line 988
    :cond_0
    return v2
.end method

.method public onRecordingEvent(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 993
    packed-switch p1, :pswitch_data_0

    .line 1030
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 995
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setScreenForRecording()V

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 998
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 1006
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recordingDual"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1013
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideRecordingButtonWithAnimation()V

    .line 1014
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 1018
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recordingDual"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1023
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->hideRecordingButtonWithAnimation()V

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1025
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 993
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
    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a026b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1036
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onStopRecordingRequested(Z)V

    .line 1037
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 3

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a026a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1042
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->stopRecording()V

    .line 1043
    return-void
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 0
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    .line 1182
    if-eqz p1, :cond_0

    .line 1183
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Dual;->onStopRecordingRequested(Z)V

    .line 1185
    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 3
    .param p1, "elapsedTime"    # J
    .param p3, "fileSize"    # J

    .prologue
    .line 1047
    const-string v0, "Dual"

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

    .line 1049
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1050
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->startTimer()V

    .line 1055
    :goto_0
    return-void

    .line 1052
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingTime(J)V

    .line 1053
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->startRecIconIndicatorBlinking()V

    goto :goto_0
.end method

.method public onRectHandlerClick()V
    .locals 2

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 1060
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onDualModeRecodingSwitchCamera()V

    .line 1064
    :goto_0
    return-void

    .line 1062
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->onDualModeSwitchCamera()V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v0, 0x1

    .line 1078
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1079
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    if-eqz v1, :cond_0

    .line 1088
    :goto_0
    return v0

    .line 1082
    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 1086
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCaptureMethod:I

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 1088
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 1093
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleCaptureEvent - event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    packed-switch p1, :pswitch_data_0

    .line 1112
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1096
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCaptureFlipPhotoMode()V

    goto :goto_0

    .line 1103
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIsFlipCaptureStarted:Z

    goto :goto_0

    .line 1094
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStopProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 1189
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 1116
    const-string v0, "Dual"

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

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 1123
    :cond_1
    if-nez p1, :cond_2

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1132
    :cond_2
    :goto_0
    return-void

    .line 1128
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    const-string v0, "duration"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1138
    const-string v0, "recording_mode"

    const-string v1, "4"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x4

    .line 1145
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    if-nez v0, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return v4

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->removeMessages(I)V

    .line 1153
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mDualMsgHandler:Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Dual$DualHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected pauseRecording()V
    .locals 2

    .prologue
    .line 1192
    const-string v0, "Dual"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1196
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseMultiTrackRecording()V

    .line 1201
    :goto_0
    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    goto :goto_0
.end method

.method protected resumeRecording()V
    .locals 2

    .prologue
    .line 1204
    const-string v0, "Dual"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1207
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeMultiTrackRecording()V

    .line 1212
    :goto_0
    return-void

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    goto :goto_0
.end method

.method protected startRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1215
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1216
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    .line 1217
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x8

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 1220
    invoke-virtual {p0, p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setSecImagingRecorderListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V

    .line 1221
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->checkAvailableRecordingStorage()V

    .line 1222
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setMaxDualRecordingTime()V

    .line 1223
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1224
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recordingDual"

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1225
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 1229
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    .line 1230
    .local v0, "currentCamcorderResolution":I
    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    .line 1231
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    .line 1234
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    .line 1235
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->startRecordingPreviewVI()V

    .line 1236
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    .line 1237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->finishRecordingPreviewVI()V

    .line 1238
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectVisibleForRecording(Z)V

    .line 1240
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1241
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareMultiTrackRecording()V

    .line 1242
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartMultiTrackRecording()V

    .line 1248
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    .line 1249
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mBlinkCount:I

    .line 1251
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1252
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mIndicatorRecRemainTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;->convertToMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1255
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1256
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1259
    :cond_3
    return-void

    .line 1244
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    .line 1245
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    goto :goto_0
.end method

.method protected stopRecording()V
    .locals 4

    .prologue
    .line 1262
    const-string v0, "Dual"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    if-eqz v0, :cond_1

    .line 1265
    :cond_0
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :goto_0
    return-void

    .line 1268
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    .line 1269
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->restoreDualResolution(I)V

    .line 1270
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1271
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1273
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopMultiTrackRecording()V

    .line 1278
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFlashConditionDetected(Z)V

    goto :goto_0

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    goto :goto_1
.end method

.method protected stopRecordingForced()V
    .locals 4

    .prologue
    .line 1282
    const-string v0, "Dual"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    if-eqz v0, :cond_1

    .line 1285
    :cond_0
    const-string v0, "Dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingForced : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :goto_0
    return-void

    .line 1289
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 1290
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Dual;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    .line 1291
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Dual;->isFlipEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopMultiTrackRecording()V

    .line 1296
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFlashConditionDetected(Z)V

    .line 1297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mStopping:Z

    goto :goto_0

    .line 1294
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Dual;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    goto :goto_1
.end method
