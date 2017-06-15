.class public Lcom/sec/android/app/camera/shootingmode/MotionPanorama;
.super Ljava/lang/Object;
.source "MotionPanorama.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$StartPanoramaListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final LIVEPREVIEW_MOVE_ANIM_TIME:I = 0xb2

.field private static final MESSAGE_PANORAMA_SHOW_UI:I = 0x9

.field private static final MESSAGE_PANORAMA_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_PANORAMA_WARNING_LOW:I = 0x2

.field private static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_MOVE_SLOWLY:I = 0x5

.field private static final MOTION_PANORAMA_TEMP_AUDIO_FILE_NAME:Ljava/lang/String; = "motionpanorama.aac"

.field private static final MOTION_PANORAMA_TEMP_FILE_NAME:Ljava/lang/String; = "motionpanorama.jpg"

.field private static final PANORAMA_MAX_IMAGE_COUNT:I = 0x320

.field private static final PANORAMA_OVERLAP_CAPTURE_COUNT:I = 0x1

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final SEF_SHOT_MODE_NAME:Ljava/lang/String; = "PanoramaShot"

.field private static final TAG:Ljava/lang/String; = "MotionPanoramaApp"

.field private static final WARNING_LEVEL_HIGH:I = 0x2

.field private static final WARNING_LEVEL_HIGH_VALUE:I = 0x32

.field private static final WARNING_LEVEL_LOW:I = 0x1

.field private static final WARNING_LEVEL_LOW_VALUE:I = 0x1e

.field private static final WARNING_LEVEL_NONE:I = 0x0

.field private static final WARNING_LEVEL_STOP:I = 0x3

.field private static final mLivePreviewLock:Ljava/lang/Object;


# instance fields
.field private final BASEMENU_GROUP_WIDTH:F

.field private final BASE_MENU_WEIGHT_VALUE:F

.field private final GUIDE_HELP_TEXT_HEIGHT:F

.field private final GUIDE_HELP_TEXT_POS_X:F

.field private final GUIDE_HELP_TEXT_POS_Y:F

.field private final GUIDE_HELP_TEXT_SIZE:F

.field private final GUIDE_HELP_TEXT_WIDTH:F

.field private final GUIDE_TEXT_MARGIN:F

.field private final INIT_LANDSCAPE_WIDTH:F

.field private final INIT_LANDSCAPE_X:F

.field private final INIT_PORTRAIT_WIDTH:F

.field private final LIVEPREVIEW_LANDSCAPE_WIDTH:F

.field private final LIVEPREVIEW_LANDSCAPE_X:F

.field private final LIVEPREVIEW_PORTRAIT_HEIGHT:F

.field private final LIVEPREVIEW_PORTRAIT_Y:F

.field private final LIVEPREVIEW_RECT_THICKNESS:F

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final STOP_BUTTON_DIAMETER:I

.field private final STOP_BUTTON_POS_X:I

.field private final STOP_BUTTON_POS_Y:I

.field private final TRI_HEIGHT:F

.field private final TRI_WIDTH:F

.field private final WARNING_ARROW_OFFSET:F

