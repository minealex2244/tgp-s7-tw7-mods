.class public Lcom/sec/android/app/camera/shootingmode/BurstPanorama;
.super Ljava/lang/Object;
.source "BurstPanorama.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final LIVEPREVIEW_MOVE_ANIM_TIME:I = 0xb2

.field private static final LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F = 60.0f

.field private static final MESSAGE_PANORAMA_SHOW_UI:I = 0x9

.field private static final MESSAGE_PANORAMA_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_PANORAMA_WARNING_LOW:I = 0x2

.field private static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_MOVESLOWLY:I = 0x5

.field private static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x320

.field private static final PANORAMA_ERROR_NO_DIRECTION:I = 0x1

.field private static final PANORAMA_ERROR_STITCHING:I = 0x0

.field private static final PANORAMA_ERROR_TRACING:I = 0x2

.field private static final PANORAMA_OVERLAP_PERCENTAGE:D = 0.2

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "BurstPanorama"

.field private static final WARNING_LEVEL_HIGH:I = 0x2

.field private static final WARNING_LEVEL_HIGH_VALUE:I = 0x32

.field private static final WARNING_LEVEL_LOW:I = 0x1

.field private static final WARNING_LEVEL_LOW_VALUE:I = 0x1e

.field private static final WARNING_LEVEL_NONE:I = 0x0

.field private static final WARNING_LEVEL_STOP:I = 0x3

.field private static final mLivePreviewLock:Ljava/lang/Object;


# instance fields
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

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

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

.field private mIsDrawLivePreview:Z

.field private mIsGuideTextDisplaying:Z

.field private mIsPanoramaCaptureStarted:Z

.field private mIsPanoramaCapturing:Z

.field private mIsPanoramaWarning:Z

.field private mIsPreviewRectRotationSupported:Z

.field private mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

.field private mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mLivePreviewBmp:Landroid/graphics/Bitmap;

.field private mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLivePreviewLandscapeHeight:F

.field private mLivePreviewLandscapeRectWidth:F

.field private mLivePreviewLandscapeSingleHeight:F

.field private mLivePreviewLandscapeSingleWidth:F

.field private mLivePreviewLandscapeSingleX:F

.field private mLivePreviewLandscapeSingleY:F

.field private mLivePreviewLandscapeY:F

.field private mLivePreviewPortraitRectWidth:F

.field private mLivePreviewPortraitSingleHeight:F

.field private mLivePreviewPortraitSingleWidth:F

.field private mLivePreviewPortraitSingleX:F

.field private mLivePreviewPortraitSingleY:F

.field private mLivePreviewPortraitWidth:F

.field private mLivePreviewPortraitX:F

.field private mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

.field private mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

.field private mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

.field private mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

.field private mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mPostProgress:I

.field private mPreviewRatio:F

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailWidth:F

.field private mPreviousCaptureCount:I

.field private mThumbnailPreviewHeight:I

.field private mThumbnailPreviewMaxHeight:I

.field private mThumbnailPreviewMaxWidth:I

.field private mThumbnailPreviewPreAllocatedBuffer:[I

.field private mThumbnailPreviewWidth:I

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mWarningArrow:[Lcom/samsung/android/glview/GLImage;

.field private mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

.field private mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLock:Ljava/lang/Object;

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

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    .line 107
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    .line 108
    const v0, 0x7f0b0066

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_X:F

    .line 110
    const v0, 0x7f0b0067

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    .line 111
    const v0, 0x7f0b000d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 112
    const v0, 0x7f0b0068

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 113
    const v0, 0x7f0b000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 114
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 116
    const v0, 0x7f0b0065

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    .line 117
    const v0, 0x7f0b0063

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    .line 118
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_POS_X:F

    .line 119
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_POS_Y:F

    .line 120
    const v0, 0x7f0b028e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_SIZE:F

    .line 121
    const v0, 0x7f0b0064

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_TEXT_MARGIN:F

    .line 123
    const v0, 0x7f0b006a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 125
    const v0, 0x7f0b006d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    .line 126
    const v0, 0x7f0b006c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    .line 128
    const v0, 0x7f0b0062

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    .line 129
    const v0, 0x7f0b0061

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    .line 132
    const v0, 0x7f0b01d9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SHUTTER_BUTTON_WIDTH:F

    .line 133
    const v0, 0x7f0b034e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 134
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_POS_X:I

    .line 135
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_POS_Y:I

    .line 136
    const v0, 0x7f0b01d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_DIAMETER:I

    .line 138
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    .line 140
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    .line 141
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    .line 142
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    .line 143
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 144
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    .line 145
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    .line 146
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeHeight:F

    .line 147
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeY:F

    .line 148
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    .line 149
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    .line 150
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    .line 151
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    .line 152
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleX:F

    .line 153
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    .line 154
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    .line 155
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleX:F

    .line 156
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleY:F

    .line 157
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitX:F

    .line 158
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitY:F

    .line 159
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    .line 160
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    .line 161
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleHeight:F

    .line 162
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleX:F

    .line 163
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    .line 164
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitX:F

    .line 165
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    .line 166
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    .line 167
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleX:F

    .line 168
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleY:F

    .line 169
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeRectWidth:F

    .line 170
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitRectWidth:F

    .line 171
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    .line 172
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    .line 173
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mHorizontalMaxCount:F

    .line 174
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewRatio:F

    .line 175
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    .line 176
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    .line 177
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 178
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    .line 179
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPreviewRectRotationSupported:Z

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    .line 182
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    .line 183
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 184
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 185
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 186
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 187
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 188
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 189
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 190
    new-array v0, v6, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    .line 191
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    .line 192
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    .line 193
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 194
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 195
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsGuideTextDisplaying:Z

    .line 196
    new-array v0, v6, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    .line 197
    new-array v0, v6, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    .line 200
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 201
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 202
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 203
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 204
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 205
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 206
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 207
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 208
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    .line 209
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    .line 210
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 213
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 214
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 215
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPreviewGroup()V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideGuideText()V

    return-void
.end method

.method private cancelPanoramaCapture()V
    .locals 2

    .prologue
    .line 751
    const-string v0, "BurstPanorama"

    const-string v1, "cancelPanoramaCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPanoramaStartThreadComplete()V

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentStateId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopPreview()V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelTakePicture()V

    .line 759
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->clearPanoramaRect()V

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 767
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 772
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private clearMessageHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->access$000(Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;)V

    .line 777
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    .line 778
    return-void
.end method

.method private clearPanoramaRect()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 781
    const-string v1, "BurstPanorama"

    const-string v2, "clearPanoramaRect"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 785
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 792
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningArrow()V

    .line 793
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningBox()V

    .line 795
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 795
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 803
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

    .line 807
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 808
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v6, 0x7f020155

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 814
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 815
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v2, 0x7f020155

    invoke-direct {v0, v1, v11, v11, v2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 816
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    const v2, 0x7f0d0010

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 821
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPreviewRectRotationSupported:Z

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 825
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 829
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v9

    .line 830
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v12

    .line 831
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v14

    .line 832
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v7, 0x3

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v7

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v14

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020153

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020152

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020154

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v14

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f020151

    invoke-direct {v2, v3, v11, v11, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v14

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v14

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeTri:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 849
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v9

    .line 850
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v0, v6, v12

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020153

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020154

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f02015a

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v9

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020157

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v12

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v3, 0x7f020158

    invoke-direct {v1, v2, v11, v11, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v1, v0, v14

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f020159

    invoke-direct {v2, v3, v11, v11, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 870
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    const v2, 0x7f0d0010

    .line 871
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 874
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    const v2, 0x7f0d002b

    .line 875
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 877
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    const v2, 0x7f0d002b

    .line 878
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 881
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0200ef

    const v5, 0x7f0200f1

    move v6, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$1;-><init>(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->STOP_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 904
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->onOrientationChanged(I)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 913
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a01dd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_SIZE:F

    const v8, 0x7f0d001d

    .line 914
    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLText;->setClipping(Z)V

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f0e0017

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0d000f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 922
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_1

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v0, v0, v10

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v10

    invoke-virtual {v0, v13}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 922
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 824
    .end local v10    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    goto/16 :goto_0

    .line 933
    .restart local v10    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v14, v14}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v9, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v12, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v14, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v11, v11}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 938
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

    .line 941
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 942
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 944
    .local v0, "anim":Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 970
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 971
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 972
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 973
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 974
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 975
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 978
    :cond_0
    return-object v1

    .line 947
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 948
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 953
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 954
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 959
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 960
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 965
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 966
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 944
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
    .line 982
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I
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
    .locals 12
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 986
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getViewAngle()[F

    move-result-object v3

    .line 987
    .local v3, "viewAngle":[F
    const/4 v4, 0x0

    aget v2, v3, v4

    .line 988
    .local v2, "verticalAngle":F
    const/4 v4, 0x1

    aget v0, v3, v4

    .line 990
    .local v0, "horizontalAngle":F
    const/4 v4, 0x2

    new-array v1, v4, [F

    .line 991
    .local v1, "maxCount":[F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 992
    :cond_0
    const/4 v4, 0x0

    const-wide v6, 0x4076800000000000L    # 360.0

    float-to-double v8, v2

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v8, v2

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v5, v6

    aput v5, v1, v4

    .line 993
    const/4 v4, 0x1

    const-wide v6, 0x4076800000000000L    # 360.0

    float-to-double v8, v0

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v8, v0

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v5, v6

    aput v5, v1, v4

    .line 995
    :cond_1
    const-string v4, "BurstPanorama"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vertical count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " horizontal count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-object v1
.end method

.method private declared-synchronized getPartialPanoramaImage([B)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "data"    # [B

    .prologue
    .line 1001
    monitor-enter p0

    const/4 v9, 0x0

    .line 1004
    .local v9, "bmp":Landroid/graphics/Bitmap;
    const v17, 0x1869f

    .line 1005
    .local v17, "width":I
    const v12, 0x1869f

    .line 1006
    .local v12, "height":I
    const/4 v10, 0x0

    .line 1008
    .local v10, "datarotation":I
    const/4 v3, 0x0

    .line 1009
    .local v3, "bmpOffset":I
    const/4 v4, 0x0

    .line 1011
    .local v4, "bmpStride":I
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    .line 1012
    :cond_0
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Received null or invalid data"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    const/4 v2, 0x0

    .line 1142
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1017
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

    .line 1018
    :cond_2
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Data is invalid (RGBA tag not found)"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    const/4 v2, 0x0

    goto :goto_0

    .line 1023
    :cond_3
    const/4 v2, 0x4

    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v17

    .line 1024
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v12

    .line 1025
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    .line 1031
    :try_start_3
    move-object/from16 v0, p1

    array-length v2, v0

    mul-int v5, v17, v12

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x10

    if-ge v2, v5, :cond_4

    .line 1032
    const-string v2, "BurstPanorama"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage: The buffer is too small to contain a image of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v2, 0x0

    goto :goto_0

    .line 1026
    :catch_0
    move-exception v11

    .line 1027
    .local v11, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Could not parse panorama bitmap header"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v2, 0x0

    goto :goto_0

    .line 1036
    .end local v11    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    if-nez v2, :cond_5

    .line 1037
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_0

    .line 1053
    :pswitch_0
    const-string v2, "BurstPanorama"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage - PANORAMA Invalid direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1040
    :pswitch_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1041
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    .line 1042
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v2, v5

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    .line 1043
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1064
    :cond_5
    :goto_1
    :try_start_4
    move-object/from16 v0, p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x4

    new-array v14, v2, [I

    .line 1065
    .local v14, "intData":[I
    const/16 v8, 0xff

    .line 1066
    .local v8, "MASK":I
    const/16 v16, 0x0

    .line 1067
    .local v16, "result":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x4

    if-ge v13, v2, :cond_6

    .line 1068
    add-int/lit8 v2, v13, 0x4

    mul-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v16, v2, 0x10

    .line 1069
    add-int/lit8 v2, v13, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x8

    add-int v16, v16, v2

    .line 1070
    add-int/lit8 v2, v13, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    add-int v16, v16, v2

    .line 1071
    add-int/lit8 v2, v13, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x18

    add-int v16, v16, v2

    .line 1072
    aput v16, v14, v13
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1067
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1047
    .end local v8    # "MASK":I
    .end local v13    # "i":I
    .end local v14    # "intData":[I
    .end local v16    # "result":I
    :pswitch_2
    :try_start_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1048
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    .line 1049
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v2, v5

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    .line 1050
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1001
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1075
    .restart local v8    # "MASK":I
    .restart local v13    # "i":I
    .restart local v14    # "intData":[I
    .restart local v16    # "result":I
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v2, :pswitch_data_1

    .line 1127
    :pswitch_3
    const-string v2, "BurstPanorama"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPartialPanoramaImage - PANORAMA Invalid direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1136
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v2 .. v7}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    move-object v2, v9

    .line 1142
    goto/16 :goto_0

    .line 1077
    :pswitch_4
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    if-eq v2, v12, :cond_7

    .line 1078
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Height is different!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1130
    .end local v8    # "MASK":I
    .end local v13    # "i":I
    .end local v14    # "intData":[I
    .end local v16    # "result":I
    :catch_1
    move-exception v11

    .line 1131
    .restart local v11    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_9
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Index Control Failed!!!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1132
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1080
    .end local v11    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v8    # "MASK":I
    .restart local v13    # "i":I
    .restart local v14    # "intData":[I
    .restart local v16    # "result":I
    :cond_7
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_8

    .line 1081
    mul-int v2, v18, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v6, v6, v18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    add-int/2addr v6, v7

    move/from16 v0, v17

    invoke-static {v14, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1080
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1083
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    .line 1085
    const/4 v3, 0x0

    .line 1086
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1088
    goto :goto_3

    .line 1090
    .end local v18    # "y":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    if-eq v2, v12, :cond_9

    .line 1091
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Height is different!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1093
    :cond_9
    const/16 v18, 0x0

    .restart local v18    # "y":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_a

    .line 1094
    mul-int v2, v18, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    sub-int/2addr v6, v7

    sub-int v6, v6, v17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v7, v7, v18

    add-int/2addr v6, v7

    move/from16 v0, v17

    invoke-static {v14, v2, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 1097
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    .line 1099
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    sub-int v3, v2, v5

    .line 1100
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1102
    goto/16 :goto_3

    .line 1104
    .end local v18    # "y":I
    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_b

    .line 1105
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Width is different!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1107
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    move/from16 v19, v0

    sub-int v7, v7, v19

    sub-int/2addr v7, v12

    mul-int/2addr v6, v7

    array-length v7, v14

    invoke-static {v14, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1109
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    add-int/2addr v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    .line 1111
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    sub-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    mul-int v3, v2, v5

    .line 1112
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    .line 1114
    goto/16 :goto_3

    .line 1116
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_c

    .line 1117
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Width is different!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1119
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    mul-int/2addr v6, v7

    array-length v7, v14

    invoke-static {v14, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1120
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    add-int/2addr v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    .line 1122
    const/4 v3, 0x0

    .line 1123
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewMaxWidth:I
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1125
    goto/16 :goto_3

    .line 1137
    :catch_2
    move-exception v15

    .line 1138
    .local v15, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_b
    const-string v2, "BurstPanorama"

    const-string v5, "getPartialPanoramaImage: Out of memory [1]"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1139
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1037
    nop

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

    .line 1075
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

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1148
    return-void
.end method

.method private hideGuideText()V
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsGuideTextDisplaying:Z

    .line 1154
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1158
    :cond_0
    return-void
.end method

.method private hideLivePreview()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1162
    return-void
.end method

.method private hidePreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1165
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 1166
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1169
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1170
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    return-void
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1184
    return-void
.end method

.method private hideWarningArrow()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1189
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    :cond_0
    return-void
.end method

.method private hideWarningBox()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1196
    return-void
.end method

.method private initCoordinate([F)V
    .locals 11
    .param p1, "maxRate"    # [F

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 1199
    move-object v0, p1

    .line 1200
    .local v0, "panoramaMaxRate":[F
    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mHorizontalMaxCount:F

    .line 1202
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    .line 1203
    .local v2, "previewWidth":I
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    .line 1204
    .local v1, "previewHeight":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewRatio:F

    .line 1206
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    float-to-double v4, v3

    const-wide v6, 0x3fe999999999999aL    # 0.8

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mHorizontalMaxCount:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    add-double/2addr v6, v8

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewRatio:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    .line 1207
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    .line 1209
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeHeight:F

    .line 1210
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeY:F

    .line 1212
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewRatio:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    .line 1213
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    .line 1215
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleX:F

    .line 1216
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleY:F

    .line 1218
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    .line 1219
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    .line 1220
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleX:F

    .line 1223
    const v3, 0x7f0b0069

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    .line 1224
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitX:F

    .line 1226
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    .line 1227
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitX:F

    .line 1228
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitY:F

    .line 1230
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    .line 1231
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewRatio:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    .line 1232
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitX:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleX:F

    .line 1233
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleY:F

    .line 1235
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    .line 1236
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleHeight:F

    .line 1237
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleX:F

    .line 1239
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitRectWidth:F

    .line 1240
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    mul-float/2addr v3, v10

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeRectWidth:F

    .line 1241
    return-void
.end method

.method private isDirectionDetected()Z
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isReadyToCapture()Z
    .locals 1

    .prologue
    .line 1248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onLivePreviewData([B)V
    .locals 13
    .param p1, "data"    # [B

    .prologue
    .line 1257
    monitor-enter p0

    :try_start_0
    const-string v0, "BurstPanorama"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData , mCapturecount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPreviousCaptureCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const/4 v5, 0x0

    .line 1260
    .local v5, "bmp":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    .line 1261
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Integer;

    .line 1262
    .local v9, "rotation":[Ljava/lang/Integer;
    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1263
    if-nez v5, :cond_1

    .line 1264
    const-string v0, "BurstPanorama"

    const-string v11, "Unable to decode RGBA data for live preview."

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    .end local v9    # "rotation":[Ljava/lang/Integer;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1268
    .restart local v9    # "rotation":[Ljava/lang/Integer;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {p0, v0, v11}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setPreviewThumbnailSize(II)V

    .line 1270
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewWidth:I

    .line 1271
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewHeight:I

    .line 1273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mThumbnailPreviewPreAllocatedBuffer:[I

    .line 1291
    .end local v9    # "rotation":[Ljava/lang/Integer;
    :goto_1
    if-nez v5, :cond_5

    .line 1292
    const-string v0, "BurstPanorama"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1257
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1275
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-eq v0, v11, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1281
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v11, 0x1

    if-ge v0, v11, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    const/4 v11, 0x1

    if-lt v0, v11, :cond_4

    .line 1282
    :cond_3
    const-string v0, "BurstPanorama"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData : live preview rect is not visible. ignore case. mCaptureCount - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPreviousCaptureCount - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1288
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getPartialPanoramaImage([B)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    .line 1295
    :cond_5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {p0, v0, v11}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setPreviewThumbnailSize(II)V

    .line 1296
    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    .line 1297
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviousCaptureCount:I

    .line 1299
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v11, 0x2

    if-ge v0, v11, :cond_6

    .line 1300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 1305
    :cond_6
    const/4 v7, 0x0

    .line 1306
    .local v7, "arrowLeft":F
    const/4 v8, 0x0

    .line 1307
    .local v8, "arrowTop":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1308
    .local v1, "left":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 1309
    .local v2, "top":F
    const/4 v10, 0x0

    .line 1311
    .local v10, "stopPanorama":Z
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v11, 0x2

    if-ge v0, v11, :cond_c

    .line 1312
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_9

    .line 1313
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v3, v0, v11

    .line 1314
    .local v3, "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .line 1381
    .local v4, "height":F
    :goto_2
    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1382
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_13

    .line 1383
    :cond_8
    :try_start_3
    const-string v0, "BurstPanorama"

    const-string v12, "It\'s too short image for thumbnail preview"

    invoke-static {v0, v12}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    monitor-exit v11

    goto/16 :goto_0

    .line 1387
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 1315
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_a

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v11, 0x3

    if-ne v0, v11, :cond_b

    .line 1316
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .line 1317
    .restart local v4    # "height":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v3, v0, v11

    .restart local v3    # "width":F
    goto :goto_2

    .line 1319
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_b
    const-string v0, "BurstPanorama"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onLivePreviewData : invalid orientation "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1323
    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    cmpl-float v0, v0, v11

    if-ltz v0, :cond_d

    .line 1324
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v3, v0, v11

    .line 1325
    .restart local v3    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .line 1326
    .restart local v4    # "height":F
    const/4 v10, 0x1

    .line 1341
    :goto_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v0, :pswitch_data_0

    .line 1375
    :pswitch_0
    const-string v0, "BurstPanorama"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PANORAMA Invalid direction: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1327
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_d
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    cmpl-float v0, v0, v11

    if-ltz v0, :cond_e

    .line 1328
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v3, v0, v11

    .line 1329
    .restart local v3    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .line 1330
    .restart local v4    # "height":F
    const/4 v10, 0x1

    goto :goto_3

    .line 1332
    .end local v3    # "width":F
    .end local v4    # "height":F
    :cond_e
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v3, v0, v11

    .line 1334
    .restart local v3    # "width":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/16 v11, 0x8

    if-eq v0, v11, :cond_f

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v11, 0x4

    if-ne v0, v11, :cond_10

    .line 1335
    :cond_f
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v0

    .line 1338
    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float v4, v0, v11

    .restart local v4    # "height":F
    goto :goto_3

    .line 1343
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    const v11, 0x7f0b006b

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    add-float v7, v0, v11

    .line 1344
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    sub-float/2addr v0, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v0, v11

    .line 1345
    goto/16 :goto_2

    .line 1348
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v0, v11

    sub-float v1, v0, v3

    .line 1349
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    sub-float/2addr v0, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v11

    sub-float/2addr v0, v11

    const v11, 0x7f0b006b

    .line 1350
    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    sub-float v7, v0, v11

    .line 1351
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    sub-float/2addr v0, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v0, v11

    .line 1352
    goto/16 :goto_2

    .line 1355
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/16 v11, 0x320

    if-ne v0, v11, :cond_11

    .line 1356
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v0, v11

    const/high16 v11, 0x44480000    # 800.0f

    div-float v4, v0, v11

    .line 1357
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v4

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v2, v0, v11

    .line 1359
    :cond_11
    const v0, 0x7f0b006b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    add-float v8, v4, v0

    .line 1360
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitRectWidth:F

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v11

    sub-float/2addr v0, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v7, v0, v11

    .line 1361
    goto/16 :goto_2

    .line 1364
    :pswitch_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v0, v11

    sub-float v2, v0, v4

    .line 1366
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/16 v11, 0x320

    if-ne v0, v11, :cond_12

    .line 1367
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v11, v12

    sub-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    mul-float/2addr v0, v11

    const/high16 v11, 0x44480000    # 800.0f

    div-float v4, v0, v11

    .line 1368
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v4

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v2, v0, v11

    .line 1370
    :cond_12
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const/high16 v11, 0x40000000    # 2.0f

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    mul-float/2addr v11, v12

    sub-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_WIDTH:F

    sub-float/2addr v0, v11

    sub-float/2addr v0, v4

    const v11, 0x7f0b006b

    invoke-static {v11}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    sub-float v8, v0, v11

    .line 1371
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitRectWidth:F

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v11

    sub-float/2addr v0, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    iget v11, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-float v7, v0, v11

    .line 1372
    goto/16 :goto_2

    :cond_13
    move-object v0, p0

    .line 1386
    :try_start_5
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewGroup(FFFFLandroid/graphics/Bitmap;)V

    .line 1387
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1389
    :try_start_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/16 v11, 0x31f

    if-ge v0, v11, :cond_18

    .line 1390
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v11, 0x1

    if-le v0, v11, :cond_15

    .line 1394
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_14

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_17

    .line 1395
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x0

    aget-object v6, v0, v11

    .line 1400
    .local v6, "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1401
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1403
    if-eqz v10, :cond_15

    .line 1404
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    .line 1420
    .end local v6    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_15
    :goto_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_16

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_1b

    .line 1421
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    goto/16 :goto_0

    .line 1397
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x1

    aget-object v6, v0, v11

    .restart local v6    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    goto :goto_4

    .line 1408
    .end local v6    # "activeGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_18
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v11, 0x1

    if-eq v0, v11, :cond_19

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_1a

    .line 1409
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1414
    :goto_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/16 v11, 0x31f

    if-lt v0, v11, :cond_15

    .line 1415
    const-string v0, "BurstPanorama"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PANORAMAX_MAX_IMAGE_COUNT, mCaptureCount : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    goto :goto_5

    .line 1411
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x1

    aget-object v0, v0, v11

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 1423
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x1

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1341
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

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1429
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isDirectionDetected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1430
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 1453
    :goto_0
    const/4 v1, 0x0

    .line 1454
    .local v1, "isHorizontalCapturing":Z
    packed-switch p1, :pswitch_data_1

    .line 1472
    :goto_1
    :pswitch_0
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    if-eq v3, v7, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    if-ne v3, v9, :cond_1

    .line 1473
    :cond_0
    if-eqz v1, :cond_6

    .line 1474
    const/4 v1, 0x0

    .line 1479
    :cond_1
    :goto_2
    if-eqz v1, :cond_7

    .line 1480
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x189e

    const/16 v5, 0x3e8

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 1486
    :goto_3
    if-eqz p1, :cond_4

    .line 1487
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isDirectionDetected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1488
    const/4 v2, 0x0

    .local v2, "width":F
    const/4 v0, 0x0

    .line 1489
    .local v0, "height":F
    if-eq p1, v6, :cond_2

    const/16 v3, 0x8

    if-ne p1, v3, :cond_8

    .line 1490
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    .line 1491
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    .line 1492
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1498
    :cond_3
    :goto_4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    .line 1499
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1500
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 1503
    .end local v0    # "height":F
    .end local v2    # "width":F
    :cond_4
    return-void

    .line 1433
    .end local v1    # "isHorizontalCapturing":Z
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1434
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1435
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1436
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1440
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1441
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1442
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v8

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1443
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1447
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1448
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1449
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1450
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 1456
    .restart local v1    # "isHorizontalCapturing":Z
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    const v4, 0x7f020154

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1459
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    const v4, 0x7f020151

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1462
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v5

    const v4, 0x7f020152

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1463
    const/4 v1, 0x1

    .line 1464
    goto/16 :goto_1

    .line 1466
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureTri:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v5

    const v4, 0x7f020153

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1467
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1476
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1482
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x189e

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    goto/16 :goto_3

    .line 1493
    .restart local v0    # "height":F
    .restart local v2    # "width":F
    :cond_8
    if-eq p1, v7, :cond_9

    if-ne p1, v8, :cond_3

    .line 1494
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    .line 1495
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    .line 1496
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    goto/16 :goto_4

    .line 1430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1454
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
    .line 1506
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1507
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showGuideText()V

    .line 1509
    :cond_0
    return-void
.end method

.method private panoramaRectChanged(II)V
    .locals 26
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1512
    const/4 v8, 0x0

    .line 1513
    .local v8, "rect_x":F
    const/4 v9, 0x0

    .line 1514
    .local v9, "rect_y":F
    const/4 v10, 0x0

    .line 1516
    .local v10, "startOffsetPosition":F
    const/4 v4, 0x0

    .line 1517
    .local v4, "arrow_x":F
    const/4 v5, 0x0

    .line 1519
    .local v5, "arrow_y":F
    const/4 v7, 0x0

    .line 1520
    .local v7, "baseW":F
    const/4 v6, 0x0

    .line 1524
    .local v6, "baseH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1820
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1526
    :pswitch_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    .line 1527
    const/high16 v6, 0x42700000    # 60.0f

    .line 1528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 1529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitX:F

    move/from16 v22, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v7

    div-float v23, v23, v24

    add-float v8, v22, v23

    .line 1530
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v6

    div-float v22, v22, v23

    add-float v9, v10, v22

    .line 1557
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1560
    const/4 v11, 0x0

    .line 1562
    .local v11, "warningLevel":I
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v7

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 1563
    .local v14, "xDistance":D
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v6

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    .line 1564
    .local v18, "yDistance":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    .line 1577
    :goto_2
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    if-gez p2, :cond_7

    .line 1578
    :cond_2
    const-wide/16 v18, 0x0

    .line 1582
    :cond_3
    :goto_3
    float-to-double v0, v7

    move-wide/from16 v22, v0

    div-double v22, v14, v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v16, v22, v24

    .line 1583
    .local v16, "xDistanceRate":D
    float-to-double v0, v6

    move-wide/from16 v22, v0

    div-double v22, v18, v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v20, v22, v24

    .line 1584
    .local v20, "yDistanceRate":D
    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 1586
    .local v12, "totalDistance":D
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Direction:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", x Distance:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", y Distance:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    :pswitch_3
    goto/16 :goto_0

    .line 1706
    :pswitch_4
    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_16

    .line 1707
    const/4 v11, 0x0

    .line 1713
    :goto_4
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_18

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1716
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1719
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessage(I)Z

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1729
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1754
    :cond_5
    :goto_5
    const/16 v22, 0x1

    move/from16 v0, v22

    if-lt v11, v0, :cond_1e

    .line 1756
    cmpl-double v22, v16, v20

    if-lez v22, :cond_1c

    .line 1757
    if-lez p1, :cond_1b

    .line 1758
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v22

    sub-float v22, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v23, v0

    sub-float v4, v22, v23

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1804
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 1533
    .end local v11    # "warningLevel":I
    .end local v12    # "totalDistance":D
    .end local v14    # "xDistance":D
    .end local v16    # "xDistanceRate":D
    .end local v18    # "yDistance":D
    .end local v20    # "yDistanceRate":D
    :pswitch_5
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    .line 1534
    const/high16 v6, 0x42700000    # 60.0f

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v23

    sub-float v10, v22, v23

    .line 1536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitX:F

    move/from16 v22, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v7

    div-float v23, v23, v24

    add-float v8, v22, v23

    .line 1537
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v6

    div-float v22, v22, v23

    add-float v9, v10, v22

    .line 1538
    goto/16 :goto_1

    .line 1540
    :pswitch_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeRectWidth:F

    .line 1541
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    .line 1542
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 1543
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v7

    div-float v22, v22, v23

    add-float v8, v10, v22

    .line 1544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    move/from16 v22, v0

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v6

    div-float v23, v23, v24

    add-float v9, v22, v23

    .line 1545
    goto/16 :goto_1

    .line 1547
    :pswitch_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeRectWidth:F

    .line 1548
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    .line 1549
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    move/from16 v23, v0

    sub-float v10, v22, v23

    .line 1550
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_WIDTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v23, v23, v7

    div-float v22, v22, v23

    add-float v8, v10, v22

    .line 1551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    move/from16 v22, v0

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->SCREEN_HEIGHT:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v6

    div-float v23, v23, v24

    add-float v9, v22, v23

    .line 1552
    goto/16 :goto_1

    .line 1567
    .restart local v11    # "warningLevel":I
    .restart local v14    # "xDistance":D
    .restart local v18    # "yDistance":D
    :pswitch_8
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v18, v18, v22

    .line 1568
    goto/16 :goto_2

    .line 1571
    :pswitch_9
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v14, v14, v22

    .line 1572
    goto/16 :goto_2

    .line 1579
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    if-gtz p1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    if-gez p1, :cond_3

    .line 1580
    :cond_9
    const-wide/16 v14, 0x0

    goto/16 :goto_3

    .line 1591
    .restart local v12    # "totalDistance":D
    .restart local v16    # "xDistanceRate":D
    .restart local v20    # "yDistanceRate":D
    :pswitch_a
    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_d

    .line 1592
    const/4 v11, 0x0

    .line 1598
    :goto_7
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_f

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1601
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1604
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessage(I)Z

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x12c

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1614
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1639
    :cond_b
    :goto_8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-lt v11, v0, :cond_15

    .line 1640
    cmpl-double v22, v20, v16

    if-lez v22, :cond_13

    .line 1641
    if-lez p2, :cond_12

    .line 1642
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    add-float v22, v22, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v23, v0

    add-float v5, v22, v23

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1690
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 1593
    :cond_d
    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_e

    .line 1594
    const/4 v11, 0x1

    goto/16 :goto_7

    .line 1596
    :cond_e
    const/4 v11, 0x2

    goto/16 :goto_7

    .line 1616
    :cond_f
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v11, v0, :cond_11

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1619
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1622
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessage(I)Z

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1632
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    goto/16 :goto_8

    .line 1635
    :cond_11
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1636
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    goto/16 :goto_8

    .line 1654
    :cond_12
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v22

    sub-float v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v23, v0

    sub-float v5, v22, v23

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1667
    :cond_13
    if-lez p1, :cond_14

    .line 1668
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v22

    sub-float v22, v8, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v23, v0

    sub-float v4, v22, v23

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1678
    :cond_14
    if-gez p1, :cond_c

    .line 1679
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    add-float v22, v22, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v23, v0

    add-float v4, v22, v23

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxPortrait:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_9

    .line 1695
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1697
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setGuideTextLocation()V

    .line 1699
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningArrow()V

    .line 1700
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningBox()V

    goto/16 :goto_0

    .line 1708
    :cond_16
    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    cmpg-double v22, v12, v22

    if-gez v22, :cond_17

    .line 1709
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 1711
    :cond_17
    const/4 v11, 0x2

    goto/16 :goto_4

    .line 1731
    :cond_18
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v11, v0, :cond_1a

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 1734
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1737
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessage(I)Z

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x96

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1747
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    goto/16 :goto_5

    .line 1750
    :cond_1a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 1751
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    goto/16 :goto_5

    .line 1770
    :cond_1b
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    add-float v22, v22, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v23, v0

    add-float v4, v22, v23

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v5, v9, v22

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 1781
    :cond_1c
    if-gez p2, :cond_1d

    .line 1782
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v22

    sub-float v22, v9, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v23, v0

    sub-float v5, v22, v23

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 1792
    :cond_1d
    if-lez p2, :cond_6

    .line 1793
    const-string v22, "BurstPanorama"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v4, v8, v22

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningBoxLandscape:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v22

    add-float v22, v22, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->WARNING_ARROW_OFFSET:F

    move/from16 v23, v0

    add-float v5, v22, v23

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget-object v22, v22, v23

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_6

    .line 1808
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1811
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setGuideTextLocation()V

    .line 1813
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningArrow()V

    .line 1814
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningBox()V

    goto/16 :goto_0

    .line 1524
    nop

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

    .line 1564
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

    .line 1588
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

.method private reset()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1823
    const-string v0, "BurstPanorama"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 1826
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    .line 1827
    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    .line 1828
    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    .line 1829
    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    .line 1831
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopCancelTimer()V

    .line 1832
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    .line 1834
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideCaptureTri()V

    .line 1835
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideStopButton()V

    .line 1837
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->clearPanoramaRect()V

    .line 1838
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    monitor-enter v6

    .line 1839
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewGroup(FFFFLandroid/graphics/Bitmap;)V

    .line 1840
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1841
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 1842
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setPreviewThumbnailSizeToDefault()V

    .line 1844
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPreviewGroup()V

    .line 1846
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 1847
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1849
    return-void

    .line 1840
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private restartCancelTimer()V
    .locals 0

    .prologue
    .line 1852
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopCancelTimer()V

    .line 1853
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->startCancelTimer()V

    .line 1854
    return-void
.end method

.method private setAlphaArrow(Lcom/samsung/android/glview/GLView;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1858
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1859
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1860
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1861
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1864
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 1865
    return-void
.end method

.method private declared-synchronized setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 1868
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    .line 1869
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    .line 1871
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased - mCaptureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    monitor-exit p0

    return-void

    .line 1868
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setEnterOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1875
    const-string v0, "BurstPanorama"

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

    .line 1876
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    .line 1877
    return-void
.end method

.method private setGuideTextLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x2

    .line 1885
    const/4 v6, 0x0

    .line 1886
    .local v6, "textX":F
    const/4 v7, 0x0

    .line 1887
    .local v7, "textY":F
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_WIDTH:F

    .line 1888
    .local v5, "textW":F
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_HELP_TEXT_HEIGHT:F

    .line 1889
    .local v4, "textH":F
    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->GUIDE_TEXT_MARGIN:F

    .line 1891
    .local v8, "text_margin":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    if-nez v9, :cond_0

    .line 1892
    const-string v9, "BurstPanorama"

    const-string v10, "setGuideTextLocation : LivePreview is null!"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :goto_0
    return-void

    .line 1896
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getLayoutX()F

    move-result v2

    .line 1897
    .local v2, "rectX":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getLayoutY()F

    move-result v3

    .line 1898
    .local v3, "rectY":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v1

    .line 1899
    .local v1, "rectW":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLRectangle;->getHeight()F

    move-result v0

    .line 1901
    .local v0, "rectH":F
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v9, :pswitch_data_0

    .line 1960
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v6, v7}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    goto :goto_0

    .line 1904
    :pswitch_1
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 1906
    :pswitch_2
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1907
    add-float v9, v2, v1

    add-float v6, v9, v8

    .line 1908
    sub-float v9, v0, v4

    div-float/2addr v9, v11

    add-float v7, v3, v9

    .line 1909
    goto :goto_1

    .line 1911
    :pswitch_3
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1912
    add-float v9, v2, v1

    add-float/2addr v9, v4

    add-float v6, v9, v8

    .line 1913
    sub-float v9, v5, v0

    div-float/2addr v9, v11

    sub-float v7, v3, v9

    .line 1914
    goto :goto_1

    .line 1916
    :pswitch_4
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1917
    sub-float v6, v2, v8

    .line 1918
    add-float v9, v3, v0

    sub-float v10, v0, v4

    div-float/2addr v10, v11

    add-float v7, v9, v10

    .line 1919
    goto :goto_1

    .line 1921
    :pswitch_5
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1922
    sub-float v9, v2, v4

    sub-float v6, v9, v8

    .line 1923
    add-float v9, v3, v0

    sub-float v10, v5, v0

    div-float/2addr v10, v11

    add-float v7, v9, v10

    goto :goto_1

    .line 1930
    :pswitch_6
    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v9, :pswitch_data_2

    goto :goto_1

    .line 1932
    :pswitch_7
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1933
    sub-float v9, v1, v5

    div-float/2addr v9, v11

    add-float v6, v2, v9

    .line 1934
    sub-float v9, v3, v4

    sub-float v7, v9, v8

    .line 1935
    goto :goto_1

    .line 1937
    :pswitch_8
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1938
    add-float v9, v2, v1

    sub-float v10, v1, v4

    div-float/2addr v10, v11

    sub-float v6, v9, v10

    .line 1939
    add-float v9, v3, v0

    add-float v7, v9, v8

    .line 1940
    goto :goto_1

    .line 1942
    :pswitch_9
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v10, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1943
    add-float v9, v2, v1

    sub-float v10, v5, v1

    div-float/2addr v10, v11

    add-float v6, v9, v10

    .line 1944
    add-float v9, v3, v0

    add-float/2addr v9, v4

    add-float v7, v9, v8

    .line 1945
    goto/16 :goto_1

    .line 1947
    :pswitch_a
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1948
    sub-float v9, v1, v4

    div-float/2addr v9, v11

    add-float v6, v2, v9

    .line 1949
    sub-float v7, v3, v8

    goto/16 :goto_1

    .line 1901
    nop

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

    .line 1904
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1930
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
    .line 1969
    const-string v0, "BurstPanorama"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    return-void
.end method

.method private declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 1973
    monitor-enter p0

    :try_start_0
    const-string v0, "BurstPanorama"

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

    .line 1974
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1975
    monitor-exit p0

    return-void

    .line 1973
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
    .line 1978
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-lez v1, :cond_0

    .line 1979
    const-string v1, "BurstPanorama"

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

    .line 1983
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1997
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    .line 1998
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    .line 2002
    :goto_0
    return-void

    .line 1986
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 1987
    .local v0, "Ratio":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    .line 1988
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    goto :goto_0

    .line 1992
    .end local v0    # "Ratio":F
    :pswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 1993
    .restart local v0    # "Ratio":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    .line 1994
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    goto :goto_0

    .line 1983
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
    .line 2005
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    .line 2006
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    .line 2007
    return-void
.end method

.method private showGuideText()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 2010
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 2011
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsGuideTextDisplaying:Z

    if-eqz v0, :cond_2

    .line 2012
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2019
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    if-eqz v0, :cond_1

    .line 2020
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2023
    :cond_1
    return-void

    .line 2016
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsGuideTextDisplaying:Z

    goto :goto_0
.end method

.method private showPanoramaToastPopup(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x1

    .line 2027
    packed-switch p1, :pswitch_data_0

    .line 2037
    :goto_0
    return-void

    .line 2029
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01a1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2032
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01dc

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2027
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2040
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 2041
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2044
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateArrow()V

    .line 2046
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 2060
    :cond_1
    return-void

    .line 2049
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2050
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2049
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2055
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 2056
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2055
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2046
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
    .line 2063
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2064
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 2065
    return-void
.end method

.method private startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2068
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2072
    return-void
.end method

.method private stopCancelTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2075
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2078
    :cond_0
    return-void
.end method

.method private stopPanoramaCapturing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2081
    const-string v0, "BurstPanorama"

    const-string v1, "stopPanoramaCapturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopPanorama()V

    .line 2085
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideCaptureTri()V

    .line 2087
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 2088
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    .line 2089
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    .line 2090
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    .line 2091
    return-void
.end method

.method private stopPanoramaSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 2094
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2095
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2096
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2098
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    .line 2099
    return-void
.end method

.method private updateArrow()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 2102
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 2124
    :goto_0
    return-void

    .line 2105
    :pswitch_0
    const v1, 0x7f0b006b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    .line 2107
    .local v0, "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v8

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v8

    .line 2108
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 2107
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2109
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v7

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleX:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v5, v5, v7

    .line 2110
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 2109
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 2115
    .end local v0    # "triOffset":F
    :pswitch_1
    const v1, 0x7f0b006b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    .line 2117
    .restart local v0    # "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleY:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v5

    .line 2118
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    .line 2117
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2119
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v1, v1, v9

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 2102
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
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2127
    sget-object v7, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2128
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 2130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLBitmapTexture;->clear()V

    .line 2133
    :cond_0
    if-nez p5, :cond_1

    .line 2134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 2139
    :goto_0
    monitor-exit v7

    .line 2140
    return-void

    .line 2136
    :cond_1
    new-instance v0, Lcom/samsung/android/glview/GLBitmapTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLBitmapTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    .line 2137
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    .line 2139
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized updateLivePreviewLayout(Z)V
    .locals 50
    .param p1, "detectedDirection"    # Z

    .prologue
    .line 2147
    monitor-enter p0

    :try_start_0
    const-string v6, "BurstPanorama"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLivePreviewLayout - mCaptureCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

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

    .line 2150
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v9, 0x2

    if-ge v6, v9, :cond_6

    if-nez p1, :cond_6

    .line 2151
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    if-eqz v6, :cond_2

    .line 2155
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPreviewGroup()V

    .line 2157
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 2158
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 2159
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleX:F

    move/from16 v25, v0

    .line 2160
    .local v25, "groupX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleY:F

    move/from16 v26, v0

    .line 2161
    .local v26, "groupY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    move/from16 v24, v0

    .line 2162
    .local v24, "groupW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    move/from16 v21, v0

    .line 2163
    .local v21, "groupH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    move/from16 v41, v0

    .line 2164
    .local v41, "rectW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    move/from16 v40, v0

    .line 2178
    .local v40, "rectH":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2179
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v9, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2180
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2181
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2183
    sget-object v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2184
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v6, :cond_1

    .line 2185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2186
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2188
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2384
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v40    # "rectH":F
    .end local v41    # "rectW":F
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 2166
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v9, 0x1

    if-eq v6, v9, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_5

    .line 2167
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleX:F

    move/from16 v25, v0

    .line 2168
    .restart local v25    # "groupX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleY:F

    move/from16 v26, v0

    .line 2169
    .restart local v26    # "groupY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    move/from16 v24, v0

    .line 2170
    .restart local v24    # "groupW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    move/from16 v21, v0

    .line 2171
    .restart local v21    # "groupH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleWidth:F

    move/from16 v41, v0

    .line 2172
    .restart local v41    # "rectW":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitSingleHeight:F

    move/from16 v40, v0

    .restart local v40    # "rectH":F
    goto/16 :goto_0

    .line 2174
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v40    # "rectH":F
    .end local v41    # "rectW":F
    :cond_5
    const-string v6, "BurstPanorama"

    const-string v9, "updateLivePreviewLayout: Invalid orientation"

    invoke-static {v6, v9}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2147
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2188
    .restart local v21    # "groupH":F
    .restart local v24    # "groupW":F
    .restart local v25    # "groupX":F
    .restart local v26    # "groupY":F
    .restart local v40    # "rectH":F
    .restart local v41    # "rectW":F
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6

    .line 2190
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v40    # "rectH":F
    .end local v41    # "rectW":F
    :cond_6
    if-eqz p1, :cond_2

    .line 2191
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hidePreviewGroup()V

    .line 2192
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2193
    sget-object v9, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2194
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-nez v6, :cond_7

    .line 2195
    const-string v6, "BurstPanorama"

    const-string v10, "updateLivePreviewLayout: LivePreview is null yet. ignore"

    invoke-static {v6, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    monitor-exit v9

    goto :goto_1

    .line 2198
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

    .line 2199
    :try_start_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2200
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showStopButton()V

    .line 2208
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v48, v6, v9

    .line 2209
    .local v48, "widthFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v28, v6, v9

    .line 2211
    .local v28, "heightFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v36, v6, v9

    .line 2212
    .local v36, "oldLeftGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v38, v6, v9

    .line 2213
    .local v38, "oldTopGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getLeft()F

    move-result v35

    .line 2214
    .local v35, "oldLeft":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getTop()F

    move-result v37

    .line 2215
    .local v37, "oldTop":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v39

    .line 2216
    .local v39, "oldWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v34

    .line 2217
    .local v34, "oldHeight":F
    const/16 v30, 0x1

    .line 2219
    .local v30, "landscape":Z
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v47, v6, v9

    .line 2220
    .local v47, "width":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v27, v6, v9

    .line 2222
    .local v27, "height":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v49, v0

    monitor-enter v49
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2223
    :try_start_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mDetectedDirection:I

    packed-switch v6, :pswitch_data_0

    .line 2320
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v18, v36, v6

    .line 2321
    .local v18, "fromXDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v20, v38, v6

    .line 2322
    .local v20, "fromYDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v6, v36, v6

    add-float v35, v35, v6

    .line 2323
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getLeft()F

    move-result v6

    sub-float v17, v35, v6

    .line 2324
    .local v17, "fromXDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v6, v38, v6

    add-float v37, v37, v6

    .line 2325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->getTop()F

    move-result v6

    sub-float v19, v37, v6

    .line 2326
    .local v19, "fromYDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    div-float v5, v39, v6

    .line 2327
    .local v5, "scaleX":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v6

    div-float v7, v34, v6

    .line 2329
    .local v7, "scaleY":F
    new-instance v29, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v29 .. v29}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2334
    .local v29, "interpol":Landroid/view/animation/Interpolator;
    if-eqz v30, :cond_8

    .line 2335
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2336
    .local v4, "animRect":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2337
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    .line 2336
    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2338
    const-wide/16 v10, 0xb2

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2339
    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2340
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2341
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2368
    :goto_3
    new-instance v44, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2369
    .local v44, "ta":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2370
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    .line 2369
    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2371
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2372
    const-wide/16 v10, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2373
    const/4 v6, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2374
    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->resetClipRect()V

    .line 2377
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v4}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLBitmapTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    .line 2381
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLBitmapTexture;->startAnimation()V

    .line 2382
    monitor-exit v49

    goto/16 :goto_1

    .end local v4    # "animRect":Landroid/view/animation/Animation;
    .end local v5    # "scaleX":F
    .end local v7    # "scaleY":F
    .end local v17    # "fromXDelta":F
    .end local v18    # "fromXDeltaRect":F
    .end local v19    # "fromYDelta":F
    .end local v20    # "fromYDeltaRect":F
    .end local v29    # "interpol":Landroid/view/animation/Interpolator;
    .end local v44    # "ta":Landroid/view/animation/Animation;
    :catchall_3
    move-exception v6

    monitor-exit v49
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2225
    :pswitch_1
    const/16 v22, 0x0

    .line 2226
    .local v22, "groupLeft":F
    const/16 v23, 0x0

    .line 2227
    .local v23, "groupTop":F
    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    add-float v43, v6, v9

    .line 2228
    .local v43, "startOffsetPosition":F
    move/from16 v32, v43

    .line 2229
    .local v32, "leftFocus":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move/from16 v22, v0

    .line 2230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    move/from16 v23, v0

    .line 2231
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v46, v6, v9

    .line 2233
    .local v46, "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v9, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2235
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2237
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2245
    add-float v6, v32, v48

    const/high16 v9, 0x41400000    # 12.0f

    sub-float v47, v6, v9

    .line 2246
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2247
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2251
    .end local v22    # "groupLeft":F
    .end local v23    # "groupTop":F
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v46    # "topFocus":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLRectangle;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailWidth:F

    sub-float v43, v6, v9

    .line 2252
    .restart local v43    # "startOffsetPosition":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    sub-float v31, v6, v47

    .line 2253
    .local v31, "left":F
    move/from16 v32, v43

    .line 2254
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v46, v6, v9

    .line 2256
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeY:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2258
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2260
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v31

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2265
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2267
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v48, v6

    sub-float v6, v32, v6

    const/high16 v9, 0x41400000    # 12.0f

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v47, v6, v9

    .line 2268
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/high16 v9, 0x42200000    # 40.0f

    add-float v9, v9, v47

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeHeight:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2269
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2273
    .end local v31    # "left":F
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v46    # "topFocus":F
    :pswitch_3
    const/16 v30, 0x0

    .line 2274
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v6, v6, v27

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v45, v6, v9

    .line 2275
    .local v45, "top":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    neg-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    sub-float v43, v6, v9

    .line 2276
    .restart local v43    # "startOffsetPosition":F
    move/from16 v46, v43

    .line 2277
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitX:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 2279
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2283
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2285
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v9, 0x0

    move/from16 v0, v45

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2291
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v28, v6

    sub-float v6, v45, v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->TRI_HEIGHT:F

    sub-float/2addr v6, v9

    const/high16 v9, 0x41b00000    # 22.0f

    sub-float v27, v6, v9

    .line 2292
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitRectWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2297
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v45    # "top":F
    .end local v46    # "topFocus":F
    :pswitch_4
    const/16 v30, 0x0

    .line 2298
    const/16 v45, 0x0

    .line 2299
    .restart local v45    # "top":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x41100000    # 9.0f

    div-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    add-float v28, v6, v9

    .line 2300
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPreviewThumbnailHeight:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLandscapeSingleHeight:F

    sub-float v43, v6, v9

    .line 2301
    .restart local v43    # "startOffsetPosition":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitX:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 2302
    .restart local v32    # "leftFocus":F
    move/from16 v46, v43

    .line 2304
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 2306
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 2307
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 2309
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLBitmapTexture;->setSize(FF)V

    .line 2310
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    const/4 v9, 0x0

    move/from16 v0, v45

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewSingleRect:Lcom/samsung/android/glview/GLRectangle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/glview/GLRectangle;->moveLayoutAbsolute(FF)V

    .line 2314
    add-float v6, v27, v28

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v28, v9

    sub-float v27, v6, v9

    .line 2315
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewPortraitRectWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaCaptureTri:[Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 2343
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v45    # "top":F
    .end local v46    # "topFocus":F
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

    .line 2344
    .local v8, "scaleRect":Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2345
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    .line 2344
    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 2346
    const-wide/16 v10, 0xb2

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2347
    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 2348
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 2349
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2351
    new-instance v33, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2352
    .local v33, "moveRect":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 2353
    invoke-virtual {v11}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    .line 2352
    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 2354
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2355
    const-wide/16 v10, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2356
    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2357
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2359
    new-instance v42, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2360
    .local v42, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2361
    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2362
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v42

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2363
    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2364
    move-object/from16 v4, v42

    .restart local v4    # "animRect":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 2223
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
    .line 219
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

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
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getPanoramaMaxCount(Lcom/sec/android/app/camera/interfaces/Engine;)[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->initCoordinate([F)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPanoramaListener(Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 243
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/BurstPanorama;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaMsgHandler:Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPreviewGroup()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v2, 0x7530

    const/16 v1, 0x3a98

    .line 264
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_LOW_PERFORMANCE:Z

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p1, v1, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 270
    :goto_0
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BURST_PANORAMA_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void

    .line 267
    :cond_1
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
    .line 279
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 280
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 281
    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 282
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 284
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->createPanoramaView()V

    .line 285
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/16 v3, 0x8e0

    .line 290
    const-string v2, "sef_file_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v0, "PanoramaShot"

    .line 295
    .local v0, "dummyString":Ljava/lang/String;
    :try_start_0
    const-string v2, "Panorama_Shot_Info"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/16 v4, 0x8e0

    const/4 v5, 0x1

    invoke-static {p2, v2, v3, v4, v5}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BurstPanorama"

    const-string v3, "error while addSEFData in BurstPanorama"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 4

    .prologue
    .line 305
    const-string v0, "BurstPanorama"

    const-string v1, "onImageStoringCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/ContentData;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 318
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 323
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsDrawLivePreview:Z

    .line 332
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    .line 333
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hidePreviewGroup()V

    .line 334
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->clearMessageHandler()V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setPanoramaListener(Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 338
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 342
    sparse-switch p1, :sswitch_data_0

    .line 358
    :cond_0
    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 344
    :sswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    if-lez v0, :cond_0

    .line 345
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown - it is stitching ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x1

    goto :goto_0

    .line 342
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 363
    sparse-switch p1, :sswitch_data_0

    .line 398
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 365
    :sswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    if-gtz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 371
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v1

    if-nez v1, :cond_3

    .line 372
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    .line 373
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    goto :goto_0

    .line 375
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v1

    if-lez v1, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    goto :goto_0

    .line 383
    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCapturing:Z

    if-eqz v1, :cond_0

    .line 384
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 385
    const-string v1, "BurstPanorama"

    const-string v2, "panorama can be saved at least two shot"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_5

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 391
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    goto :goto_0

    .line 363
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
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 17
    .param p1, "orientation"    # I

    .prologue
    .line 408
    const-string v2, "BurstPanorama"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOrientationChanged - mEnterOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPreviewRectRotationSupported:Z

    if-nez v2, :cond_0

    .line 411
    const/16 p1, 0x0

    .line 415
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isDirectionDetected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    .line 417
    const-string v2, "BurstPanorama"

    const-string v3, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 420
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    .line 422
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hidePreviewGroup()V

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    .line 428
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPanoramaToastPopup(I)V

    .line 432
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCurrentOrientation:I

    .line 434
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 435
    const/4 v8, 0x0

    .line 436
    .local v8, "bStop":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEnterOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 455
    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    .line 456
    const-string v2, "BurstPanorama"

    const-string v3, "onOrientationChanged Stop case - orientation changed during a capturing"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaWarning:Z

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningArrow()V

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideWarningBox()V

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideLivePreview()V

    .line 463
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    .line 469
    .end local v8    # "bStop":Z
    :cond_3
    const/4 v15, 0x0

    .line 471
    .local v15, "updateLayout":Z
    sget-object v3, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v3

    .line 472
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 473
    const/4 v15, 0x1

    .line 475
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    if-eqz v15, :cond_5

    .line 478
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewLayout(Z)V

    .line 481
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 482
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateArrow()V

    .line 487
    :cond_6
    packed-switch p1, :pswitch_data_1

    .line 561
    :cond_7
    :goto_1
    return-void

    .line 438
    .end local v15    # "updateLayout":Z
    .restart local v8    # "bStop":Z
    :pswitch_0
    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 439
    const/4 v8, 0x1

    goto :goto_0

    .line 442
    :pswitch_1
    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 443
    const/4 v8, 0x1

    goto :goto_0

    .line 446
    :pswitch_2
    if-eqz p1, :cond_2

    .line 447
    const/4 v8, 0x1

    goto :goto_0

    .line 450
    :pswitch_3
    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 451
    const/4 v8, 0x1

    goto :goto_0

    .line 475
    .end local v8    # "bStop":Z
    .restart local v15    # "updateLayout":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 490
    :pswitch_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_X:F

    .line 491
    .local v9, "groupX":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeY:F

    .line 493
    .local v10, "groupY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleX:F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 503
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v11, v2, :cond_a

    .line 504
    const/4 v2, 0x2

    if-ge v11, v2, :cond_9

    .line 505
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v11

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 503
    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 509
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 513
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 515
    const/high16 v2, 0x40000000    # 2.0f

    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v12, v2, v3

    .line 516
    .local v12, "padding":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleWidth:F

    sub-float v5, v2, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitLandscapeSingleHeight:F

    sub-float v6, v2, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewGroup(FFFFLandroid/graphics/Bitmap;)V

    .line 517
    monitor-exit v16

    goto/16 :goto_1

    .end local v12    # "padding":F
    :catchall_1
    move-exception v2

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 523
    .end local v9    # "groupX":F
    .end local v10    # "groupY":F
    .end local v11    # "i":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitX:F

    .line 524
    .restart local v9    # "groupX":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitY:F

    .line 526
    .restart local v10    # "groupY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->INIT_PORTRAIT_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializeSingleRect:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleX:F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->translateAbsolute(FF)V

    .line 536
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    const/4 v2, 0x4

    if-ge v11, v2, :cond_d

    .line 537
    const/4 v2, 0x2

    if-ge v11, v2, :cond_c

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v11

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 536
    :cond_b
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 540
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitializePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaInitializeTri:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v11

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 545
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreview:Lcom/samsung/android/glview/GLBitmapTexture;

    if-eqz v2, :cond_7

    .line 546
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCaptureCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 548
    const/high16 v2, 0x40000000    # 2.0f

    :try_start_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v12, v2, v3

    .line 550
    .restart local v12    # "padding":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleHeight:F

    .line 551
    .local v14, "tempWidth":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mInitPortraitSingleWidth:F

    .line 552
    .local v13, "tempHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v5, v14, v12

    sub-float v6, v13, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mLivePreviewBmp:Landroid/graphics/Bitmap;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->updateLivePreviewGroup(FFFFLandroid/graphics/Bitmap;)V

    .line 554
    monitor-exit v16

    goto/16 :goto_1

    .end local v12    # "padding":F
    .end local v13    # "tempHeight":F
    .end local v14    # "tempWidth":F
    :catchall_2
    move-exception v2

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 487
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPanoramaCaptured()V
    .locals 2

    .prologue
    .line 565
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaCaptured"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setCaptureProgressIncreased()V

    .line 571
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onPanoramaCapturedMaxFrames()V
    .locals 2

    .prologue
    .line 576
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaCapturedMaxFrames"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method

.method public onPanoramaCapturedNew()V
    .locals 2

    .prologue
    .line 581
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaCapturedNew"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 586
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaDirectionChanged - direction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-nez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 591
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->panoramaDirectionChanged(I)V

    goto :goto_0
.end method

.method public onPanoramaError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 596
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaError - error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaCapturing()V

    .line 600
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->hideStopButton()V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 607
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->showPanoramaToastPopup(I)V

    .line 608
    return-void

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->cancelPanoramaCapture()V

    .line 604
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    goto :goto_0
.end method

.method public onPanoramaLivePreviewData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 617
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaLivePreviewData"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->onLivePreviewData([B)V

    .line 626
    return-void
.end method

.method public onPanoramaLowResolutionData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 635
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaLowResolutionData"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPanoramaThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setLowResolutionBitmap(Landroid/graphics/Bitmap;)V

    .line 639
    return-void
.end method

.method public onPanoramaProgressStitching(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 643
    const-string v0, "BurstPanorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaProgressStitching - progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaProgressStitching - CE_STATE_SHUTDOWN"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->reset()V

    .line 649
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setPostCaptureProgress(I)V

    .line 651
    if-nez p1, :cond_1

    .line 652
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopCancelTimer()V

    .line 653
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->stopPanoramaSound()V

    .line 654
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->clearPanoramaRect()V

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onPanoramaRectChanged(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v0

    if-nez v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->panoramaRectChanged(II)V

    goto :goto_0
.end method

.method public onPanoramaSlowMove()V
    .locals 2

    .prologue
    .line 674
    const-string v0, "BurstPanorama"

    const-string v1, "onPanoramaSlowMove"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->panoramaMoveSlowly()V

    .line 676
    return-void
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 691
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    if-lez v1, :cond_0

    .line 692
    const-string v1, "BurstPanorama"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_0
    return v0

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x320

    if-lt v1, v2, :cond_1

    .line 696
    const-string v1, "BurstPanorama"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 699
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 3
    .param p1, "captureMethod"    # I

    .prologue
    const/4 v2, 0x1

    .line 705
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isReadyToCapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    const-string v0, "BurstPanorama"

    const-string v1, "Drop Panorama capture start, because it\'s not ready."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_0
    return v2

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    const-string v0, "BurstPanorama"

    const-string v1, "Return, isCapturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 713
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->getCaptureProgressIncreased()I

    move-result v0

    const/16 v1, 0x320

    if-lt v0, v1, :cond_2

    .line 714
    const-string v0, "BurstPanorama"

    const-string v1, "Return PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 729
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPanorama()V

    .line 730
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mIsPanoramaCaptureStarted:Z

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;->setEnterOrientation(I)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 739
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 743
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x0

    return v0
.end method