.field private final WARNING_ARROW_SWING_DISTANCE:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCaptureTri:[Lcom/samsung/android/glview/GLImage;

.field private mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mEnterOrientation:I

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mGuideText:Lcom/samsung/android/glview/GLText;

.field private mHorizontalMaxCount:F

.field private mInitLandscapeHeight:F

.field private mInitLandscapeSingleHeight:F

.field private mInitLandscapeSingleWidth:F

.field private mInitLandscapeSingleX:F

.field private mInitLandscapeY:F

.field private mInitPortraitHeight:F

.field private mInitPortraitSingleHeight:F

.field private mInitPortraitSingleWidth:F

.field private mInitPortraitSingleX:F

.field private mInitPortraitX:F

.field private mInitPortraitY:F

.field private mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

.field private mInitializeTri:[Lcom/samsung/android/glview/GLImage;

.field private mIsGuideTextDisplaying:Z

.field private mIsMotionPanoramaEnabled:Z

.field private mIsPanoramaCaptureStarted:Z

.field private mIsPanoramaCapturing:Z

.field private mIsPanoramaCatureStarting:Z

.field private mIsPanoramaStopping:Z

.field private mIsPanoramaWarning:Z

.field private mIsPreviewRectRotationSupported:Z

.field private mIsSoundRecording:Z

.field private mIsSoundRecordingEnabled:Z

.field private mLivePreview:Lcom/samsung/android/glview/GLImage;

.field private mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mLivePreviewBmp:Landroid/graphics/Bitmap;

.field private mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

.field private mLivepreviewLandscapeHeight:F

.field private mLivepreviewLandscapeRectWidth:F

.field private mLivepreviewLandscapeSingleHeight:F

.field private mLivepreviewLandscapeSingleWidth:F

.field private mLivepreviewLandscapeSingleX:F

.field private mLivepreviewLandscapeSingleY:F

.field private mLivepreviewLandscapeWidth:F

.field private mLivepreviewLandscapeY:F

.field private mLivepreviewPortraitRectWidth:F

.field private mLivepreviewPortraitSingleHeight:F

.field private mLivepreviewPortraitSingleWidth:F

.field private mLivepreviewPortraitSingleX:F

.field private mLivepreviewPortraitSingleY:F

.field private mLivepreviewPortraitWidth:F

.field private mLivepreviewPortraitX:F

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

.field private mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

.field private mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

.field private mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mPostProgress:I

.field private mPreviewRatio:F

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailWidth:F

.field private mPreviousCaptureCount:I

.field private mThumbnailPreviewHeight:I

.field private mThumbnailPreviewMaxHeight:I

.field private mThumbnailPreviewMaxWidth:I

.field private mThumbnailPreviewPreallocatedBuffer:[I

.field private mThumbnailPreviewWidth:I

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mWarningArrow:[Lcom/samsung/android/glview/GLImage;

.field private mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

.field private mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v6, 0x4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    .line 120
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    .line 121
    const v0, 0x7f0a00b1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    .line 122
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_X:F

    .line 123
    const v0, 0x7f0a00b2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    .line 124
    const v0, 0x7f0a0017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 125
    const v0, 0x7f0a00b3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 126
    const v0, 0x7f0a0018

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 127
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 129
    const v0, 0x7f0a00b0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    .line 130
    const v0, 0x7f0a00ae

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    .line 131
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_POS_X:F

    .line 132
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_POS_Y:F

    .line 133
    const v0, 0x7f0a02ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_SIZE:F

    .line 134
    const v0, 0x7f0a00af

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_TEXT_MARGIN:F

    .line 136
    const v0, 0x7f0a00b5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 138
    const v0, 0x7f0a00b8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    .line 139
    const v0, 0x7f0a00b7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    .line 141
    const v0, 0x7f0a00ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    .line 142
    const v0, 0x7f0a00ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    .line 145
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->BASEMENU_GROUP_WIDTH:F

    .line 146
    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 147
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 150
    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SHUTTER_BUTTON_WIDTH:F

    .line 151
    const v0, 0x7f0a0393

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 152
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->BASEMENU_GROUP_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->BASE_MENU_WEIGHT_VALUE:F

    .line 153
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->BASE_MENU_WEIGHT_VALUE:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_POS_X:I

    .line 154
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_POS_Y:I

    .line 155
    const v0, 0x7f0a02a3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_DIAMETER:I

    .line 156
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    .line 157
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    .line 158
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    .line 159
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    .line 160
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 161
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    .line 162
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 163
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeHeight:F

    .line 164
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeY:F

    .line 165
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    .line 166
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    .line 167
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    .line 168
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    .line 169
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    .line 170
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleX:F

    .line 171
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    .line 172
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 173
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    .line 174
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    .line 175
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitX:F

    .line 176
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitY:F

    .line 177
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    .line 178
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    .line 179
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleHeight:F

    .line 180
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleX:F

    .line 181
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    .line 182
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    .line 183
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    .line 184
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 185
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    .line 186
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    .line 187
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 188
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    .line 189
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    .line 190
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    .line 191
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mHorizontalMaxCount:F

    .line 192
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewRatio:F

    .line 193
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    .line 194
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    .line 195
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCatureStarting:Z

    .line 196
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 197
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    .line 198
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 199
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPreviewRectRotationSupported:Z

    .line 201
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    .line 202
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 203
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 204
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 205
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 206
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 207
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 208
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 209
    new-array v0, v6, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    .line 210
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    .line 211
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    .line 212
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 213
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 214
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsGuideTextDisplaying:Z

    .line 215
    new-array v0, v6, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    .line 216
    new-array v0, v6, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    .line 219
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 220
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 221
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 222
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 223
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    .line 224
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 225
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 226
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 227
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    .line 228
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 229
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    .line 230
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    .line 232
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    .line 234
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 235
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$1;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 263
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;
    .param p1, "x1"    # Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isPanoramaWarning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideGuideText()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clearMessageHandler()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method private cancelPanoramaCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 934
    const-string v0, "MotionPanoramaApp"

    const-string v1, "cancelPanoramaCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForMotionPanoramaStartThreadComplete()V

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopPreview()V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelMotionPanorama()V

    .line 944
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    if-eqz v0, :cond_1

    .line 945
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopSoundRecording()V

    .line 947
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->removeTempFile()V

    .line 948
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clearPanoramaRect()V

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAfIfNeeded()V

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 955
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 956
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCatureStarting:Z

    .line 957
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 960
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    .line 961
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 962
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCatureStarting:Z

    .line 963
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    .line 964
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    .line 965
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    .line 966
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    .line 968
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopCancelTimer()V

    .line 969
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    .line 971
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideCaptureTri()V

    .line 972
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideStopButton()V

    .line 974
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clearPanoramaRect()V

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 980
    return-void
.end method

.method private clearMessageHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->access$500(Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;)V

    .line 985
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    .line 986
    return-void
.end method

.method private clearPanoramaRect()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 989
    const-string v1, "MotionPanoramaApp"

    const-string v2, "clearPanoramaRect"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 993
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_1

    .line 997
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 998
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->resetTranslate()V

    .line 1001
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningArrow()V

    .line 1002
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningBox()V

    .line 1004
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 1005
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 1006
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1004
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1011
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1012
    return-void
.end method

.method private createPanoramaView()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1016
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1017
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v6, 0x7f020169

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1022
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Bitmap;

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1026
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1027
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f020169

    invoke-direct {v0, v1, v11, v11, v2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 1028
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    const v2, 0x7f0d0011

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1033
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPreviewRectRotationSupported:Z

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1037
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1041
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v9

    .line 1042
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v12

    .line 1043
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v14

    .line 1044
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v7, 0x3

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v7

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v14

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020167

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020166

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 1053
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020168

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v14

    .line 1054
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f020165

    invoke-direct {v2, v3, v11, v11, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 1056
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v14

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v14

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1059
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1061
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v9

    .line 1062
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v12

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020167

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020168

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 1070
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02016e

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02016b

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 1079
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02016c

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v14

    .line 1080
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f02016d

    invoke-direct {v2, v3, v11, v11, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 1082
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const v2, 0x7f0d0011

    .line 1083
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1086
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const v2, 0x7f0d0035

    .line 1087
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1089
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    const v2, 0x7f0d0035

    .line 1090
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1093
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020101

    const v5, 0x7f020103

    move v6, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1098
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$2;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->STOP_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 1123
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1125
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->onOrientationChanged(I)V

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1134
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0901e4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1135
    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    const v8, 0x7f0d0023

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 1136
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLText;->setClipping(Z)V

    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f0b0025

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0d0010

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1143
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v10

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v10

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1143
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1036
    .end local v10    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    goto/16 :goto_0

    .line 1154
    .restart local v10    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v14, v14}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v12, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v14, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1158
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1159
    return-void
.end method

.method private getAnimation(II)Landroid/view/animation/AnimationSet;
    .locals 10
    .param p1, "speed"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1162
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1163
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 1165
    .local v0, "anim":Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 1191
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1192
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1193
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1194
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1195
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1196
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1199
    :cond_0
    return-object v1

    .line 1168
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1169
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 1174
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1175
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 1180
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1181
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 1186
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1187
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 1165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 1203
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPanoramaMaxCount(Lcom/sec/android/app/camera/interfaces/Engine;)[F
    .locals 10
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/high16 v9, 0x43b40000    # 360.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1207
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getViewAngle()[F

    move-result-object v3

    .line 1208
    .local v3, "viewAngle":[F
    aget v2, v3, v7

    .line 1209
    .local v2, "verticalAngle":F
    aget v0, v3, v8

    .line 1211
    .local v0, "horizontalAngle":F
    const/4 v4, 0x2

    new-array v1, v4, [F

    .line 1212
    .local v1, "maxCount":[F
    cmpl-float v4, v2, v5

    if-gtz v4, :cond_0

    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    .line 1213
    :cond_0
    div-float v4, v9, v2

    add-float/2addr v4, v6

    aput v4, v1, v7

    .line 1214
    div-float v4, v9, v0

    add-float/2addr v4, v6

    aput v4, v1, v8

    .line 1216
    :cond_1
    const-string v4, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vertical count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " horizontal count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-object v1
.end method

.method private declared-synchronized getPartialPanoramaImage([B)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "data"    # [B

    .prologue
    .line 1222
    monitor-enter p0

    const/4 v9, 0x0

    .line 1225
    .local v9, "bmp":Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 1226
    .local v20, "width":I
    const/4 v11, 0x0

    .line 1227
    .local v11, "height":I
    const/4 v15, 0x0

    .line 1228
    .local v15, "offsetX":I
    const/16 v16, 0x0

    .line 1229
    .local v16, "offsetY":I
    const/16 v19, 0x0

    .line 1230
    .local v19, "rotation":I
    const/4 v14, 0x0

    .line 1232
    .local v14, "maxSize":I
    const/4 v3, 0x0

    .line 1233
    .local v3, "bmpOffset":I
    const/4 v4, 0x0

    .line 1235
    .local v4, "bmpStride":I
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    .line 1236
    :cond_0
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Received null or invalid data"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    const/4 v2, 0x0

    .line 1368
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1241
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    aget-byte v2, p1, v2

    const/16 v5, 0x52

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v5, 0x47

    if-ne v2, v5, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/16 v5, 0x42

    if-ne v2, v5, :cond_2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v5, 0x41

    if-eq v2, v5, :cond_3

    .line 1242
    :cond_2
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Data is invalid (RGBA tag not found)"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    const/4 v2, 0x0

    goto :goto_0

    .line 1247
    :cond_3
    const/4 v2, 0x4

    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v20

    .line 1248
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v11

    .line 1249
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v15

    .line 1250
    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v16

    .line 1251
    const/16 v2, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v19

    .line 1252
    const/16 v2, 0x18

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    .line 1258
    :try_start_3
    move-object/from16 v0, p1

    array-length v2, v0

    mul-int v5, v20, v11

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x20

    if-ge v2, v5, :cond_4

    .line 1259
    const-string v2, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage: The buffer is too small to contain a image of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1253
    :catch_0
    move-exception v10

    .line 1254
    .local v10, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Could not parse panorama bitmap header"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1263
    .end local v10    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    if-nez v2, :cond_5

    .line 1264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_0

    .line 1280
    :pswitch_0
    const-string v2, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage - PANORAMA Invalid direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1267
    :pswitch_1
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1268
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    .line 1269
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v2, v5

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1270
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1291
    :cond_5
    :goto_1
    :try_start_4
    move-object/from16 v0, p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x8

    new-array v13, v2, [I

    .line 1292
    .local v13, "intData":[I
    const/16 v8, 0xff

    .line 1293
    .local v8, "MASK":I
    const/16 v18, 0x0

    .line 1294
    .local v18, "result":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x8

    if-ge v12, v2, :cond_6

    .line 1295
    add-int/lit8 v2, v12, 0x8

    mul-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v18, v2, 0x10

    .line 1296
    add-int/lit8 v2, v12, 0x8

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x8

    add-int v18, v18, v2

    .line 1297
    add-int/lit8 v2, v12, 0x8

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    add-int v18, v18, v2

    .line 1298
    add-int/lit8 v2, v12, 0x8

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x18

    add-int v18, v18, v2

    .line 1299
    aput v18, v13, v12
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1294
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1274
    .end local v8    # "MASK":I
    .end local v12    # "i":I
    .end local v13    # "intData":[I
    .end local v18    # "result":I
    :pswitch_2
    :try_start_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1275
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    .line 1276
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v2, v5

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1277
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1222
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1302
    .restart local v8    # "MASK":I
    .restart local v12    # "i":I
    .restart local v13    # "intData":[I
    .restart local v18    # "result":I
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_1

    .line 1353
    :pswitch_3
    const-string v2, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage - PANORAMA Invalid direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1362
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v2 .. v7}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    move-object v2, v9

    .line 1368
    goto/16 :goto_0

    .line 1304
    :pswitch_4
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    if-eq v2, v11, :cond_7

    .line 1305
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Height is different!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1356
    .end local v8    # "MASK":I
    .end local v12    # "i":I
    .end local v13    # "intData":[I
    .end local v18    # "result":I
    :catch_1
    move-exception v10

    .line 1357
    .restart local v10    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_9
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Index Control Failed!!!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1358
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1307
    .end local v10    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v8    # "MASK":I
    .restart local v12    # "i":I
    .restart local v13    # "intData":[I
    .restart local v18    # "result":I
    :cond_7
    const/16 v21, 0x0

    .local v21, "y":I
    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_8

    .line 1308
    mul-int v2, v21, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v6, v6, v21

    add-int/2addr v6, v15

    move/from16 v0, v20

    invoke-static {v13, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1307
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1310
    :cond_8
    add-int v2, v15, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    .line 1312
    const/4 v3, 0x0

    .line 1313
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1315
    goto :goto_3

    .line 1317
    .end local v21    # "y":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    if-eq v2, v11, :cond_9

    .line 1318
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Height is different!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1320
    :cond_9
    const/16 v21, 0x0

    .restart local v21    # "y":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_a

    .line 1321
    mul-int v2, v21, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v6, v6, v21

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    sub-int/2addr v7, v15

    sub-int v7, v7, v20

    add-int/2addr v6, v7

    move/from16 v0, v20

    invoke-static {v13, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1320
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 1324
    :cond_a
    add-int v2, v15, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    .line 1326
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    sub-int v3, v2, v5

    .line 1327
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1329
    goto/16 :goto_3

    .line 1331
    .end local v21    # "y":I
    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_b

    .line 1332
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Width is different!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1334
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    sub-int v7, v7, v16

    sub-int/2addr v7, v11

    mul-int/2addr v6, v7

    array-length v7, v13

    invoke-static {v13, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1335
    add-int v2, v16, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    .line 1337
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v3, v2, v5

    .line 1338
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1340
    goto/16 :goto_3

    .line 1342
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_c

    .line 1343
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Width is different!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1345
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v6, v6, v16

    array-length v7, v13

    invoke-static {v13, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1346
    add-int v2, v16, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    .line 1348
    const/4 v3, 0x0

    .line 1349
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewMaxWidth:I
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1351
    goto/16 :goto_3

    .line 1363
    :catch_2
    move-exception v17

    .line 1364
    .local v17, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_b
    const-string v2, "MotionPanoramaApp"

    const-string v5, "getPartialPanoramaImage: Out of memory [1]"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1365
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1302
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private hideCaptureTri()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1372
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1373
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1374
    return-void
.end method

.method private hideGuideText()V
    .locals 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsGuideTextDisplaying:Z

    .line 1380
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1384
    :cond_0
    return-void
.end method

.method private hideLivePreview()V
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1388
    return-void
.end method

.method private hidePreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1391
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1395
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1396
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1398
    :cond_1
    return-void
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1403
    return-void
.end method

.method private hideWarningArrow()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1408
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1410
    :cond_0
    return-void
.end method

.method private hideWarningBox()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1414
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1417
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 1418
    return-void
.end method

.method private initCoordinate([F)V
    .locals 6
    .param p1, "maxRate"    # [F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1421
    move-object v0, p1

    .line 1422
    .local v0, "panoramaMaxRate":[F
    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mHorizontalMaxCount:F

    .line 1424
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    .line 1425
    .local v2, "previewWidth":I
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    .line 1426
    .local v1, "previewHeight":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewRatio:F

    .line 1428
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    .line 1429
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mHorizontalMaxCount:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewRatio:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    .line 1430
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    .line 1432
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeHeight:F

    .line 1433
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeY:F

    .line 1435
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewRatio:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    .line 1436
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1438
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    .line 1439
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    .line 1441
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    .line 1442
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    .line 1443
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleX:F

    .line 1445
    const v3, 0x7f0a00b4

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    .line 1446
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    .line 1448
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    .line 1449
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitX:F

    .line 1450
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitY:F

    .line 1452
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    .line 1453
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewRatio:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 1454
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    .line 1455
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    .line 1457
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    .line 1458
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleHeight:F

    .line 1459
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleX:F

    .line 1461
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    .line 1462
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 1463
    return-void
.end method

.method private isCameraSwitchingAnimationRunning()Z
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    return v0
.end method

.method private isDirectionDetected()Z
    .locals 1

    .prologue
    .line 1470
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPanoramaWarning()Z
    .locals 1

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    return v0
.end method

.method private declared-synchronized isReadyToCapture()Z
    .locals 2

    .prologue
    .line 1485
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1486
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1487
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1485
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onLivePreviewData([B)V
    .locals 13
    .param p1, "data"    # [B

    .prologue
    .line 1496
    monitor-enter p0

    :try_start_0
    const-string v0, "MotionPanoramaApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData , mCaptureCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPreviousCaptureCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v5, 0x0

    .line 1499
    .local v5, "bmp":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v11, 0x2

    if-ge v0, v11, :cond_3

    .line 1500
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Integer;

    .line 1501
    .local v9, "rotation":[Ljava/lang/Integer;
    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->decodeExtendedRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1502
    if-nez v5, :cond_1

    .line 1503
    const-string v0, "MotionPanoramaApp"

    const-string v11, "Unable to decode RGBA data for live preview."

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    .end local v9    # "rotation":[Ljava/lang/Integer;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1507
    .restart local v9    # "rotation":[Ljava/lang/Integer;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {p0, v0, v11}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setPreviewThumbnailSize(II)V

    .line 1509
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewWidth:I

    .line 1510
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewHeight:I

    .line 1512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 1533
    .end local v9    # "rotation":[Ljava/lang/Integer;
    :goto_1
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    .line 1534
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v11, 0x1

    if-lt v0, v11, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v11, 0x1

    if-ge v0, v11, :cond_7

    .line 1535
    :cond_2
    const-string v0, "MotionPanoramaApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1496
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1514
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-eq v0, v11, :cond_0

    .line 1519
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_4

    .line 1520
    const-string v0, "MotionPanoramaApp"

    const-string v11, "return panorama is stopping"

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1523
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1524
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v11, 0x1

    if-ge v0, v11, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    const/4 v11, 0x1

    if-lt v0, v11, :cond_6

    .line 1525
    :cond_5
    const-string v0, "MotionPanoramaApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData : live preview rect is not visible. ignore case. mCaptureCount - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPreviousCaptureCount - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1531
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getPartialPanoramaImage([B)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    .line 1538
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {p0, v0, v11}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setPreviewThumbnailSize(II)V

    .line 1540
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviousCaptureCount:I

    .line 1542
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v11, 0x2

    if-ge v0, v11, :cond_8

    .line 1543
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 1548
    :cond_8
    const/4 v7, 0x0

    .line 1549
    .local v7, "arrowLeft":F
    const/4 v8, 0x0

    .line 1550
    .local v8, "arrowTop":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1551
    .local v1, "left":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1552
    .local v2, "top":F
    const/4 v10, 0x0

    .line 1554
    .local v10, "stopPanorama":Z
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v11, 0x2

    if-ge v0, v11, :cond_e

    .line 1555
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_b

    .line 1556
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v3, v0, v11

    .line 1557
    .local v3, "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .line 1623
    .local v4, "height":F
    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_15

    .line 1624
    :cond_a
    const-string v0, "MotionPanoramaApp"

    const-string v11, "It\'s too short image for thumbnail preview"

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1558
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_c

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v11, 0x3

    if-ne v0, v11, :cond_d

    .line 1559
    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .line 1560
    .restart local v4    # "height":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v3, v0, v11

    .restart local v3    # "width":F
    goto :goto_2

    .line 1562
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_d
    const-string v0, "MotionPanoramaApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData : invalid orientation "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1566
    :cond_e
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    cmpl-float v0, v0, v11

    if-ltz v0, :cond_f

    .line 1567
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v3, v0, v11

    .line 1568
    .restart local v3    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .line 1569
    .restart local v4    # "height":F
    const/4 v10, 0x1

    .line 1584
    :goto_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v0, :pswitch_data_0

    .line 1618
    :pswitch_0
    const-string v0, "MotionPanoramaApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PANORAMA Invalid direction: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1570
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_f
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    cmpl-float v0, v0, v11

    if-ltz v0, :cond_10

    .line 1571
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v3, v0, v11

    .line 1572
    .restart local v3    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .line 1573
    .restart local v4    # "height":F
    const/4 v10, 0x1

    goto :goto_3

    .line 1575
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v3, v0, v11

    .line 1577
    .restart local v3    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/16 v11, 0x8

    if-eq v0, v11, :cond_11

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v11, 0x4

    if-ne v0, v11, :cond_12

    .line 1578
    :cond_11
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v0

    .line 1581
    :cond_12
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .restart local v4    # "height":F
    goto :goto_3

    .line 1586
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    const v11, 0x7f0a00b6

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    add-float v7, v0, v11

    .line 1587
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    sub-float/2addr v0, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v0, v11

    .line 1588
    goto/16 :goto_2

    .line 1591
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v0, v11

    sub-float v1, v0, v3

    .line 1592
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    sub-float/2addr v0, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v11

    sub-float/2addr v0, v11

    const v11, 0x7f0a00b6

    .line 1593
    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    sub-float v7, v0, v11

    .line 1594
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    sub-float/2addr v0, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v0, v11

    .line 1595
    goto/16 :goto_2

    .line 1598
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/16 v11, 0x320

    if-ne v0, v11, :cond_13

    .line 1599
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v0, v11

    const/high16 v11, 0x44480000    # 800.0f

    div-float v4, v0, v11

    .line 1600
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v4

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v2, v0, v11

    .line 1602
    :cond_13
    const v0, 0x7f0a00b6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    add-float v8, v4, v0

    .line 1603
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v11

    sub-float/2addr v0, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v7, v0, v11

    .line 1604
    goto/16 :goto_2

    .line 1607
    :pswitch_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v0, v11

    sub-float v2, v0, v4

    .line 1609
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/16 v11, 0x320

    if-ne v0, v11, :cond_14

    .line 1610
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v0, v11

    const/high16 v11, 0x44480000    # 800.0f

    div-float v4, v0, v11

    .line 1611
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v4

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v2, v0, v11

    .line 1613
    :cond_14
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    mul-float/2addr v11, v12

    sub-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_WIDTH:F

    sub-float/2addr v0, v11

    sub-float/2addr v0, v4

    const v11, 0x7f0a00b6

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    sub-float v8, v0, v11

    .line 1614
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v11

    sub-float/2addr v0, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v7, v0, v11

    .line 1615
    goto/16 :goto_2

    :cond_15
    move-object v0, p0

    .line 1627
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewGroup(FFFFLandroid/graphics/Bitmap;)V

    .line 1629
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/16 v11, 0x31f

    if-ge v0, v11, :cond_1b

    .line 1630
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v11, 0x1

    if-le v0, v11, :cond_19

    .line 1632
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 1637
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_16

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_17

    .line 1638
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x0

    aget-object v6, v0, v11

    .line 1643
    .local v6, "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1644
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1646
    if-eqz v10, :cond_19

    .line 1647
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_18

    .line 1648
    const-string v0, "MotionPanoramaApp"

    const-string v11, "already Stopping..."

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1640
    .end local v6    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x1

    aget-object v6, v0, v11

    .restart local v6    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    goto :goto_4

    .line 1651
    :cond_18
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    .line 1670
    .end local v6    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_19
    :goto_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_1a

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_1f

    .line 1671
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    goto/16 :goto_0

    .line 1655
    :cond_1b
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_1c

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_1d

    .line 1656
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1661
    :goto_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/16 v11, 0x31f

    if-ne v0, v11, :cond_19

    .line 1662
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_1e

    .line 1663
    const-string v0, "MotionPanoramaApp"

    const-string v11, "already Stopping..."

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1658
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x1

    aget-object v0, v0, v11

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 1666
    :cond_1e
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    goto :goto_5

    .line 1673
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x1

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private panoramaDirectionChanged(I)V
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1679
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isDirectionDetected()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1680
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 1703
    :goto_0
    const/4 v1, 0x0

    .line 1704
    .local v1, "isHorizontalCapturing":Z
    packed-switch p1, :pswitch_data_1

    .line 1726
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    if-eq v5, v3, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    if-ne v5, v9, :cond_1

    .line 1727
    :cond_0
    if-nez v1, :cond_6

    move v1, v3

    .line 1730
    :cond_1
    :goto_2
    if-eqz v1, :cond_7

    .line 1731
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v5, 0x189e

    const-string v6, "1000"

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    .line 1736
    :goto_3
    if-eqz p1, :cond_4

    .line 1737
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isDirectionDetected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1738
    const/4 v2, 0x0

    .local v2, "width":F
    const/4 v0, 0x0

    .line 1739
    .local v0, "height":F
    if-eq p1, v7, :cond_2

    const/16 v4, 0x8

    if-ne p1, v4, :cond_8

    .line 1740
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    .line 1741
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 1742
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1748
    :cond_3
    :goto_4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    .line 1749
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1750
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 1753
    .end local v0    # "height":F
    .end local v2    # "width":F
    :cond_4
    return-void

    .line 1683
    .end local v1    # "isHorizontalCapturing":Z
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1684
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1685
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1686
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v9

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1690
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v4

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1691
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1692
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1693
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v9

    invoke-virtual {v5, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1697
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v4

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1698
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1699
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1700
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v9

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 1706
    .restart local v1    # "isHorizontalCapturing":Z
    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v3

    const v6, 0x7f020168

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1707
    const-string v5, "2132"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1710
    :pswitch_4
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v3

    const v6, 0x7f020165

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1711
    const-string v5, "2131"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1714
    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v4

    const v6, 0x7f020166

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1715
    const-string v5, "2133"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 1716
    const/4 v1, 0x1

    .line 1717
    goto/16 :goto_1

    .line 1719
    :pswitch_6
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v4

    const v6, 0x7f020167

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1720
    const-string v5, "2134"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 1721
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    .line 1727
    goto/16 :goto_2

    .line 1733
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v5, 0x189e

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1743
    .restart local v0    # "height":F
    .restart local v2    # "width":F
    :cond_8
    if-eq p1, v3, :cond_9

    if-ne p1, v8, :cond_3

    .line 1744
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    .line 1745
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1746
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    goto/16 :goto_4

    .line 1680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1704
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private panoramaMoveSlowly()V
    .locals 2

    .prologue
    .line 1756
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1757
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showGuideText()V

    .line 1759
    :cond_0
    return-void
.end method

.method private panoramaRectChanged(II)V
    .locals 28
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1762
    const/4 v9, 0x0

    .line 1763
    .local v9, "rect_x":F
    const/4 v10, 0x0

    .line 1764
    .local v10, "rect_y":F
    const/4 v11, 0x0

    .line 1766
    .local v11, "startOffsetPosition":F
    const/4 v4, 0x0

    .line 1767
    .local v4, "arrow_x":F
    const/4 v5, 0x0

    .line 1769
    .local v5, "arrow_y":F
    const/4 v7, 0x0

    .line 1770
    .local v7, "baseW":F
    const/4 v6, 0x0

    .line 1772
    .local v6, "baseH":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v15}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v8, v15

    .line 1776
    .local v8, "previewSurfaceX":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v15, :pswitch_data_0

    .line 2074
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1778
    :pswitch_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    .line 1779
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 1780
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move/from16 v24, v0

    add-float v15, v15, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    move/from16 v24, v0

    sub-float v11, v15, v24

    .line 1781
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v7

    div-float v24, v24, v25

    add-float v9, v15, v24

    .line 1782
    move/from16 v0, p2

    neg-int v15, v0

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v6

    div-float v15, v15, v24

    add-float v10, v11, v15

    .line 1809
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v15

    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v15, v0, :cond_0

    .line 1812
    const/4 v14, 0x0

    .line 1814
    .local v14, "warningLevel":I
    move/from16 v0, p1

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v7

    div-float v15, v15, v24

    float-to-double v0, v15

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    .line 1815
    .local v16, "xDistance":D
    move/from16 v0, p2

    neg-int v15, v0

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v6

    div-float v15, v15, v24

    float-to-double v0, v15

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    .line 1816
    .local v20, "yDistance":D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v15, :pswitch_data_1

    .line 1829
    :goto_2
    :pswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v15, v0, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v15, v0, :cond_7

    if-gez p2, :cond_7

    .line 1830
    :cond_2
    const-wide/16 v20, 0x0

    .line 1834
    :cond_3
    :goto_3
    float-to-double v0, v7

    move-wide/from16 v24, v0

    div-double v24, v16, v24

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v18, v24, v26

    .line 1835
    .local v18, "xDistanceRate":D
    float-to-double v0, v6

    move-wide/from16 v24, v0

    div-double v24, v20, v24

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v22, v24, v26

    .line 1836
    .local v22, "yDistanceRate":D
    move-wide/from16 v0, v18

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 1838
    .local v12, "totalDistance":D
    const-string v15, "MotionPanoramaApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "panoramaRectChanged: Direction:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", x Distance:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", y Distance:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v15, :pswitch_data_2

    :pswitch_3
    goto/16 :goto_0

    .line 1958
    :pswitch_4
    const-wide/high16 v24, 0x403e000000000000L    # 30.0

    cmpg-double v15, v12, v24

    if-gez v15, :cond_16

    .line 1959
    const/4 v14, 0x0

    .line 1965
    :goto_4
    const/4 v15, 0x1

    if-ne v14, v15, :cond_18

    .line 1966
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1967
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1968
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1971
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    if-nez v15, :cond_5

    .line 1972
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x12c

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x12c

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1974
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x12c

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1975
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x12c

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1977
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1978
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1979
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1980
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1981
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessage(I)Z

    .line 2006
    :cond_5
    :goto_5
    const/4 v15, 0x1

    if-lt v14, v15, :cond_1e

    .line 2008
    cmpl-double v15, v18, v22

    if-lez v15, :cond_1c

    .line 2009
    if-lez p1, :cond_1b

    .line 2010
    const-string v15, "MotionPanoramaApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v15

    sub-float v15, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v24, v0

    sub-float v4, v15, v24

    .line 2013
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v24

    sub-float v15, v15, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v15, v15, v24

    add-float v5, v10, v15

    .line 2014
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2016
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2018
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2019
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2058
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 2060
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 1785
    .end local v12    # "totalDistance":D
    .end local v14    # "warningLevel":I
    .end local v16    # "xDistance":D
    .end local v18    # "xDistanceRate":D
    .end local v20    # "yDistance":D
    .end local v22    # "yDistanceRate":D
    :pswitch_5
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    .line 1786
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    .line 1787
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    move/from16 v24, v0

    add-float v15, v15, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v24

    sub-float v11, v15, v24

    .line 1788
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v7

    div-float v24, v24, v25

    add-float v9, v15, v24

    .line 1789
    move/from16 v0, p2

    neg-int v15, v0

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v6

    div-float v15, v15, v24

    add-float v10, v11, v15

    .line 1790
    goto/16 :goto_1

    .line 1792
    :pswitch_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 1793
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1794
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    move/from16 v24, v0

    add-float v15, v15, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    move/from16 v24, v0

    sub-float v15, v15, v24

    add-float v11, v15, v8

    .line 1795
    move/from16 v0, p1

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v7

    div-float v15, v15, v24

    add-float v9, v11, v15

    .line 1796
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v6

    div-float v24, v24, v25

    add-float v10, v15, v24

    .line 1797
    goto/16 :goto_1

    .line 1799
    :pswitch_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeRectWidth:F

    .line 1800
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    .line 1801
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    move/from16 v24, v0

    add-float v15, v15, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    move/from16 v24, v0

    sub-float v15, v15, v24

    add-float v11, v15, v8

    .line 1802
    move/from16 v0, p1

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v7

    div-float v15, v15, v24

    add-float v9, v11, v15

    .line 1803
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v6

    div-float v24, v24, v25

    add-float v10, v15, v24

    .line 1804
    goto/16 :goto_1

    .line 1819
    .restart local v14    # "warningLevel":I
    .restart local v16    # "xDistance":D
    .restart local v20    # "yDistance":D
    :pswitch_8
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v20, v20, v24

    .line 1820
    goto/16 :goto_2

    .line 1823
    :pswitch_9
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v16, v16, v24

    .line 1824
    goto/16 :goto_2

    .line 1831
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_8

    if-gtz p1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v15, v0, :cond_3

    if-gez p1, :cond_3

    .line 1832
    :cond_9
    const-wide/16 v16, 0x0

    goto/16 :goto_3

    .line 1843
    .restart local v12    # "totalDistance":D
    .restart local v18    # "xDistanceRate":D
    .restart local v22    # "yDistanceRate":D
    :pswitch_a
    const-wide/high16 v24, 0x403e000000000000L    # 30.0

    cmpg-double v15, v12, v24

    if-gez v15, :cond_d

    .line 1844
    const/4 v14, 0x0

    .line 1850
    :goto_7
    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 1851
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1852
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1853
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1856
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    if-nez v15, :cond_b

    .line 1857
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x12c

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x12c

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x12c

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x12c

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1862
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1863
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1864
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1865
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1866
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessage(I)Z

    .line 1891
    :cond_b
    :goto_8
    const/4 v15, 0x1

    if-lt v14, v15, :cond_15

    .line 1892
    cmpl-double v15, v22, v18

    if-lez v15, :cond_13

    .line 1893
    if-lez p2, :cond_12

    .line 1894
    const-string v15, "MotionPanoramaApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v24

    sub-float v15, v15, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v15, v15, v24

    add-float v4, v9, v15

    .line 1897
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v15

    add-float/2addr v15, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v24, v0

    add-float v5, v15, v24

    .line 1898
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1901
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1942
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1945
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 1845
    :cond_d
    const-wide/high16 v24, 0x4049000000000000L    # 50.0

    cmpg-double v15, v12, v24

    if-gez v15, :cond_e

    .line 1846
    const/4 v14, 0x1

    goto/16 :goto_7

    .line 1848
    :cond_e
    const/4 v14, 0x2

    goto/16 :goto_7

    .line 1868
    :cond_f
    const/4 v15, 0x2

    if-ne v14, v15, :cond_11

    .line 1869
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1870
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1871
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1874
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    if-nez v15, :cond_b

    .line 1875
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x96

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x96

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x96

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x96

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1880
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1881
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1882
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1883
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1884
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 1887
    :cond_11
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1888
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    goto/16 :goto_8

    .line 1906
    :cond_12
    const-string v15, "MotionPanoramaApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v24

    sub-float v15, v15, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v15, v15, v24

    add-float v4, v9, v15

    .line 1909
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v15

    sub-float v15, v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v24, v0

    sub-float v5, v15, v24

    .line 1910
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1915
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1919
    :cond_13
    if-lez p1, :cond_14

    .line 1920
    const-string v15, "MotionPanoramaApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v15

    sub-float v15, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v24, v0

    sub-float v4, v15, v24

    .line 1923
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v24

    sub-float v15, v15, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v15, v15, v24

    add-float v5, v10, v15

    .line 1924
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1927
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1930
    :cond_14
    if-gez p1, :cond_c

    .line 1931
    const-string v15, "MotionPanoramaApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v15

    add-float/2addr v15, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v24, v0

    add-float v4, v15, v24

    .line 1934
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v24

    sub-float v15, v15, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v15, v15, v24

    add-float v5, v10, v15

    .line 1935
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1940
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1947
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1949
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setGuideTextLocation()V

    .line 1951
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningArrow()V

    .line 1952
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningBox()V

    goto/16 :goto_0

    .line 1960
    :cond_16
    const-wide/high16 v24, 0x4049000000000000L    # 50.0

    cmpg-double v15, v12, v24

    if-gez v15, :cond_17

    .line 1961
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 1963
    :cond_17
    const/4 v14, 0x2

    goto/16 :goto_4

    .line 1983
    :cond_18
    const/4 v15, 0x2

    if-ne v14, v15, :cond_1a

    .line 1984
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 1985
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1986
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1989
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    if-nez v15, :cond_5

    .line 1990
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x96

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x96

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x96

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1993
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x96

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1995
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1996
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1997
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1998
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 1999
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 2002
    :cond_1a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 2003
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    goto/16 :goto_5

    .line 2022
    :cond_1b
    const-string v15, "MotionPanoramaApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v15

    add-float/2addr v15, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v24, v0

    add-float v4, v15, v24

    .line 2025
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v24

    sub-float v15, v15, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v15, v15, v24

    add-float v5, v10, v15

    .line 2026
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2028
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 2033
    :cond_1c
    if-gez p2, :cond_1d

    .line 2034
    const-string v15, "MotionPanoramaApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v24

    sub-float v15, v15, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v15, v15, v24

    add-float v4, v9, v15

    .line 2037
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v15

    sub-float v15, v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v24, v0

    sub-float v5, v15, v24

    .line 2038
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2041
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2042
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 2046
    :cond_1d
    if-lez p2, :cond_6

    .line 2047
    const-string v15, "MotionPanoramaApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v24

    sub-float v15, v15, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v15, v15, v24

    add-float v4, v9, v15

    .line 2050
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v15

    add-float/2addr v15, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v24, v0

    add-float v5, v15, v24

    .line 2051
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2053
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x0

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x1

    aget-object v15, v15, v24

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2055
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x2

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v24, 0x3

    aget-object v15, v15, v24

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 2062
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v15, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 2065
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setGuideTextLocation()V

    .line 2067
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningArrow()V

    .line 2068
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningBox()V

    goto/16 :goto_0

    .line 1776
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1816
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_8
    .end packed-switch

    .line 1840
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method private playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V
    .locals 2
    .param p1, "sound"    # Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 2078
    return-void
.end method

.method private removeTempFile()V
    .locals 6

    .prologue
    .line 2085
    const-string v3, "MotionPanoramaApp"

    const-string v4, "removeTempFile"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .line 2087
    .local v0, "directory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "motionpanorama.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2089
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2093
    :goto_0
    return-void

    .line 2090
    :catch_0
    move-exception v1

    .line 2091
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "MotionPanoramaApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 2096
    const-string v0, "MotionPanoramaApp"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clear()V

    .line 2099
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 2100
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setPreviewThumbnailSizeToDefault()V

    .line 2102
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V

    .line 2103
    return-void
.end method

.method private restartCancelTimer()V
    .locals 0

    .prologue
    .line 2106
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopCancelTimer()V

    .line 2107
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->startCancelTimer()V

    .line 2108
    return-void
.end method

.method private saveAudio(Ljava/lang/String;)V
    .locals 8
    .param p1, "outputFileName"    # Ljava/lang/String;

    .prologue
    .line 2111
    const-string v5, "MotionPanoramaApp"

    const-string v6, "saveAudio"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 2114
    .local v1, "directory":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "motionpanorama.aac"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2116
    .local v0, "audioPath":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2117
    .local v4, "sefFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2118
    .local v3, "sefDataFile":Ljava/io/File;
    const-string v5, "Motion_Panorama_AAC_000"

    const/16 v6, 0x104

    const/4 v7, 0x1

    invoke-static {v4, v5, v3, v6, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    .end local v3    # "sefDataFile":Ljava/io/File;
    .end local v4    # "sefFile":Ljava/io/File;
    :goto_0
    return-void

    .line 2119
    :catch_0
    move-exception v2

    .line 2120
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "MotionPanoramaApp"

    const-string v6, "error while addSEFData in MotionPanorama"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAlphaArrow(Lcom/samsung/android/glview/GLView;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 2126
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2127
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2128
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2131
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2132
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 2133
    return-void
.end method

.method private declared-synchronized setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 2136
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    .line 2137
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    .line 2139
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased - mCaptureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    monitor-exit p0

    return-void

    .line 2136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setEnterOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 2143
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnterOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    .line 2145
    return-void
.end method

.method private setGuideTextLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x2

    .line 2153
    const/4 v6, 0x0

    .line 2154
    .local v6, "textX":F
    const/4 v7, 0x0

    .line 2155
    .local v7, "textY":F
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    .line 2156
    .local v5, "textW":F
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    .line 2157
    .local v4, "textH":F
    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->GUIDE_TEXT_MARGIN:F

    .line 2159
    .local v8, "text_margin":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    if-nez v9, :cond_0

    .line 2160
    const-string v9, "MotionPanoramaApp"

    const-string v10, "setGuideTextLocation : LivePreview is null!"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :goto_0
    return-void

    .line 2164
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getTranslateX()F

    move-result v2

    .line 2165
    .local v2, "rectX":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getTranslateY()F

    move-result v3

    .line 2166
    .local v3, "rectY":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v1

    .line 2167
    .local v1, "rectW":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v0

    .line 2169
    .local v0, "rectH":F
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v9, :pswitch_data_0

    .line 2224
    :goto_1
    :pswitch_0
    const-string v9, "MotionPanoramaApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setGuideTextLocation : Orientation-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Direction -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    const-string v9, "MotionPanoramaApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setGuideTextLocation : Box x("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), y("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), w("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), h("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    const-string v9, "MotionPanoramaApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setGuideTextLocation : text x("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), y("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), w("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), h("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v6, v7}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 2172
    :pswitch_1
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_1

    .line 2174
    :pswitch_2
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2175
    add-float v9, v2, v1

    add-float v6, v9, v8

    .line 2176
    sub-float v9, v0, v4

    div-float/2addr v9, v11

    add-float v7, v3, v9

    .line 2177
    goto/16 :goto_1

    .line 2179
    :pswitch_3
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2180
    add-float v9, v2, v1

    add-float/2addr v9, v4

    add-float v6, v9, v8

    .line 2181
    sub-float v9, v5, v0

    div-float/2addr v9, v11

    sub-float v7, v3, v9

    .line 2182
    goto/16 :goto_1

    .line 2184
    :pswitch_4
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2185
    sub-float v6, v2, v8

    .line 2186
    add-float v9, v3, v0

    sub-float v10, v0, v4

    div-float/2addr v10, v11

    add-float v7, v9, v10

    .line 2187
    goto/16 :goto_1

    .line 2189
    :pswitch_5
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2190
    sub-float v9, v2, v4

    sub-float v6, v9, v8

    .line 2191
    add-float v9, v3, v0

    sub-float v10, v5, v0

    div-float/2addr v10, v11

    add-float v7, v9, v10

    goto/16 :goto_1

    .line 2198
    :pswitch_6
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v9, :pswitch_data_2

    goto/16 :goto_1

    .line 2200
    :pswitch_7
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2201
    sub-float v9, v1, v5

    div-float/2addr v9, v11

    add-float v6, v2, v9

    .line 2202
    sub-float v9, v3, v4

    sub-float v7, v9, v8

    .line 2203
    goto/16 :goto_1

    .line 2205
    :pswitch_8
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2206
    add-float v9, v2, v1

    sub-float v10, v1, v4

    div-float/2addr v10, v11

    sub-float v6, v9, v10

    .line 2207
    add-float v9, v3, v0

    add-float v7, v9, v8

    .line 2208
    goto/16 :goto_1

    .line 2210
    :pswitch_9
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2211
    add-float v9, v2, v1

    sub-float v10, v5, v1

    div-float/2addr v10, v11

    add-float v6, v9, v10

    .line 2212
    add-float v9, v3, v0

    add-float/2addr v9, v4

    add-float v7, v9, v8

    .line 2213
    goto/16 :goto_1

    .line 2215
    :pswitch_a
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 2216
    sub-float v9, v1, v4

    div-float/2addr v9, v11

    add-float v6, v2, v9

    .line 2217
    sub-float v7, v3, v8

    goto/16 :goto_1

    .line 2169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2172
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2198
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2237
    const-string v0, "MotionPanoramaApp"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    return-void
.end method

.method private setMotionPanoramaEnabled(I)V
    .locals 4
    .param p1, "modeId"    # I

    .prologue
    const/4 v3, 0x1

    .line 2241
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionPanoramaMode - modeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    if-ne p1, v3, :cond_0

    .line 2244
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    .line 2248
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionPanoramaMode(Z)V

    .line 2249
    return-void

    .line 2246
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    goto :goto_0
.end method

.method private setOutputFile()V
    .locals 7

    .prologue
    .line 2255
    const-string v4, "MotionPanoramaApp"

    const-string v5, "setOutputFile"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 2258
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2259
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2260
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2261
    const-string v4, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to Create Directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 2267
    new-instance v0, Ljava/io/File;

    .end local v0    # "cameraDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2268
    .restart local v0    # "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2269
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2270
    const-string v4, "MotionPanoramaApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to Create Directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v5, -0xa

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 2286
    :goto_0
    return-void

    .line 2276
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "motionpanorama.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2277
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2278
    .local v3, "preFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2279
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2280
    const-string v4, "MotionPanoramaApp"

    const-string v5, "temp file was deleted"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 2289
    monitor-enter p0

    :try_start_0
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    monitor-exit p0

    return-void

    .line 2289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPreviewThumbnailSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2294
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-lez v1, :cond_0

    .line 2295
    const-string v1, "MotionPanoramaApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewThumbnailSize : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_0

    .line 2313
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    .line 2314
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    .line 2318
    :goto_0
    return-void

    .line 2302
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 2303
    .local v0, "Ratio":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    .line 2304
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    goto :goto_0

    .line 2308
    .end local v0    # "Ratio":F
    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 2309
    .restart local v0    # "Ratio":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    .line 2310
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    goto :goto_0

    .line 2299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setPreviewThumbnailSizeToDefault()V
    .locals 1

    .prologue
    .line 2321
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    .line 2322
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    .line 2323
    return-void
.end method

.method private showGuideText()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 2326
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 2327
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsGuideTextDisplaying:Z

    if-eqz v0, :cond_2

    .line 2328
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    if-eqz v0, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2335
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    if-eqz v0, :cond_1

    .line 2336
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2339
    :cond_1
    return-void

    .line 2332
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsGuideTextDisplaying:Z

    goto :goto_0
.end method

.method private showPanoramaToastPopup(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2358
    return-void
.end method

.method private showPreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2361
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 2362
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2365
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateArrow()V

    .line 2367
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 2381
    :cond_1
    return-void

    .line 2370
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2371
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2376
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 2377
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showStopButton()V
    .locals 2

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2385
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 2386
    return-void
.end method

.method private startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2389
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2392
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2393
    return-void
.end method

.method private startSoundRecording()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 2396
    const-string v0, "MotionPanoramaApp"

    const-string v3, "startSoundRecording"

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    if-eqz v0, :cond_0

    .line 2432
    :goto_0
    return-void

    .line 2401
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2402
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isAudioRecordAllowed"

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "false"

    aput-object v10, v4, v5

    move-object v5, v2

    .line 2403
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2404
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2405
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2406
    const-string v0, "isAudioRecordAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2407
    const-string v0, "MotionPanoramaApp"

    const-string v2, "Audio record not allowed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2411
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2415
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v7

    .line 2416
    .local v7, "directory":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "motionpanorama.aac"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2418
    .local v9, "path":Ljava/lang/String;
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2420
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2421
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2422
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 2423
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v9}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 2425
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2430
    .end local v7    # "directory":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    :goto_1
    iput-boolean v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    .line 2431
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->disableAlertSound(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2426
    :catch_0
    move-exception v8

    .line 2427
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "MotionPanoramaApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSoundRecording : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopCancelTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2435
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2438
    :cond_0
    return-void
.end method

.method private stopPanoramaCapturing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2441
    const-string v0, "MotionPanoramaApp"

    const-string v1, "stopPanoramaCapturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2443
    const-string v0, "MotionPanoramaApp"

    const-string v1, "current is not Capturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    :goto_0
    return-void

    .line 2446
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    .line 2448
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    if-eqz v0, :cond_1

    .line 2449
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopSoundRecording()V

    .line 2452
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopMotionPanorama()V

    .line 2453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSendCompletedMessageToBixby()V

    .line 2454
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideCaptureTri()V

    .line 2456
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCatureStarting:Z

    .line 2457
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 2458
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    .line 2459
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    .line 2460
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    goto :goto_0
.end method

.method private stopPanoramaSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 2464
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2465
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2468
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    .line 2469
    return-void
.end method

.method private stopSoundRecording()V
    .locals 4

    .prologue
    .line 2472
    const-string v1, "MotionPanoramaApp"

    const-string v2, "stopSoundRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    if-nez v1, :cond_0

    .line 2489
    :goto_0
    return-void

    .line 2479
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 2480
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 2481
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 2482
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2487
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecording:Z

    .line 2488
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->enableAlertSound(Landroid/content/Context;)V

    goto :goto_0

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MotionPanoramaApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSoundRecording : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateArrow()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 2492
    const v1, 0x7f0a00b6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    .line 2494
    .local v0, "triOffset":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 2512
    :goto_0
    return-void

    .line 2497
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v8

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v8

    .line 2498
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 2497
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2499
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v7

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v7

    .line 2500
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 2499
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 2505
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v5

    .line 2506
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    .line 2505
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2507
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v9

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 2494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLivePreviewGroup(FFFFLandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2515
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2516
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 2517
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p5}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2518
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FFZ)V

    .line 2519
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 2521
    :cond_0
    monitor-exit v1

    .line 2522
    return-void

    .line 2521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized updateLivePreviewLayout(Z)V
    .locals 51
    .param p1, "detectedDirection"    # Z

    .prologue
    .line 2529
    monitor-enter p0

    :try_start_0
    const-string v6, "MotionPanoramaApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLivePreviewLayout - mCaptureCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", direction:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v9, 0x2

    if-ge v6, v9, :cond_6

    if-nez p1, :cond_6

    .line 2536
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V

    .line 2538
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 2539
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 2540
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleX:F

    move/from16 v25, v0

    .line 2541
    .local v25, "groupX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleY:F

    move/from16 v26, v0

    .line 2542
    .local v26, "groupY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    move/from16 v24, v0

    .line 2543
    .local v24, "groupW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    move/from16 v21, v0

    .line 2544
    .local v21, "groupH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    move/from16 v42, v0

    .line 2545
    .local v42, "rectW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    move/from16 v41, v0

    .line 2559
    .local v41, "rectH":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2560
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v9, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2561
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2562
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2564
    sget-object v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2565
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_1

    .line 2566
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2567
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2569
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2770
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v41    # "rectH":F
    .end local v42    # "rectW":F
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 2547
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v9, 0x1

    if-eq v6, v9, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_5

    .line 2548
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleX:F

    move/from16 v25, v0

    .line 2549
    .restart local v25    # "groupX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleY:F

    move/from16 v26, v0

    .line 2550
    .restart local v26    # "groupY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    move/from16 v24, v0

    .line 2551
    .restart local v24    # "groupW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    move/from16 v21, v0

    .line 2552
    .restart local v21    # "groupH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleWidth:F

    move/from16 v42, v0

    .line 2553
    .restart local v42    # "rectW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitSingleHeight:F

    move/from16 v41, v0

    .restart local v41    # "rectH":F
    goto/16 :goto_0

    .line 2555
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v41    # "rectH":F
    .end local v42    # "rectW":F
    :cond_5
    const-string v6, "MotionPanoramaApp"

    const-string v9, "updateLivePreviewLayout: Invalid orientation"

    invoke-static {v6, v9}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2529
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2569
    .restart local v21    # "groupH":F
    .restart local v24    # "groupW":F
    .restart local v25    # "groupX":F
    .restart local v26    # "groupY":F
    .restart local v41    # "rectH":F
    .restart local v42    # "rectW":F
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6

    .line 2570
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v41    # "rectH":F
    .end local v42    # "rectW":F
    :cond_6
    if-eqz p1, :cond_2

    .line 2571
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hidePreviewGroup()V

    .line 2572
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2573
    sget-object v9, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2574
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-nez v6, :cond_7

    .line 2575
    const-string v6, "MotionPanoramaApp"

    const-string v10, "updateLivePreviewLayout: LivePreview is null yet. ignore"

    invoke-static {v6, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    monitor-exit v9

    goto :goto_1

    .line 2578
    :catchall_2
    move-exception v6

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2579
    :try_start_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2580
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showStopButton()V

    .line 2588
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v49, v6, v9

    .line 2589
    .local v49, "widthFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v28, v6, v9

    .line 2591
    .local v28, "heightFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v36, v6, v9

    .line 2592
    .local v36, "oldLeftGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v38, v6, v9

    .line 2593
    .local v38, "oldTopGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v39

    .line 2594
    .local v39, "oldWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v34

    .line 2595
    .local v34, "oldHeight":F
    const/16 v30, 0x1

    .line 2597
    .local v30, "landscape":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v6

    move/from16 v40, v0

    .line 2599
    .local v40, "previewSurfaceX":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v48, v6, v9

    .line 2600
    .local v48, "width":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v27, v6, v9

    .line 2602
    .local v27, "height":F
    sget-object v50, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v50
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2604
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getLeft()F

    move-result v35

    .line 2605
    .local v35, "oldLeft":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getTop()F

    move-result v37

    .line 2607
    .local v37, "oldTop":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mDetectedDirection:I

    packed-switch v6, :pswitch_data_0

    .line 2706
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v18, v36, v6

    .line 2707
    .local v18, "fromXDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v20, v38, v6

    .line 2708
    .local v20, "fromYDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v6, v36, v6

    add-float v35, v35, v6

    .line 2709
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getLeft()F

    move-result v6

    sub-float v17, v35, v6

    .line 2710
    .local v17, "fromXDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v6, v38, v6

    add-float v37, v37, v6

    .line 2711
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getTop()F

    move-result v6

    sub-float v19, v37, v6

    .line 2712
    .local v19, "fromYDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    div-float v5, v39, v6

    .line 2713
    .local v5, "scaleX":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v6

    div-float v7, v34, v6

    .line 2715
    .local v7, "scaleY":F
    new-instance v29, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v29 .. v29}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2720
    .local v29, "interpol":Landroid/view/animation/Interpolator;
    if-eqz v30, :cond_8

    .line 2721
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2722
    .local v4, "animRect":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2723
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    .line 2722
    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2724
    const-wide/16 v10, 0xb2

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2725
    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2726
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2727
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2754
    :goto_3
    new-instance v45, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2755
    .local v45, "ta":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2756
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    .line 2755
    move-object/from16 v0, v45

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2757
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v45

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2758
    const-wide/16 v10, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2759
    const/4 v6, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2760
    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2762
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->resetClipRect()V

    .line 2763
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v4}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2764
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2766
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    .line 2767
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 2768
    monitor-exit v50

    goto/16 :goto_1

    .end local v4    # "animRect":Landroid/view/animation/Animation;
    .end local v5    # "scaleX":F
    .end local v7    # "scaleY":F
    .end local v17    # "fromXDelta":F
    .end local v18    # "fromXDeltaRect":F
    .end local v19    # "fromYDelta":F
    .end local v20    # "fromYDeltaRect":F
    .end local v29    # "interpol":Landroid/view/animation/Interpolator;
    .end local v35    # "oldLeft":F
    .end local v37    # "oldTop":F
    .end local v45    # "ta":Landroid/view/animation/Animation;
    :catchall_3
    move-exception v6

    monitor-exit v50
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2609
    .restart local v35    # "oldLeft":F
    .restart local v37    # "oldTop":F
    :pswitch_1
    const/16 v22, 0x0

    .line 2610
    .local v22, "groupLeft":F
    const/16 v23, 0x0

    .line 2611
    .local v23, "groupTop":F
    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    add-float v44, v6, v9

    .line 2612
    .local v44, "startOffsetPosition":F
    move/from16 v32, v44

    .line 2613
    .local v32, "leftFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float v22, v6, v40

    .line 2614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    move/from16 v23, v0

    .line 2615
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v47, v6, v9

    .line 2617
    .local v47, "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v9, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2618
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2619
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2621
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2623
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 2624
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v48

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 2627
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2629
    add-float v6, v32, v49

    const/high16 v9, 0x41400000    # 12.0f

    sub-float v48, v6, v9

    .line 2630
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v48

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2631
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2635
    .end local v22    # "groupLeft":F
    .end local v23    # "groupTop":F
    .end local v32    # "leftFocus":F
    .end local v44    # "startOffsetPosition":F
    .end local v47    # "topFocus":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailWidth:F

    sub-float v44, v6, v9

    .line 2636
    .restart local v44    # "startOffsetPosition":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    sub-float v31, v6, v48

    .line 2637
    .local v31, "left":F
    move/from16 v32, v44

    .line 2638
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float v22, v6, v40

    .line 2639
    .restart local v22    # "groupLeft":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    move/from16 v23, v0

    .line 2640
    .restart local v23    # "groupTop":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeY:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v47, v6, v9

    .line 2642
    .restart local v47    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2643
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v9, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2644
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2648
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v31

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 2649
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v48

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 2651
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2653
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v49, v6

    sub-float v6, v32, v6

    const/high16 v9, 0x41400000    # 12.0f

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v48, v6, v9

    .line 2654
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/high16 v9, 0x42200000    # 40.0f

    add-float v9, v9, v48

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeHeight:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2659
    .end local v22    # "groupLeft":F
    .end local v23    # "groupTop":F
    .end local v31    # "left":F
    .end local v32    # "leftFocus":F
    .end local v44    # "startOffsetPosition":F
    .end local v47    # "topFocus":F
    :pswitch_3
    const/16 v30, 0x0

    .line 2660
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v6, v6, v27

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v46, v6, v9

    .line 2661
    .local v46, "top":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    neg-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    sub-float v44, v6, v9

    .line 2662
    .restart local v44    # "startOffsetPosition":F
    move/from16 v47, v44

    .line 2663
    .restart local v47    # "topFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 2665
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2667
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2669
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2671
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 2672
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    const/4 v9, 0x0

    move/from16 v0, v46

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 2674
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2677
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v28, v6

    sub-float v6, v46, v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->TRI_HEIGHT:F

    sub-float/2addr v6, v9

    const/high16 v9, 0x41b00000    # 22.0f

    sub-float v27, v6, v9

    .line 2678
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2679
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2683
    .end local v32    # "leftFocus":F
    .end local v44    # "startOffsetPosition":F
    .end local v46    # "top":F
    .end local v47    # "topFocus":F
    :pswitch_4
    const/16 v30, 0x0

    .line 2684
    const/16 v46, 0x0

    .line 2685
    .restart local v46    # "top":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x41100000    # 9.0f

    div-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    add-float v28, v6, v9

    .line 2686
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPreviewThumbnailHeight:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewLandscapeSingleHeight:F

    sub-float v44, v6, v9

    .line 2687
    .restart local v44    # "startOffsetPosition":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 2688
    .restart local v32    # "leftFocus":F
    move/from16 v47, v44

    .line 2690
    .restart local v47    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2691
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2692
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2693
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2695
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 2696
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    const/4 v9, 0x0

    move/from16 v0, v46

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 2698
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2700
    add-float v6, v27, v28

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v28, v9

    sub-float v27, v6, v9

    .line 2701
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivepreviewPortraitRectWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2702
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2729
    .end local v32    # "leftFocus":F
    .end local v44    # "startOffsetPosition":F
    .end local v46    # "top":F
    .end local v47    # "topFocus":F
    .restart local v5    # "scaleX":F
    .restart local v7    # "scaleY":F
    .restart local v17    # "fromXDelta":F
    .restart local v18    # "fromXDeltaRect":F
    .restart local v19    # "fromYDelta":F
    .restart local v20    # "fromYDeltaRect":F
    .restart local v29    # "interpol":Landroid/view/animation/Interpolator;
    :cond_8
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    move v9, v5

    move v11, v7

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2730
    .local v8, "scaleRect":Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2731
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    .line 2730
    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 2732
    const-wide/16 v10, 0xb2

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2733
    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 2734
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 2735
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2737
    new-instance v33, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2738
    .local v33, "moveRect":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2739
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    .line 2738
    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 2740
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2741
    const-wide/16 v10, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2742
    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2743
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2745
    new-instance v43, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v43

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2746
    .local v43, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2747
    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2748
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v43

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2749
    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2750
    move-object/from16 v4, v43

    .restart local v4    # "animRect":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 2607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCatureStarting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v4, 0x87

    const/4 v3, 0x0

    .line 283
    const-string v1, "MotionPanoramaApp"

    const-string v2, "onActivate"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 287
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getPanoramaMaxCount(Lcom/sec/android/app/camera/interfaces/Engine;)[F

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->initCoordinate([F)V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v4, v2, v3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMotionPanoramaListener(Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;)V

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setStartPanoramaListener(Lcom/sec/android/app/camera/interfaces/Engine$StartPanoramaListener;)V

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setMotionPanoramaEnabled(I)V

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    const/16 v2, 0x9

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 322
    :cond_1
    :goto_1
    return-void

    .line 294
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto :goto_0

    .line 320
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V

    goto :goto_1
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 331
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged: menuId="

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

    .line 333
    packed-switch p1, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 335
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setMotionPanoramaEnabled(I)V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v2, 0x7530

    const/16 v1, 0x3a98

    .line 347
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_LOW_PERFORMANCE:Z

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p1, v1, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 353
    :goto_0
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposureMeterString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 350
    :cond_0
    invoke-virtual {p1, v2, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 361
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 362
    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 363
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 365
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->createPanoramaView()V

    .line 366
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 370
    const-string v1, "sef_file_type"

    const/16 v2, 0x8e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    if-eqz v1, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "dataSubType":I
    or-int/lit8 v0, v0, 0x1

    .line 374
    const-string v1, "sef_file_sub_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    .end local v0    # "dataSubType":I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 394
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clear()V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x87

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setMotionPanoramaListener(Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setStartPanoramaListener(Lcom/sec/android/app/camera/interfaces/Engine$StartPanoramaListener;)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 406
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaMessageHandler:Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    .line 407
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 411
    packed-switch p1, :pswitch_data_0

    .line 421
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 413
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    if-lez v0, :cond_0

    .line 414
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown - it is stitching ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x1

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 427
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 471
    :cond_1
    :goto_1
    return v0

    .line 429
    :sswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    if-gtz v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 433
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 435
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v2

    if-nez v2, :cond_3

    .line 436
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    .line 437
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    goto :goto_1

    .line 439
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v2

    if-lez v2, :cond_0

    .line 440
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v1, :cond_4

    .line 441
    const-string v1, "MotionPanoramaApp"

    const-string v2, "already Stopping..."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 444
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    goto :goto_1

    .line 451
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    .line 453
    const-string v1, "MotionPanoramaApp"

    const-string v2, "panorama can be saved at least two shot"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 457
    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-nez v2, :cond_7

    .line 458
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_6

    .line 459
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 461
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    move v0, v1

    .line 462
    goto :goto_1

    .line 464
    :cond_7
    const-string v0, "MotionPanoramaApp"

    const-string v2, "now panorama is stopping"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionPanoramaCaptureResult(Z)V
    .locals 8
    .param p1, "arg0"    # Z

    .prologue
    .line 481
    const-string v4, "MotionPanoramaApp"

    const-string v5, "onMotionPanoramaCaptureResult"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-nez p1, :cond_0

    .line 484
    const-string v4, "MotionPanoramaApp"

    const-string v5, "onMotionPanoramaCaptureResult - Error!"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v5, "motionpanorama.jpg"

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "outputFileName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 493
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v1

    .line 495
    .local v1, "orientation":I
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 496
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 497
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 498
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 501
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 502
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 509
    .end local v1    # "orientation":I
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    if-eqz v4, :cond_3

    .line 510
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->saveAudio(Ljava/lang/String;)V

    .line 513
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    .local v3, "sefFile":Ljava/io/File;
    const-string v4, "Panorama_Shot_Info"

    const-string v5, "PanoramaShot"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const/16 v6, 0x8e0

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v3    # "sefFile":Ljava/io/File;
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 519
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 520
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 522
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAfIfNeeded()V

    .line 524
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    .line 525
    const-string v4, "211"

    invoke-static {v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_4
    const-string v4, "MotionPanoramaApp"

    const-string v5, "output file error"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MotionPanoramaApp"

    const-string v5, "error while addSEFData in MotionPanorama"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onMotionPanoramaCaptured()V
    .locals 2

    .prologue
    .line 530
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaCaptured"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setCaptureProgressIncreased()V

    .line 536
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onMotionPanoramaCapturedMaxFrames()V
    .locals 2

    .prologue
    .line 541
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaCapturedMaxFrames"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    .line 544
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_1

    .line 545
    const-string v0, "MotionPanoramaApp"

    const-string v1, "already Stopping..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    goto :goto_0
.end method

.method public onMotionPanoramaDirectionChanged(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 554
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionPanoramaDirectionChanged - direction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-nez v0, :cond_0

    .line 560
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->panoramaDirectionChanged(I)V

    goto :goto_0
.end method

.method public onMotionPanoramaError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 564
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionPanoramaError - error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 567
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_1

    .line 568
    const-string v0, "MotionPanoramaApp"

    const-string v1, "already Stopping..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    .line 576
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPanoramaToastPopup(I)V

    goto :goto_0

    .line 573
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    .line 574
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    goto :goto_1
.end method

.method public onMotionPanoramaLivePreviewData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 586
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaLivePreviewData"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 590
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->onLivePreviewData([B)V

    .line 592
    :cond_0
    return-void
.end method

.method public onMotionPanoramaProgressStitching(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x0

    .line 596
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionPanoramaProgressStitching - progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaProgressStitching - CeState.SHUTDOWN"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clear()V

    .line 620
    :goto_0
    return-void

    .line 604
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setPostCaptureProgress(I)V

    .line 606
    if-nez p1, :cond_1

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 610
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopCancelTimer()V

    .line 611
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    .line 612
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->clearPanoramaRect()V

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onMotionPanoramaRectChanged(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v4

    if-nez v4, :cond_0

    .line 636
    :goto_0
    return-void

    .line 630
    :cond_0
    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    .line 631
    .local v3, "width":I
    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v0

    .line 632
    .local v0, "height":I
    int-to-float v4, p1

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_WIDTH:I

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 633
    .local v1, "resize_x":I
    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 635
    .local v2, "resize_y":I
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->panoramaRectChanged(II)V

    goto :goto_0
.end method

.method public onMotionPanoramaSlowMove()V
    .locals 2

    .prologue
    .line 640
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaSlowMove"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->panoramaMoveSlowly()V

    .line 643
    return-void
.end method

.method public onMotionPanoramaThumbnailData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 652
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaThumbnailData"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setLowResolutionBitmap(Landroid/graphics/Bitmap;)V

    .line 657
    return-void
.end method

.method public onMotionPanoramaUiImageData([B)V
    .locals 2
    .param p1, "arg0"    # [B

    .prologue
    .line 661
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onMotionPanoramaUiImageData"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 665
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->onLivePreviewData([B)V

    .line 667
    :cond_0
    return-void
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
    .line 671
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z143"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 14
    .param p1, "orientation"    # I

    .prologue
    .line 676
    const-string v0, "MotionPanoramaApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged - mEnterOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPreviewRectRotationSupported:Z

    if-nez v0, :cond_0

    .line 679
    const/4 p1, 0x0

    .line 683
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isDirectionDetected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    if-eq v0, p1, :cond_1

    .line 685
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 688
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    .line 690
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 691
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hidePreviewGroup()V

    .line 693
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V

    .line 694
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V

    .line 696
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPanoramaToastPopup(I)V

    .line 700
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCurrentOrientation:I

    .line 702
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    if-eq v0, p1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    .line 703
    const/4 v6, 0x0

    .line 704
    .local v6, "bStop":Z
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEnterOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 723
    :cond_2
    :goto_0
    if-eqz v6, :cond_5

    .line 724
    const-string v0, "MotionPanoramaApp"

    const-string v1, "onOrientationChanged Stop case - orientation changed during a capturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_4

    .line 726
    const-string v0, "MotionPanoramaApp"

    const-string v1, "already Stopping..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .end local v6    # "bStop":Z
    :cond_3
    :goto_1
    return-void

    .line 706
    .restart local v6    # "bStop":Z
    :pswitch_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 707
    const/4 v6, 0x1

    goto :goto_0

    .line 710
    :pswitch_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 711
    const/4 v6, 0x1

    goto :goto_0

    .line 714
    :pswitch_2
    if-eqz p1, :cond_2

    .line 715
    const/4 v6, 0x1

    goto :goto_0

    .line 718
    :pswitch_3
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 719
    const/4 v6, 0x1

    goto :goto_0

    .line 729
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaWarning:Z

    .line 730
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningArrow()V

    .line 731
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideWarningBox()V

    .line 732
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaSound()V

    .line 734
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideLivePreview()V

    .line 735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 737
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->stopPanoramaCapturing()V

    .line 741
    .end local v6    # "bStop":Z
    :cond_5
    const/4 v13, 0x0

    .line 743
    .local v13, "updateLayout":Z
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v1

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 745
    const/4 v13, 0x1

    .line 747
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    if-eqz v13, :cond_7

    .line 750
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewLayout(Z)V

    .line 754
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 755
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateArrow()V

    .line 760
    :cond_8
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 763
    :pswitch_4
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_X:F

    .line 764
    .local v7, "groupX":F
    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeY:F

    .line 766
    .local v8, "groupY":F
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_LANDSCAPE_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleX:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 775
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    const/4 v0, 0x4

    if-ge v9, v0, :cond_b

    .line 776
    const/4 v0, 0x2

    if-ge v9, v0, :cond_a

    .line 777
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 775
    :cond_9
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 747
    .end local v7    # "groupX":F
    .end local v8    # "groupY":F
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 781
    .restart local v7    # "groupX":F
    .restart local v8    # "groupY":F
    .restart local v9    # "i":I
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 785
    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 786
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v10, v0, v1

    .line 787
    .local v10, "padding":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleWidth:F

    sub-float v3, v0, v10

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitLandscapeSingleHeight:F

    sub-float v4, v0, v10

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewGroup(FFFFLandroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 792
    .end local v7    # "groupX":F
    .end local v8    # "groupY":F
    .end local v9    # "i":I
    .end local v10    # "padding":F
    :pswitch_5
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitX:F

    .line 793
    .restart local v7    # "groupX":F
    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitY:F

    .line 795
    .restart local v8    # "groupY":F
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->INIT_PORTRAIT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleX:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 804
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    const/4 v0, 0x4

    if-ge v9, v0, :cond_e

    .line 805
    const/4 v0, 0x2

    if-ge v9, v0, :cond_d

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 804
    :cond_c
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 808
    :cond_d
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 814
    :cond_e
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 816
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v10, v0, v1

    .line 817
    .restart local v10    # "padding":F
    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleHeight:F

    .line 818
    .local v12, "tempWidth":F
    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mInitPortraitSingleWidth:F

    .line 819
    .local v11, "tempHeight":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v3, v12, v10

    sub-float v4, v11, v10

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->updateLivePreviewGroup(FFFFLandroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 760
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 850
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    if-lez v1, :cond_0

    .line 851
    const-string v1, "MotionPanoramaApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :goto_0
    return v0

    .line 854
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x320

    if-ne v1, v2, :cond_1

    .line 855
    const-string v1, "MotionPanoramaApp"

    const-string v2, "onKeyDown - PANORAMA_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 858
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 4
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    const/4 v3, 0x1

    .line 866
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isReadyToCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    const-string v0, "MotionPanoramaApp"

    const-string v1, "Drop Panorama capture start, because it\'s not ready."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_0
    return v3

    .line 870
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    const-string v0, "MotionPanoramaApp"

    const-string v1, "return is capturing."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaStopping:Z

    if-eqz v0, :cond_2

    .line 875
    const-string v0, "MotionPanoramaApp"

    const-string v1, "return is stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 878
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->getCaptureProgressIncreased()I

    move-result v0

    const/16 v1, 0x320

    if-ne v0, v1, :cond_3

    .line 879
    const-string v0, "MotionPanoramaApp"

    const-string v1, "Return PANORAMA_MAX_IMAGE_COUNT"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 883
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x1c1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 892
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setOutputFile()V

    .line 894
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsSoundRecordingEnabled:Z

    if-eqz v0, :cond_5

    .line 895
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->startSoundRecording()V

    .line 898
    :cond_5
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCatureStarting:Z

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartMotionPanorama()V

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->setEnterOrientation(I)V

    .line 905
    const-string v0, "1008"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByTimerMode(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v1, "2102"

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsMotionPanoramaEnabled:Z

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_1
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "0"

    goto :goto_1
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 913
    return-void
.end method

.method public onStartingPanoramaCompleted()V
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCatureStarting:Z

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mIsPanoramaCaptureStarted:Z

    .line 919
    const-string v0, "212"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 924
    return-void
.end method
