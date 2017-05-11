.class public Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
.super Ljava/lang/Object;
.source "MotionWideSelfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;,
        Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;
    }
.end annotation


# static fields
.field private static final DELAY_TO_HIDE_PROGRESS_POPUP:I = 0x32

.field private static final GUIDETEXT_LEFT:I = 0x1

.field private static final GUIDETEXT_NONE:I = 0x3

.field private static final GUIDETEXT_RIGHT:I = 0x2

.field private static final GUIDETEXT_START:I = 0x0

.field private static final GUIDE_ANIMATION_LANDSCAPE_FIRST_INDEX:I = 0x0

.field private static final GUIDE_ANIMATION_LANDSCAPE_LAST_INDEX:I = 0x6

.field private static final GUIDE_ANIMATION_NOT_STARTED:I = -0x1

.field private static final GUIDE_ANIMATION_PORTRAIT_FIRST_INDEX:I = 0x7

.field private static final GUIDE_ANIMATION_PORTRAIT_LAST_INDEX:I = 0xd

.field private static final LANDSCAPE_CAPTURE_COUNT:I = 0x3

.field private static final MESSAGE_HIDE_PROGRESS_POPUP:I = 0x7

.field private static final MESSAGE_SHOW_LIVEPREVIEW:I = 0x6

.field private static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_GUIDETEXT:I = 0x4

.field private static final MESSAGE_TIMEOUT_SKIP_CAPTURE:I = 0x5

.field private static final MESSAGE_WIDE_SELFIE_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_WIDE_SELFIE_WARNING_LOW:I = 0x2

.field private static final MOTION_WIDE_SELFIE_TEMP_FILE_NAME:Ljava/lang/String; = "wideselfie.jpg"

.field private static final PORTRATE_CAPTURE_COUNT:I = 0x5

.field private static final PREVIEW_RATIO:F = 1.3333334f

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final SEF_SHOT_MODE_NAME:Ljava/lang/String; = "WideselfieShot"

.field protected static final TAG:Ljava/lang/String; = "MotionWideSelfie"

.field private static final WARNINGTEXT_MOVE_SLOWLY:I = 0x4

.field private static final WARNINGTEXT_WARNING_DOWN:I = 0x1

.field private static final WARNINGTEXT_WARNING_LEFT:I = 0x2

.field private static final WARNINGTEXT_WARNING_RIGHT:I = 0x3

.field private static final WARNINGTEXT_WARNING_UP:I = 0x0

.field private static final WARNING_DOWN:I = 0x1

.field private static final WARNING_LEFT:I = 0x2

.field private static final WARNING_LEVEL_HIGH:I = 0x2

.field private static final WARNING_LEVEL_LOW:I = 0x1

.field private static final WARNING_LEVEL_NONE:I = 0x0

.field private static final WARNING_LEVEL_STOP:I = 0x3

.field private static final WARNING_NONE:I = 0x4

.field private static final WARNING_RIGHT:I = 0x3

.field private static final WARNING_UP:I = 0x0

.field private static final WIDE_SELFIE_ERROR_BLURED_RESULT_IMAGE:I = 0x4

.field private static final WIDE_SELFIE_ERROR_NOT_SUPPORT_ORIENTATION:I = 0x5

.field private static final WIDE_SELFIE_ERROR_NO_DIRECTION:I = 0x1

.field private static final WIDE_SELFIE_ERROR_REACHED_MAX_FRAME_COUNT:I = 0x3

.field private static final WIDE_SELFIE_ERROR_STITCHING:I = 0x0

.field private static final WIDE_SELFIE_ERROR_TRACING:I = 0x2


# instance fields
.field private final ANIMATION_TOP_MARGIN_LEFT:F

.field private final ANIMATION_TOP_MARGIN_TOP:F

.field private final ARROW_LANDSCAPE_OVERLAY:F

.field private final ARROW_MARGIN:F

.field private final BACKGROUND_RECT_PORTRAIT_X:F

.field private final BACKGROUND_RECT_PORTRAIT_Y:F

.field private final BASEMENU_GROUP_WIDTH:F

.field private final BASE_MENU_WEIGHT_VALUE:F

.field private FOCUS_RECT_LANDSCAPE_X:F

.field private final FOCUS_RECT_LANDSCAPE_Y:F

.field private final FOCUS_RECT_PORTRAIT_X:F

.field private FOCUS_RECT_PORTRAIT_Y:F

.field private final GUIDE_TEXT_FONT_COLOR:I

.field private final GUIDE_TEXT_HEIGHT:F

.field private GUIDE_TEXT_PORTRAIT_HEIGHT:F

.field private GUIDE_TEXT_PORTRAIT_WIDTH:F

.field private final GUIDE_TEXT_PORTRAIT_X:F

.field private final GUIDE_TEXT_PORTRAIT_Y:F

.field private final GUIDE_TEXT_POS_X:F

.field private final GUIDE_TEXT_POS_Y:F

.field private final GUIDE_TEXT_SIZE:F

.field private final GUIDE_TEXT_STROKE_COLOR:I

.field private final GUIDE_TEXT_STROKE_WIDTH:I

.field private final GUIDE_TEXT_WIDTH:F

.field private final LIVEPREVIEW_LANDSCAPE_HEIGHT:F

.field private LIVEPREVIEW_LANDSCAPE_WIDTH:F

.field private final LIVEPREVIEW_LANDSCAPE_X:F

.field private final LIVEPREVIEW_LANDSCAPE_Y:F

.field private LIVEPREVIEW_PORTRAIT_HEIGHT:F

.field private final LIVEPREVIEW_PORTRAIT_WIDTH:F

.field private final LIVEPREVIEW_PORTRAIT_X:F

.field private final LIVEPREVIEW_PORTRAIT_Y:F

.field private final LIVEPREVIEW_RECT_THICKNESS:F

.field private final LIVEPREVIEW_SCREEN_WIDTH:I

.field private final LIVEPREVIEW_SINGLE_HEIGHT:F

.field private final LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

.field private final LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

.field private LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

.field private final LIVEPREVIEW_SINGLE_WIDTH:F

.field private LIVEPREVIEW_SINGLE_X:F

.field private final NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

.field private final NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final PREVIEW_PORTRAIT_MARGIN:F

.field private final PREVIEW_PORTRAIT_RIGHT_MARGIN:F

.field private final PREVIEW_TOP_MARGIN:F

.field private final SCREEN_CROP_LANDSCAPE_HEIGHT:I

.field private final SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

.field private final SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

.field private final SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final STOP_BUTTON_DIAMETER:I

.field private final STOP_BUTTON_POS_X:I

.field private final STOP_BUTTON_POS_Y:I

.field private mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mChanged:Z

.field private mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

.field private mCurrentDirection:I

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFocusRectCenterX:F

.field private mFocusRectCenterY:F

.field private mFocusRectLeft:F

.field private mFocusRectTop:F

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mGuideAnimation:Landroid/view/animation/AlphaAnimation;

.field private mGuideAnimationDirection:Z

.field private mGuideAnimationIndex:I

.field private mGuideArrow:[Lcom/samsung/android/glview/GLImage;

.field private mGuideRect:[Lcom/samsung/android/glview/GLImage;

.field private mGuideShow:Z

.field private mGuideState:I

.field private mGuideText:Lcom/samsung/android/glview/GLText;

.field private mHeight:F

.field private mIsImageBlured:Z

.field private mIsMotionWideSelfieEnabled:Z

.field private mLeftBottomX:F

.field private mLeftBottomY:F

.field private mLeftTopX:F

.field private mLeftTopY:F

.field private mLivePreview:Lcom/samsung/android/glview/GLImage;

.field private mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mLivePreviewLock:Ljava/lang/Object;

.field private mLivePreviewPortraitHeightMargin:F

.field private mLivePreviewRealThumbnailHeight:F

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMovingDetection:Z

.field private mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

.field private mNextCaptureFocusRectCenterX:F

.field private mNextCaptureFocusRectCenterY:F

.field private mNextCaptureFocusRectLeft:F

.field private mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

.field private mNextCaptureFocusRectTop:F

.field private mNextCaptureFocusStep:I

.field private mNotSupportOrientation:Z

.field private mPlayHaptic:Z

.field private mPostProgress:I

.field private mPrevFocusRectCenterX:F

.field private mPrevFocusRectCenterY:F

.field private mPrevThumbnailHeight:F

.field private mPrevThumbnailScaleFactor:F

.field private mPrevThumbnailWidth:F

.field private mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailLeft:F

.field private mPreviewThumbnailTop:F

.field private mPreviewThumbnailWidth:F

.field private mRightBottomX:F

.field private mRightBottomY:F

.field private mRightTopX:F

.field private mRightTopY:F

.field private mSkipCapture:Z

.field private mSkipFrame:I

.field private mSkipFrameOnWideSelfie:Z

.field private mStartCheckWarning:Z

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mWarningAnimation:Landroid/view/animation/AlphaAnimation;

.field private mWarningArrow:[Lcom/samsung/android/glview/GLImage;

.field private mWarningText:Lcom/samsung/android/glview/GLText;

.field private mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

.field private mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

.field private mWideSelfieWarning:Z

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const v5, 0x3faaaaab

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_WIDTH:I

    .line 136
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_HEIGHT:I

    .line 137
    const v0, 0x7f0a024c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SCREEN_WIDTH:I

    .line 138
    const v0, 0x7f0a023c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_WIDTH:F

    .line 139
    const v0, 0x7f0a0238

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_HEIGHT:F

    .line 140
    const v0, 0x7f0a023a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_POS_X:F

    .line 141
    const v0, 0x7f0a023b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_POS_Y:F

    .line 142
    const v0, 0x7f0a008c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    .line 143
    const v0, 0x7f0a008d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    .line 144
    const v0, 0x7f0a02ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_SIZE:F

    .line 145
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    .line 146
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    .line 147
    const v0, 0x7f0d0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    .line 148
    const v0, 0x7f0a0235

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_MARGIN:F

    .line 149
    const v0, 0x7f0a0234

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    .line 150
    const v0, 0x7f0a023d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 151
    const v0, 0x7f0a023f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 152
    const v0, 0x7f0a0240

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 153
    const v0, 0x7f0a0242

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 154
    const v0, 0x7f0a0243

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    .line 155
    const v0, 0x7f0a0244

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 156
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 157
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 158
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 159
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 160
    const v0, 0x7f0a0245

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 161
    const v0, 0x7f0a0246

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    .line 162
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    .line 163
    const v0, 0x7f0a0236

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->BACKGROUND_RECT_PORTRAIT_X:F

    .line 164
    const v0, 0x7f0a0237

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->BACKGROUND_RECT_PORTRAIT_Y:F

    .line 165
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    .line 166
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    .line 167
    const v0, 0x7f0a024b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_TOP_MARGIN:F

    .line 168
    const v0, 0x7f0a0249

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    .line 169
    const v0, 0x7f0a024a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    .line 170
    const v0, 0x7f0a0248

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    .line 171
    const v0, 0x7f0a0247

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    .line 172
    const v0, 0x7f0a029f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->STOP_BUTTON_DIAMETER:I

    .line 173
    const v0, 0x7f0a0089

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    .line 174
    const v0, 0x7f0a008b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    .line 175
    const v0, 0x7f0a000c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    .line 176
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    .line 179
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->BASEMENU_GROUP_WIDTH:F

    .line 180
    const v0, 0x7f0a0052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 181
    const v0, 0x7f0a0372

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 184
    const v0, 0x7f0a02a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SHUTTER_BUTTON_WIDTH:F

    .line 185
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->BASEMENU_GROUP_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->BASE_MENU_WEIGHT_VALUE:F

    .line 186
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->BASE_MENU_WEIGHT_VALUE:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->STOP_BUTTON_POS_X:I

    .line 187
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->STOP_BUTTON_POS_Y:I

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewLock:Ljava/lang/Object;

    .line 189
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    .line 190
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    .line 191
    const v0, 0x7f0a0239

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    .line 192
    const v0, 0x7f0a023e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 193
    const v0, 0x7f0a0241

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 194
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 195
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 196
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    .line 197
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    .line 198
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    .line 199
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    .line 200
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrame:I

    .line 201
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    .line 202
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipCapture:Z

    .line 203
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsImageBlured:Z

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsMotionWideSelfieEnabled:Z

    .line 205
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    .line 206
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPlayHaptic:Z

    .line 207
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrameOnWideSelfie:Z

    .line 208
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    .line 209
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    .line 210
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailLeft:F

    .line 211
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    .line 212
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailWidth:F

    .line 213
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailHeight:F

    .line 214
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    .line 215
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterX:F

    .line 216
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterY:F

    .line 217
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    .line 218
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    .line 219
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevFocusRectCenterX:F

    .line 220
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevFocusRectCenterY:F

    .line 221
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    .line 222
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    .line 223
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    .line 224
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    .line 225
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    .line 226
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    .line 227
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    .line 228
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    .line 229
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWidth:F

    .line 230
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mHeight:F

    .line 231
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 232
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 233
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 234
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 235
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mStartCheckWarning:Z

    .line 236
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    .line 237
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    .line 238
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    .line 239
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationDirection:Z

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationIndex:I

    .line 241
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 242
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mChanged:Z

    .line 243
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 244
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    .line 245
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    .line 246
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideState:I

    .line 247
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    .line 248
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    .line 249
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 250
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPostProgress:I

    .line 251
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 252
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 253
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 254
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 255
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 256
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 257
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 258
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 259
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 260
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 261
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 262
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    .line 263
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 264
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 265
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 266
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    .line 267
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    .line 268
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectLeft:F

    .line 269
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectTop:F

    .line 270
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectCenterX:F

    .line 271
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectCenterY:F

    .line 272
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    .line 273
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    .line 274
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentDirection:I

    .line 275
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewRealThumbnailHeight:F

    .line 276
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewPortraitHeightMargin:F

    .line 277
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMovingDetection:Z

    .line 278
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNotSupportOrientation:Z

    .line 280
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 312
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 313
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHRMSensor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationIndex:I

    return p1
.end method

.method static synthetic access$1008(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationIndex:I

    return v0
.end method

.method static synthetic access$1010(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)[Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationDirection:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationDirection:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideRect(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHapticEnabled(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->cancelWideSelfieCapture()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showPreviewGroup()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideGuideText()V

    return-void
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipCapture:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setPostCaptureProgress(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->unregisterCameraOrientationListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearMessageHandler()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopMotionWideSelfieCapture()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideStopButton()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    return v0
.end method

.method private calcLivePreviewSize(FFFF)F
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1148
    const/4 v0, 0x0

    .line 1149
    .local v0, "result":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1162
    :goto_0
    return v0

    .line 1152
    :pswitch_0
    mul-float v1, v2, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p3, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1153
    goto :goto_0

    .line 1156
    :pswitch_1
    mul-float v1, v2, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p4, p2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1157
    goto :goto_0

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cancelWideSelfieCapture()V
    .locals 2

    .prologue
    .line 1166
    const-string v0, "MotionWideSelfie"

    const-string v1, "cancelWideSelfieCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForMotionWideSelfieStartThreadComplete()V

    .line 1170
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelMotionWideSelfie()V

    .line 1172
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 1174
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1177
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setWideSelfieState(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;)V

    .line 1179
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->removeTempFile()V

    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 1183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setGestureControl(Z)V

    .line 1184
    return-void
.end method

.method private clearMessageHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->access$800(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;)V

    .line 1189
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    .line 1190
    return-void
.end method

.method private clearTrapezoidFocusRect()V
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->clear()V

    .line 1196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 1198
    :cond_0
    return-void
.end method

.method private clearWideSelfieRect()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1201
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1218
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1219
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1221
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1224
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_6

    .line 1225
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1227
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_7

    .line 1228
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1230
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_8

    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 1234
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningArrow()V

    .line 1235
    return-void
.end method

.method private createTrapezoidFocusRect()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1238
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-nez v0, :cond_0

    .line 1239
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1244
    :cond_0
    return-void
.end method

.method private decodeRgbaBitmap([B)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 1254
    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v8, :cond_1

    .line 1255
    :cond_0
    const-string v6, "MotionWideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Received null or invalid data"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :goto_0
    return-object v1

    .line 1260
    :cond_1
    const/4 v6, 0x0

    aget-byte v6, p1, v6

    const/16 v7, 0x52

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    const/16 v7, 0x42

    if-ne v6, v7, :cond_2

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    const/16 v7, 0x41

    if-eq v6, v7, :cond_3

    .line 1261
    :cond_2
    const-string v6, "MotionWideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1267
    :cond_3
    const/4 v6, 0x4

    :try_start_0
    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v5

    .line 1268
    .local v5, "width":I
    const/16 v6, 0x8

    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1274
    .local v3, "height":I
    array-length v6, p1

    mul-int v7, v5, v3

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x10

    if-ge v6, v7, :cond_4

    .line 1275
    const-string v6, "MotionWideSelfie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Util.decodeRgbaBitmap: The buffer is too small to contain a image of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1269
    .end local v3    # "height":I
    .end local v5    # "width":I
    :catch_0
    move-exception v2

    .line 1270
    .local v2, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "MotionWideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1281
    .end local v2    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3    # "height":I
    .restart local v5    # "width":I
    :cond_4
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1289
    .local v1, "bmp":Landroid/graphics/Bitmap;
    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1290
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-virtual {v0, p1, v8, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1291
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1292
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1293
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 1282
    .end local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 1283
    .local v4, "oom":Ljava/lang/OutOfMemoryError;
    const-string v6, "MotionWideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Out of memory [1]"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private declared-synchronized getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 1299
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFocusRectDistance()F
    .locals 3

    .prologue
    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, "distance":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1314
    :goto_0
    return v0

    .line 1307
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1308
    goto :goto_0

    .line 1311
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevFocusRectCenterY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 1304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getGuideDirection(I)I
    .locals 3
    .param p1, "step"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1318
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_2

    .line 1319
    if-ne p1, v1, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1322
    goto :goto_0

    .line 1324
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v1, :cond_3

    .line 1325
    if-ne p1, v1, :cond_0

    move v0, v1

    .line 1326
    goto :goto_0

    .line 1331
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private hideCropArea()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1337
    const-string v0, "MotionWideSelfie"

    const-string v1, "hideCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1342
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideGuideRect()V
    .locals 3

    .prologue
    .line 1348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1349
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1351
    :cond_0
    return-void
.end method

.method private hideGuideText()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1354
    const-string v0, "MotionWideSelfie"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 1361
    :cond_0
    return-void
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 1364
    const-string v0, "MotionWideSelfie"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1366
    return-void
.end method

.method private hideWarningArrow()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x4

    .line 1370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1372
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1374
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 1375
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1376
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1374
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1378
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    .line 1379
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1378
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1381
    :cond_2
    return-void
.end method

.method private hideWarningText()V
    .locals 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_1

    .line 1388
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 1390
    :cond_1
    return-void
.end method

.method private isMaxPositionReached(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1393
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1441
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    move v0, v1

    .line 1442
    :goto_0
    return v0

    .line 1396
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v3, :cond_2

    .line 1397
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 1398
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    if-nez v2, :cond_1

    .line 1399
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1402
    goto :goto_0

    .line 1405
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    .line 1406
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1407
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    if-nez v2, :cond_3

    .line 1408
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1411
    goto :goto_0

    .line 1418
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v3, :cond_5

    .line 1419
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1420
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    if-nez v2, :cond_4

    .line 1421
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1424
    goto :goto_0

    .line 1427
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    .line 1428
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 1429
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    if-nez v2, :cond_6

    .line 1430
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1433
    goto :goto_0

    .line 1393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isMotionRecorded()Z
    .locals 1

    .prologue
    .line 1446
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsImageBlured:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsMotionWideSelfieEnabled:Z

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
    .line 1457
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;
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

.method private isRectGuideVisible()Z
    .locals 2

    .prologue
    .line 1461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    .line 1463
    const/4 v1, 0x1

    .line 1465
    :goto_1
    return v1

    .line 1461
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1465
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isStitching()Z
    .locals 1

    .prologue
    .line 1469
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPostProgress:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onLivePreviewData([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 1473
    monitor-enter p0

    const/4 v0, 0x0

    .line 1474
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->decodeRgbaBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1475
    if-nez v0, :cond_1

    .line 1476
    const-string v6, "MotionWideSelfie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1595
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1480
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrameOnWideSelfie:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrame:I

    if-ge v6, v9, :cond_2

    .line 1481
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V

    .line 1482
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrame:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrame:I

    .line 1483
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrame:I

    if-ne v6, v9, :cond_0

    .line 1484
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showPreviewGroup()V

    .line 1485
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrameOnWideSelfie:Z

    .line 1486
    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrame:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1473
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1491
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    if-eq v6, v8, :cond_3

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    if-nez v6, :cond_5

    .line 1492
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1493
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mStartCheckWarning:Z

    .line 1502
    :cond_4
    :goto_1
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailWidth:F

    .line 1503
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailHeight:F

    .line 1505
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setPreviewThumbnailSize(II)V

    .line 1507
    const/4 v2, 0x0

    .local v2, "left":F
    const/4 v4, 0x0

    .local v4, "top":F
    const/4 v5, 0x0

    .local v5, "width":F
    const/4 v1, 0x0

    .line 1509
    .local v1, "height":F
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v6, :pswitch_data_0

    .line 1557
    const-string v6, "MotionWideSelfie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLivePreviewData : invalid orientation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1495
    .end local v1    # "height":F
    .end local v2    # "left":F
    .end local v4    # "top":F
    .end local v5    # "width":F
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v7, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-eq v6, v7, :cond_4

    .line 1496
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eq v6, v8, :cond_6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eq v6, v9, :cond_6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    if-eq v6, v8, :cond_6

    .line 1497
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 1498
    :cond_6
    const/16 v6, 0xb4

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1512
    .restart local v1    # "height":F
    .restart local v2    # "left":F
    .restart local v4    # "top":F
    .restart local v5    # "width":F
    :pswitch_0
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    if-gt v6, v8, :cond_b

    .line 1513
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1514
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1515
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 1516
    const/4 v4, 0x0

    .line 1561
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 1562
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1563
    :try_start_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1564
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v9, v4

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FFZ)V

    .line 1565
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v8, v5, v8

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v9, v1, v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1566
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1569
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_8

    .line 1570
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1572
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    if-nez v6, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isRectGuideVisible()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1573
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v8, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v6, v8, :cond_f

    .line 1574
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1575
    const/16 v6, 0x8

    new-array v3, v6, [F

    const/4 v6, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    aput v8, v3, v6

    const/4 v6, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    aput v8, v3, v6

    const/4 v6, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    aput v8, v3, v6

    const/4 v6, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    aput v8, v3, v6

    const/4 v6, 0x4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    aput v8, v3, v6

    const/4 v6, 0x5

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    aput v8, v3, v6

    const/4 v6, 0x6

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    aput v8, v3, v6

    const/4 v6, 0x7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    aput v8, v3, v6

    .line 1576
    .local v3, "point":[F
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mHeight:F

    invoke-virtual {v6, v8, v9, v3}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 1577
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1590
    .end local v3    # "point":[F
    :cond_9
    :goto_3
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mChanged:Z

    if-eqz v6, :cond_a

    .line 1591
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->refreshBackgroundRect()V

    .line 1593
    :cond_a
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6

    .line 1518
    :cond_b
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    .line 1519
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1520
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailLeft:F

    .line 1521
    const/4 v4, 0x0

    .line 1522
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v6, v10, :cond_c

    .line 1523
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 1524
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    .line 1526
    :cond_c
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v6, v8, :cond_7

    .line 1527
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 1528
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    .line 1535
    :pswitch_1
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    if-gt v6, v8, :cond_d

    .line 1536
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1537
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1538
    const/4 v2, 0x0

    .line 1539
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    goto/16 :goto_2

    .line 1541
    :cond_d
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1542
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    .line 1543
    const/4 v2, 0x0

    .line 1544
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    .line 1545
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v6, v10, :cond_e

    .line 1546
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 1547
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    .line 1549
    :cond_e
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v6, v8, :cond_7

    .line 1550
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 1551
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mStartCheckWarning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1579
    :cond_f
    :try_start_5
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_3

    .line 1583
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_11

    .line 1584
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1586
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->moveBaseLayoutAbsolute(FFZ)V

    .line 1587
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v5, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1588
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 1509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onWideDirectionChanged(I)V
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1599
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentDirection:I

    .line 1601
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-nez v2, :cond_1

    .line 1655
    :cond_0
    :goto_0
    return-void

    .line 1604
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mChanged:Z

    if-nez v2, :cond_2

    .line 1605
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-eq v2, p1, :cond_2

    .line 1606
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mChanged:Z

    .line 1607
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideArrow(I)V

    .line 1611
    :cond_2
    if-eqz p1, :cond_0

    .line 1612
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-nez v2, :cond_0

    .line 1613
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 1614
    .local v0, "height":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1626
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-eq v2, p1, :cond_4

    .line 1627
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    .line 1628
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideArrow(I)V

    .line 1630
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1631
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v5, :cond_5

    .line 1632
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1633
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    .line 1648
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1649
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showStopButton()V

    .line 1650
    const-string v2, "412"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 1652
    const-string v2, "MotionWideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideDirectionChanged: direction changed, mDetectedDirection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1617
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1618
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1619
    goto :goto_1

    .line 1622
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1623
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    goto :goto_1

    .line 1634
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v4, :cond_4

    .line 1635
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1636
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1639
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v5, :cond_7

    .line 1640
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1641
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1642
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v2, v4, :cond_4

    .line 1643
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1644
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prepareMotionWideSelfie()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1658
    const-string v0, "MotionWideSelfie"

    const-string v1, "prepareMotionWideSelfie()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionWideSelfieMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1661
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsMotionWideSelfieEnabled:Z

    .line 1665
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsMotionWideSelfieEnabled:Z

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionWideSelfieMode(Z)V

    .line 1666
    return-void

    .line 1663
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsMotionWideSelfieEnabled:Z

    goto :goto_0
.end method

.method private prepareWarningArrow(I)V
    .locals 8
    .param p1, "warningLevel"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1669
    if-ne p1, v6, :cond_3

    .line 1670
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 1672
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    .line 1676
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1677
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1678
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1679
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1682
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    .line 1683
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessage(I)Z

    .line 1684
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1685
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1687
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1691
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1692
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    .line 1716
    :cond_2
    :goto_0
    return-void

    .line 1694
    :cond_3
    if-ne p1, v4, :cond_5

    .line 1695
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 1697
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    .line 1700
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    .line 1701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessage(I)Z

    .line 1702
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1703
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1704
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1705
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1706
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1707
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1708
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1709
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1710
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    goto :goto_0

    .line 1713
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    .line 1714
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopWideSelfieSound()V

    goto :goto_0
.end method

.method private refreshBackgroundRect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1719
    const/4 v0, 0x0

    .line 1720
    .local v0, "mAmountDelta":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-nez v1, :cond_2

    .line 1721
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1722
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_1

    .line 1723
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v0, v1, v2

    .line 1726
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1727
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    .line 1730
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-ne v1, v4, :cond_4

    .line 1731
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1732
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_3

    .line 1733
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1734
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1735
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    .line 1736
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1737
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto :goto_0

    .line 1740
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-ne v1, v3, :cond_6

    .line 1741
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1742
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_5

    .line 1743
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    .line 1744
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1745
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1746
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1747
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    add-float v0, v1, v2

    .line 1748
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    .line 1751
    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1752
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1753
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_7

    .line 1754
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    sub-float v0, v1, v2

    .line 1755
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    .line 1756
    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1757
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1758
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1759
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0
.end method

.method private refreshLivePreviewPosition()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x3

    const/4 v6, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 1766
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v7, :cond_1

    .line 1876
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v8, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STARTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v7, v8, :cond_3

    .line 1771
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPlayHaptic:Z

    if-eqz v7, :cond_2

    .line 1772
    const/16 v7, 0x8

    new-array v5, v7, [F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    aput v7, v5, v10

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    aput v7, v5, v12

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    aput v8, v5, v7

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    aput v7, v5, v13

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    aput v8, v5, v7

    const/4 v7, 0x5

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    aput v8, v5, v7

    const/4 v7, 0x6

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    aput v8, v5, v7

    const/4 v7, 0x7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    aput v8, v5, v7

    .line 1773
    .local v5, "point":[F
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mHeight:F

    invoke-virtual {v7, v8, v9, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 1774
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1776
    .end local v5    # "point":[F
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1777
    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    .line 1780
    :cond_3
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1783
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v6

    .line 1784
    .local v3, "TOP_MARGIN":F
    :goto_1
    const/4 v0, 0x0

    .line 1786
    .local v0, "LEFT_MARGIN":F
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    if-ne v7, v12, :cond_7

    .line 1787
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v7, 0x7

    if-ge v4, v7, :cond_5

    .line 1788
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailLeft:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1787
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1783
    .end local v0    # "LEFT_MARGIN":F
    .end local v3    # "TOP_MARGIN":F
    .end local v4    # "i":I
    :cond_4
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 1790
    .restart local v0    # "LEFT_MARGIN":F
    .restart local v3    # "TOP_MARGIN":F
    .restart local v4    # "i":I
    :cond_5
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailLeft:F

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 1791
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 1792
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    .line 1799
    .end local v4    # "i":I
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1800
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v10, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1801
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1803
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1804
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1805
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1807
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1808
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    add-float/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1810
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1811
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_POS_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_POS_Y:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1813
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1814
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_POS_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_POS_Y:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1816
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 1817
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v13, v13}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1818
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v13, v13}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1793
    :cond_7
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    if-nez v6, :cond_6

    .line 1794
    const v6, 0x7f0a023e

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 1795
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 1796
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    goto/16 :goto_3

    .line 1820
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v12, v12}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1821
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v12, v12}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1826
    .end local v0    # "LEFT_MARGIN":F
    .end local v3    # "TOP_MARGIN":F
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v7

    if-eqz v7, :cond_9

    move v1, v6

    .line 1827
    .local v1, "PORT_MARGIN":F
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v7

    if-eqz v7, :cond_a

    move v2, v6

    .line 1829
    .local v2, "PORT_RIGHT_MARGIN":F
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setPortraitModePosition()V

    .line 1831
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    if-ne v7, v12, :cond_d

    .line 1832
    const/4 v4, 0x7

    .restart local v4    # "i":I
    :goto_6
    const/16 v7, 0xe

    if-ge v4, v7, :cond_b

    .line 1833
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1832
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1826
    .end local v1    # "PORT_MARGIN":F
    .end local v2    # "PORT_RIGHT_MARGIN":F
    .end local v4    # "i":I
    :cond_9
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_4

    .line 1827
    .restart local v1    # "PORT_MARGIN":F
    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_5

    .line 1835
    .restart local v2    # "PORT_RIGHT_MARGIN":F
    .restart local v4    # "i":I
    :cond_b
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    mul-float/2addr v8, v11

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewPortraitHeightMargin:F

    .line 1836
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    mul-float/2addr v7, v11

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1837
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1838
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    .line 1846
    .end local v4    # "i":I
    :cond_c
    :goto_7
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1847
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v9, v2

    invoke-virtual {v7, v10, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1848
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1850
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1851
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->BACKGROUND_RECT_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->BACKGROUND_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v2

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1854
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1856
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1857
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1859
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1860
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float v8, v6, v8

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1862
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1863
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1865
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-ne v6, v13, :cond_e

    .line 1866
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v13, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1867
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v13, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1839
    :cond_d
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    if-nez v7, :cond_c

    .line 1840
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewPortraitHeightMargin:F

    .line 1841
    const v7, 0x7f0a0241

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1842
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1843
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    goto/16 :goto_7

    .line 1869
    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v12, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1870
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v12, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeTempFile()V
    .locals 6

    .prologue
    .line 1883
    const-string v3, "MotionWideSelfie"

    const-string v4, "removeTempFile"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, "directory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wideselfie.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1887
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    :goto_0
    return-void

    .line 1888
    :catch_0
    move-exception v1

    .line 1889
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "MotionWideSelfie"

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
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1894
    const-string v0, "MotionWideSelfie"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setWideSelfieState(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;)V

    .line 1896
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipCapture:Z

    .line 1897
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mChanged:Z

    .line 1898
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPostProgress:I

    .line 1899
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    .line 1900
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentDirection:I

    .line 1901
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    .line 1902
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailWidth:F

    .line 1903
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailHeight:F

    .line 1904
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMovingDetection:Z

    .line 1905
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsImageBlured:Z

    .line 1906
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationIndex:I

    .line 1907
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevFocusRectCenterX:F

    .line 1908
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevFocusRectCenterY:F

    .line 1909
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterX:F

    .line 1910
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterY:F

    .line 1912
    monitor-enter p0

    .line 1913
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    .line 1914
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V

    .line 1917
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopCancelTimer()V

    .line 1918
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopWideSelfieSound()V

    .line 1920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 1922
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1925
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideState:I

    .line 1926
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideStopButton()V

    .line 1927
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setPreviewThumbnailSizeToDefault()V

    .line 1929
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->resetTrapezoid()V

    .line 1930
    return-void

    .line 1914
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetTrapezoid()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1933
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    .line 1934
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    .line 1935
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    .line 1936
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    .line 1937
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    .line 1938
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    .line 1939
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    .line 1940
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    .line 1941
    return-void
.end method

.method private restartCancelTimer()V
    .locals 0

    .prologue
    .line 1945
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopCancelTimer()V

    .line 1946
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->startCancelTimer()V

    .line 1947
    return-void
.end method

.method private setDelayedSkipCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1950
    const-string v0, "MotionWideSelfie"

    const-string v1, "setDelayedSkipCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    .line 1952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipCapture:Z

    .line 1953
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1956
    :cond_0
    return-void
.end method

.method private setFocusRectLeftTop(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 1959
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterX:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevFocusRectCenterX:F

    .line 1960
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterY:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevFocusRectCenterY:F

    .line 1961
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterX:F

    .line 1962
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterY:F

    .line 1964
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v4, :pswitch_data_0

    .line 1980
    :goto_0
    return-void

    .line 1967
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1968
    .local v3, "TOP_MARGIN":F
    :goto_1
    const/4 v0, 0x0

    .line 1969
    .local v0, "LEFT_MARGIN":F
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    .line 1970
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    goto :goto_0

    .line 1967
    .end local v0    # "LEFT_MARGIN":F
    .end local v3    # "TOP_MARGIN":F
    :cond_0
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 1974
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 1975
    .local v1, "PORT_MARGIN":F
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1976
    .local v2, "PORT_RIGHT_MARGIN":F
    :goto_3
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    .line 1977
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectCenterY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    goto :goto_0

    .line 1974
    .end local v1    # "PORT_MARGIN":F
    .end local v2    # "PORT_RIGHT_MARGIN":F
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_2

    .line 1975
    .restart local v1    # "PORT_MARGIN":F
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_3

    .line 1964
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setGestureControl(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1983
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 1988
    :goto_0
    return-void

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto :goto_0
.end method

.method private setHRMSensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1991
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 1996
    :goto_0
    return-void

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setHapticEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1999
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPlayHaptic:Z

    .line 2000
    return-void
.end method

.method private setMotionWideSelfieEnabled(I)V
    .locals 4
    .param p1, "modeId"    # I

    .prologue
    const/4 v3, 0x1

    .line 2003
    const-string v0, "MotionWideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionWideSelfieEnabled - modeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    if-ne p1, v3, :cond_0

    .line 2006
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsMotionWideSelfieEnabled:Z

    .line 2010
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsMotionWideSelfieEnabled:Z

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableMotionWideSelfieMode(Z)V

    .line 2011
    return-void

    .line 2008
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsMotionWideSelfieEnabled:Z

    goto :goto_0
.end method

.method private setOutputFile()V
    .locals 7

    .prologue
    .line 2017
    const-string v4, "MotionWideSelfie"

    const-string v5, "setOutputFile"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 2020
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2021
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2022
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2023
    const-string v4, "MotionWideSelfie"

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

    .line 2027
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 2029
    new-instance v0, Ljava/io/File;

    .end local v0    # "cameraDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2030
    .restart local v0    # "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2031
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2032
    const-string v4, "MotionWideSelfie"

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

    .line 2033
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v5, -0xa

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 2048
    :goto_0
    return-void

    .line 2038
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wideselfie.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2039
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2040
    .local v3, "preFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2041
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2042
    const-string v4, "MotionWideSelfie"

    const-string v5, "temp file was deleted"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_2
    const-string v4, "MotionWideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOutputFile PATH: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPortraitModePosition()V
    .locals 2

    .prologue
    .line 2051
    const v0, 0x7f0a0241

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 2052
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 2053
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    .line 2054
    return-void
.end method

.method private declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 2057
    monitor-enter p0

    :try_start_0
    const-string v0, "MotionWideSelfie"

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

    .line 2058
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPostProgress:I

    .line 2059
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2060
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideStopButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    :cond_0
    monitor-exit p0

    return-void

    .line 2057
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPreviewThumbnailLeftTop(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v1, 0x0

    .line 2065
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 2081
    :goto_0
    return-void

    .line 2068
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailLeft:F

    .line 2069
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    goto :goto_0

    .line 2073
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewRealThumbnailHeight:F

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->calcLivePreviewSize(FFFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewRealThumbnailHeight:F

    .line 2076
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewRealThumbnailHeight:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    goto :goto_0

    .line 2065
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPreviewThumbnailSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2084
    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    .line 2085
    int-to-float v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    .line 2086
    return-void
.end method

.method private setPreviewThumbnailSizeToDefault()V
    .locals 1

    .prologue
    .line 2089
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    .line 2090
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    .line 2091
    return-void
.end method

.method private setTrapezoidPosition(FFFFFFFF)V
    .locals 5
    .param p1, "leftTopX"    # F
    .param p2, "leftTopY"    # F
    .param p3, "rightTopX"    # F
    .param p4, "rightTopY"    # F
    .param p5, "rightBottomX"    # F
    .param p6, "rightBottomY"    # F
    .param p7, "leftBottomX"    # F
    .param p8, "leftBottomY"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 2094
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 2126
    :goto_0
    return-void

    .line 2097
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 2098
    .local v0, "centerX":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 2099
    .local v1, "centerY":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    .line 2100
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    .line 2101
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    .line 2102
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    .line 2103
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    .line 2104
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    .line 2105
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    .line 2106
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    .line 2107
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWidth:F

    .line 2108
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_2
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mHeight:F

    goto/16 :goto_0

    .line 2107
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_1

    .line 2108
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_2

    .line 2112
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 2113
    .restart local v0    # "centerX":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 2114
    .restart local v1    # "centerY":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    .line 2115
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    .line 2116
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    .line 2117
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    .line 2118
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    .line 2119
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    .line 2120
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    .line 2121
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    .line 2122
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_3
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWidth:F

    .line 2123
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_4
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mHeight:F

    goto/16 :goto_0

    .line 2122
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_3

    .line 2123
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_4

    .line 2094
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showCropArea(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2130
    const-string v0, "MotionWideSelfie"

    const-string v1, "showCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 2132
    :cond_0
    const-string v0, "MotionWideSelfie"

    const-string v1, "return, because some cropArea is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :goto_0
    return-void

    .line 2135
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2138
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2141
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    .line 2145
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2146
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2148
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    .line 2135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showGuideArrow(I)V
    .locals 13
    .param p1, "state"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 2154
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v6, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v5, v6, :cond_1

    .line 2329
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideState:I

    if-eq v5, p1, :cond_0

    .line 2160
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideState:I

    .line 2161
    const/4 v0, 0x0

    .line 2162
    .local v0, "arrow_x":F
    const/4 v1, 0x0

    .line 2163
    .local v1, "arrow_y":F
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v5, :cond_2

    .line 2164
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2165
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2166
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2167
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v5, v11}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2170
    :cond_2
    if-nez p1, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v5, :cond_3

    .line 2171
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2172
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v6, 0x46

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2173
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v5, v10}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2174
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v5, v11}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2175
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v6, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$3;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2223
    :cond_3
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 2226
    :pswitch_0
    if-ne p1, v10, :cond_4

    .line 2227
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v6, v12

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v6

    div-float/2addr v6, v12

    sub-float v0, v5, v6

    .line 2228
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v5, v6

    .line 2229
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningArrow()V

    .line 2231
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2233
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2234
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2235
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2236
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5, v9}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2237
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2238
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2240
    :cond_4
    if-ne p1, v11, :cond_5

    .line 2241
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v6, v12

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v6

    div-float/2addr v6, v12

    sub-float v0, v5, v6

    .line 2242
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v5, v6

    .line 2243
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningArrow()V

    .line 2245
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2247
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2248
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2249
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5, v9}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2250
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2251
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2252
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2253
    :cond_5
    if-nez p1, :cond_0

    .line 2254
    const/4 v2, 0x0

    .line 2255
    .local v2, "first":I
    const/4 v4, 0x6

    .line 2256
    .local v4, "last":I
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v6, v12

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v6

    div-float/2addr v6, v12

    sub-float v0, v5, v6

    .line 2257
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v5, v6

    .line 2258
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationDirection:Z

    .line 2259
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningArrow()V

    .line 2260
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_6

    .line 2261
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2262
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2264
    :cond_6
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideRect(I)V

    .line 2265
    move v3, v2

    .local v3, "i":I
    :goto_1
    if-gt v3, v4, :cond_7

    .line 2266
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2265
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2269
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2270
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2271
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2276
    .end local v2    # "first":I
    .end local v3    # "i":I
    .end local v4    # "last":I
    :pswitch_1
    if-ne p1, v10, :cond_8

    .line 2277
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_MARGIN:F

    add-float v0, v5, v6

    .line 2278
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v12

    add-float v1, v5, v6

    .line 2279
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningArrow()V

    .line 2281
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2283
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2284
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2285
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2286
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2287
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2288
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2289
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2291
    :cond_8
    if-ne p1, v11, :cond_9

    .line 2292
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_MARGIN:F

    add-float v0, v5, v6

    .line 2293
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v12

    add-float v1, v5, v6

    .line 2294
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningArrow()V

    .line 2296
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2298
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2299
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5, v9}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2300
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v11

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2301
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2302
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v10

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2303
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2304
    :cond_9
    if-nez p1, :cond_0

    .line 2305
    const/4 v2, 0x7

    .line 2306
    .restart local v2    # "first":I
    const/16 v4, 0xd

    .line 2307
    .restart local v4    # "last":I
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_MARGIN:F

    add-float v0, v5, v6

    .line 2308
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v12

    add-float v1, v5, v6

    .line 2309
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationDirection:Z

    .line 2310
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningArrow()V

    .line 2311
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_a

    .line 2312
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2313
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2315
    :cond_a
    move v3, v2

    .restart local v3    # "i":I
    :goto_2
    if-gt v3, v4, :cond_b

    .line 2316
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2315
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2318
    :cond_b
    move v3, v2

    :goto_3
    if-gt v3, v4, :cond_c

    .line 2319
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2318
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2321
    :cond_c
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideRect(I)V

    .line 2322
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2323
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2324
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showGuideRect(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 2332
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMovingDetection:Z

    if-eqz v1, :cond_0

    .line 2339
    :goto_0
    return-void

    .line 2335
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 2336
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2338
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private showGuideText(I)V
    .locals 5
    .param p1, "guideType"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2342
    const-string v0, "MotionWideSelfie"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-eq v0, v1, :cond_1

    .line 2374
    :cond_0
    :goto_0
    return-void

    .line 2348
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isStitching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2349
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_2

    .line 2350
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2352
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 2368
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 2369
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2354
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideArrow(I)V

    .line 2355
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090291

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 2358
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideArrow(I)V

    .line 2359
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090292

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 2362
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideArrow(I)V

    .line 2363
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090293

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 2352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showNextCaptureFocusRect()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 2377
    const-string v0, "MotionWideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNextCaptureFocusRect left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v0, v1, :cond_0

    .line 2400
    :goto_0
    return-void

    .line 2381
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2384
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2387
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2388
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2389
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 2393
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2394
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectTop:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2395
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 2384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2403
    const-string v0, "MotionWideSelfie"

    const-string v1, "showPreviewGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->refreshLivePreviewPosition()V

    .line 2406
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 2410
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2412
    :cond_1
    return-void
.end method

.method private showStopButton()V
    .locals 2

    .prologue
    .line 2415
    const-string v0, "MotionWideSelfie"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2417
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2418
    return-void
.end method

.method private showWarningArrow(FFI)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "direction"    # I

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x4

    .line 2422
    if-eq p3, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-eq v1, v2, :cond_1

    .line 2443
    :cond_0
    :goto_0
    return-void

    .line 2425
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p3

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 2427
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2429
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_3

    .line 2430
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2431
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2429
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2434
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_5

    .line 2435
    if-ne v0, p3, :cond_4

    .line 2436
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2434
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2438
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_4

    .line 2441
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideGuideText()V

    .line 2442
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningText(I)V

    goto :goto_0
.end method

.method private showWarningText(I)V
    .locals 6
    .param p1, "warningType"    # I

    .prologue
    const v5, 0x7f090299

    const v4, 0x7f090297

    const v3, 0x7f090296

    const v2, 0x7f090295

    const/4 v1, 0x2

    .line 2446
    packed-switch p1, :pswitch_data_0

    .line 2477
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2478
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 2479
    return-void

    .line 2448
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_1

    .line 2449
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2451
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2454
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_3

    .line 2455
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2457
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2460
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_5

    .line 2461
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2463
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2466
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_7

    .line 2467
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2469
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2472
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090298

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showWideSelfieToastPopup(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$4;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2506
    return-void
.end method

.method private startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2509
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2512
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2513
    return-void
.end method

.method private stopCancelTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2517
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2518
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2520
    :cond_0
    return-void
.end method

.method private stopMotionWideSelfieCapture()V
    .locals 2

    .prologue
    .line 2527
    const-string v0, "MotionWideSelfie"

    const-string v1, "stopMotionWideSelfieCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2530
    const-string v0, "MotionWideSelfie"

    const-string v1, "stopMotionWideSelfieCapture: current is not Capturing so returned."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_0
    :goto_0
    return-void

    .line 2534
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STOPPING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setWideSelfieState(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;)V

    .line 2536
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V

    .line 2538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHapticEnabled(Z)V

    .line 2540
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 2541
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopMotionWideSelfie()V

    goto :goto_0
.end method

.method private stopWideSelfieSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 2546
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    .line 2547
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2548
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2549
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2552
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    .line 2553
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    .line 2555
    :cond_2
    return-void
.end method

.method private unregisterCameraOrientationListener()V
    .locals 1

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 2559
    return-void
.end method

.method private wideSelfieRectChanged([B)V
    .locals 40
    .param p1, "data"    # [B

    .prologue
    .line 2562
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v17

    .line 2563
    .local v17, "nLeft":I
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v29

    .line 2564
    .local v29, "nTop":I
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v24

    .line 2565
    .local v24, "nRight":I
    const/16 v4, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v16

    .line 2566
    .local v16, "nBottom":I
    const/16 v4, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v22

    .line 2567
    .local v22, "nOffsetX":I
    const/16 v4, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v23

    .line 2568
    .local v23, "nOffsetY":I
    const/16 v4, 0x18

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v20

    .line 2569
    .local v20, "nLeftTopX":I
    const/16 v4, 0x1c

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v21

    .line 2570
    .local v21, "nLeftTopY":I
    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v27

    .line 2571
    .local v27, "nRightTopX":I
    const/16 v4, 0x24

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v28

    .line 2572
    .local v28, "nRightTopY":I
    const/16 v4, 0x28

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v18

    .line 2573
    .local v18, "nLeftBottomX":I
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v19

    .line 2574
    .local v19, "nLeftBottomY":I
    const/16 v4, 0x30

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v25

    .line 2575
    .local v25, "nRightBottomX":I
    const/16 v4, 0x34

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v26

    .line 2576
    .local v26, "nRightBottomY":I
    const/16 v31, 0x0

    .line 2577
    .local v31, "rect_x":F
    const/16 v32, 0x0

    .line 2579
    .local v32, "rect_y":F
    const/4 v14, 0x0

    .line 2580
    .local v14, "arrow_x":F
    const/4 v15, 0x0

    .line 2582
    .local v15, "arrow_y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v4, :cond_1

    .line 2802
    :cond_0
    :goto_0
    return-void

    .line 2585
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 2588
    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setFocusRectLeftTop(FF)V

    .line 2589
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v29

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setPreviewThumbnailLeftTop(FFFF)V

    .line 2591
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2592
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->refreshLivePreviewPosition()V

    .line 2595
    :cond_2
    move/from16 v0, v20

    int-to-float v5, v0

    move/from16 v0, v21

    int-to-float v6, v0

    move/from16 v0, v27

    int-to-float v7, v0

    move/from16 v0, v28

    int-to-float v8, v0

    move/from16 v0, v25

    int-to-float v9, v0

    move/from16 v0, v26

    int-to-float v10, v0

    move/from16 v0, v18

    int-to-float v11, v0

    move/from16 v0, v19

    int-to-float v12, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setTrapezoidPosition(FFFFFFFF)V

    .line 2601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    move/from16 v31, v0

    .line 2602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    move/from16 v32, v0

    .line 2604
    const/4 v13, 0x0

    .line 2606
    .local v13, "WarningLevel":I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v36, v0

    .line 2607
    .local v36, "xDistance":D
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v38, v0

    .line 2608
    .local v38, "yDistance":D
    const/16 v33, 0x0

    .line 2610
    .local v33, "warningDistance":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMovingDetection:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    :cond_3
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v38, v4

    if-gtz v4, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    :cond_5
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v36, v4

    if-lez v4, :cond_7

    .line 2613
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideGuideRect()V

    .line 2614
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMovingDetection:Z

    .line 2615
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationDirection:Z

    .line 2618
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 2619
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mStartCheckWarning:Z

    if-eqz v4, :cond_d

    .line 2620
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 2621
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailLeft:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    .line 2632
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v33, v4, v5

    .line 2651
    :goto_2
    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    .line 2653
    .local v34, "totalDistance":D
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_15

    .line 2654
    const/4 v13, 0x0

    .line 2662
    :goto_3
    if-nez v13, :cond_9

    .line 2663
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->restartCancelTimer()V

    .line 2665
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->prepareWarningArrow(I)V

    .line 2667
    const/4 v4, 0x1

    if-lt v13, v4, :cond_20

    .line 2668
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v4, :pswitch_data_0

    .line 2749
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2750
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isRectGuideVisible()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->getFocusRectDistance()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 2754
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    aput v5, v30, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    aput v5, v30, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    aput v5, v30, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    aput v5, v30, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    aput v5, v30, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    aput v5, v30, v4

    .line 2755
    .local v30, "point":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mHeight:F

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 2758
    .end local v30    # "point":[F
    :cond_b
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideArrow(I)V

    .line 2794
    :goto_5
    const/4 v4, 0x3

    if-ne v13, v4, :cond_0

    .line 2795
    const-string v4, "MotionWideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged: Stop case - totalDistance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    .line 2797
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningArrow()V

    .line 2798
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopWideSelfieSound()V

    .line 2800
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopMotionWideSelfieCapture()V

    goto/16 :goto_0

    .line 2623
    .end local v34    # "totalDistance":D
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailLeft:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2625
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    .line 2626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2627
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    .line 2628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2630
    :cond_f
    const-wide/16 v36, 0x0

    goto/16 :goto_1

    .line 2634
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mStartCheckWarning:Z

    if-eqz v4, :cond_12

    .line 2635
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 2636
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    .line 2648
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    const/high16 v5, 0x40400000    # 3.0f

    div-float v33, v4, v5

    goto/16 :goto_2

    .line 2638
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewThumbnailTop:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    .line 2640
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_13

    .line 2641
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    .line 2642
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_14

    .line 2644
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    .line 2646
    :cond_14
    const-wide/16 v38, 0x0

    goto :goto_6

    .line 2655
    .restart local v34    # "totalDistance":D
    :cond_15
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_16

    .line 2656
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 2657
    :cond_16
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_17

    .line 2658
    const/4 v13, 0x2

    goto/16 :goto_3

    .line 2660
    :cond_17
    const/4 v13, 0x3

    goto/16 :goto_3

    .line 2670
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v14, v4, v5

    .line 2671
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v15, v4, v5

    .line 2672
    cmpl-double v4, v36, v38

    if-lez v4, :cond_18

    .line 2673
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_4

    .line 2678
    :pswitch_1
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2675
    :pswitch_2
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2681
    :cond_18
    if-lez v23, :cond_19

    .line 2682
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2683
    :cond_19
    if-gez v23, :cond_a

    .line 2684
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2688
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v14, v4, v5

    .line 2689
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v15, v4, v5

    .line 2690
    cmpl-double v4, v36, v38

    if-lez v4, :cond_1a

    .line 2691
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_4

    .line 2693
    :pswitch_4
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2696
    :pswitch_5
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2701
    :cond_1a
    if-lez v23, :cond_1b

    .line 2702
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2703
    :cond_1b
    if-gez v23, :cond_a

    .line 2704
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2708
    :pswitch_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_MARGIN:F

    add-float v14, v4, v5

    .line 2709
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 2710
    cmpl-double v4, v38, v36

    if-lez v4, :cond_1c

    .line 2711
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_4

    .line 2716
    :pswitch_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2713
    :pswitch_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2721
    :cond_1c
    if-gez v22, :cond_1d

    .line 2722
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2723
    :cond_1d
    if-lez v22, :cond_a

    .line 2724
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2728
    :pswitch_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ARROW_MARGIN:F

    add-float v14, v4, v5

    .line 2729
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 2730
    cmpl-double v4, v38, v36

    if-lez v4, :cond_1e

    .line 2731
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_4

    goto/16 :goto_4

    .line 2736
    :pswitch_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2733
    :pswitch_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2741
    :cond_1e
    if-gez v22, :cond_1f

    .line 2742
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2743
    :cond_1f
    if-lez v22, :cond_a

    .line 2744
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2760
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isRectGuideVisible()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->getFocusRectDistance()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_21

    .line 2764
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopX:F

    aput v5, v30, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftTopY:F

    aput v5, v30, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopX:F

    aput v5, v30, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightTopY:F

    aput v5, v30, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mRightBottomY:F

    aput v5, v30, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLeftBottomY:F

    aput v5, v30, v4

    .line 2765
    .restart local v30    # "point":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mHeight:F

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 2766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 2769
    .end local v30    # "point":[F
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isMaxPositionReached(FF)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideShow:Z

    if-eqz v4, :cond_24

    .line 2770
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_26

    .line 2771
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    .line 2772
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 2773
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    .line 2787
    :cond_23
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->WIDE_SELFIE_OVER_BOUNDARY:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 2788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 2790
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentDirection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideArrow(I)V

    .line 2791
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    goto/16 :goto_5

    .line 2774
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 2775
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 2776
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    goto :goto_7

    .line 2779
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    .line 2780
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 2781
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    goto :goto_7

    .line 2782
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 2783
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 2784
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    goto :goto_7

    .line 2668
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_9
    .end packed-switch

    .line 2673
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2691
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2711
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2731
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public isCapturing()Z
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STARTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v0, v1, :cond_1

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
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 7
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v6, 0xad

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 333
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    aput v6, v2, v4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 339
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 347
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->createTrapezoidFocusRect()V

    .line 348
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->reset()V

    .line 349
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showPreviewGroup()V

    .line 350
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showCropArea(I)V

    .line 352
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHRMSensor(Z)V

    .line 353
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setGestureControl(Z)V

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMotionWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;)V

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v6, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    .line 360
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    .line 361
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->prepareMotionWideSelfie()V

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v1, v2, :cond_2

    .line 371
    :cond_0
    :goto_1
    return-void

    .line 337
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v4, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto :goto_0

    .line 366
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showCropArea(I)V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 380
    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 381
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNotSupportOrientation:Z

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNotSupportOrientation:Z

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 389
    const-string v0, "MotionWideSelfie"

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

    .line 391
    packed-switch p1, :pswitch_data_0

    .line 398
    :goto_0
    return-void

    .line 393
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setMotionWideSelfieEnabled(I)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0xad
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 402
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/16 v0, 0x1f40

    const/16 v1, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 404
    const-string v0, "effect_hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 405
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 12
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 410
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 411
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 412
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 414
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SCREEN_WIDTH:I

    int-to-float v1, v1

    const v2, 0x3faaaaab

    div-float/2addr v1, v2

    sget-object v2, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3fb6a7f0    # 1.427f

    mul-float/2addr v1, v2

    const v2, 0x3f9d70a4    # 1.23f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    .line 416
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    .line 418
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 419
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02016a

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 422
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 427
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 428
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020169

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 433
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    .line 436
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const v7, 0x7f02016a

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setBypassTouch(Z)V

    .line 440
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    .line 444
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201fe

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    .line 445
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ff

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    .line 446
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 449
    new-instance v1, Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_HEIGHT:F

    const-string v7, ""

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 451
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 457
    new-instance v1, Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_HEIGHT:F

    const-string v7, ""

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 462
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 463
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fc

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 469
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f4

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f2

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 472
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020200

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 473
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f8

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x5

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fa

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x6

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fc

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x7

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x8

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f5

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x9

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f3

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xa

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020201

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xb

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f9

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xc

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fb

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 482
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xd

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c2

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c0

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200be

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 490
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 492
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c4

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x5

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 496
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x6

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c8

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x7

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0241

    .line 499
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c3

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 501
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x8

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0241

    .line 502
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c1

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 504
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x9

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0241

    .line 505
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bf

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xa

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0241

    .line 508
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xb

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0241

    .line 511
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c5

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 513
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xc

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0241

    .line 514
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xd

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0241

    .line 517
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c9

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 520
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->STOP_BUTTON_POS_X:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->STOP_BUTTON_POS_Y:I

    int-to-float v4, v2

    const v5, 0x7f020101

    const v6, 0x7f020103

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$2;-><init>(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->STOP_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p3, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 541
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_WIDTH:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 542
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_WIDTH:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 545
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 546
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 548
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 550
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 554
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 556
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 557
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 559
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 561
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 562
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 564
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v11, v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 564
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 568
    :cond_0
    const/4 v11, 0x0

    :goto_1
    const/16 v1, 0xe

    if-ge v11, v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 568
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 572
    :cond_1
    const/4 v11, 0x0

    :goto_2
    const/16 v1, 0xe

    if-ge v11, v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 572
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 576
    :cond_2
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/16 v5, 0x970

    .line 581
    const-string v4, "sef_file_type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    const-string v2, "Wide_Selfie_Info"

    .line 586
    .local v2, "keyName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isMotionRecorded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "dataSubType":I
    or-int/lit8 v0, v0, 0x1

    .line 589
    const-string v4, "sef_file_sub_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    .end local v0    # "dataSubType":I
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .local v3, "sefFile":Ljava/io/File;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/16 v5, 0x970

    const/4 v6, 0x1

    invoke-static {v3, v2, v4, v5, v6}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v3    # "sefFile":Ljava/io/File;
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 595
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "MotionWideSelfie"

    const-string v5, "error while addSEFData in WideSelfie"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHRMShutterDetected()V
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipCapture:Z

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopMotionWideSelfieCapture()V

    goto :goto_0

    .line 612
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 630
    :cond_0
    const-string v0, "MotionWideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_2

    .line 632
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V

    .line 633
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHapticEnabled(Z)V

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 637
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->cancelWideSelfieCapture()V

    .line 640
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setWideSelfieState(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;)V

    .line 641
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    .line 642
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopCancelTimer()V

    .line 643
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideStopButton()V

    .line 644
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideCropArea()V

    .line 646
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHRMSensor(Z)V

    .line 647
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setGestureControl(Z)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setMotionWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;)V

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0xad

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 652
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->unregisterCameraOrientationListener()V

    .line 654
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V

    .line 655
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearTrapezoidFocusRect()V

    .line 656
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopWideSelfieSound()V

    .line 657
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setPreviewThumbnailSizeToDefault()V

    .line 658
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearMessageHandler()V

    .line 659
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 668
    sparse-switch p1, :sswitch_data_0

    .line 700
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 670
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isStitching()Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 674
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STARTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STOPPING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v1, v2, :cond_4

    .line 678
    :cond_3
    const-string v1, "MotionWideSelfie"

    const-string v2, "Back key command is ignored, because Capturing State is not proper"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 682
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v1, v2, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopMotionWideSelfieCapture()V

    .line 684
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showCropArea(I)V

    goto :goto_0

    .line 691
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v1, v2, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopMotionWideSelfieCapture()V

    .line 693
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideStopButton()V

    goto :goto_0

    .line 668
    nop

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
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 711
    const-string v0, "MotionWideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged - mCurrentOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

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

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v0, :cond_1

    .line 714
    :cond_0
    const-string v0, "MotionWideSelfie"

    const-string v1, "onOrientationChanged - Already mCameraContext or mEngine is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    .line 766
    :goto_0
    return-void

    .line 719
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 722
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-nez v0, :cond_6

    .line 723
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eq v0, p1, :cond_4

    .line 724
    const-string v0, "MotionWideSelfie"

    const-string v1, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    .line 726
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->reset()V

    .line 727
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    const-string v0, "MotionWideSelfie"

    const-string v1, "onOrientationChanged isTimerCounting return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x3d

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 732
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showPreviewGroup()V

    .line 733
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showCropArea(I)V

    goto :goto_0

    .line 736
    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHapticEnabled(Z)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 740
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->cancelWideSelfieCapture()V

    .line 741
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWideSelfieToastPopup(I)V

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 752
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v0, v1, :cond_5

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_5

    .line 754
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipCapture:Z

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v6, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 762
    :cond_5
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    .line 764
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->refreshLivePreviewPosition()V

    .line 765
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showCropArea(I)V

    goto/16 :goto_0

    .line 748
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopMotionWideSelfieCapture()V

    .line 749
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideStopButton()V

    goto :goto_1
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 776
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 3
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    const/4 v2, 0x1

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    const-string v0, "MotionWideSelfie"

    const-string v1, "onShutterKeyReleased- Preview is not started yet"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    return v2

    .line 801
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isReadyToCapture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 802
    const-string v0, "MotionWideSelfie"

    const-string v1, "Drop Wide Selfie capture start, because it\'s not ready."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-eq v0, v1, :cond_2

    .line 807
    const-string v0, "MotionWideSelfie"

    const-string v1, "Drop Wide Selfie capture start, because it\'s capturing..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNotSupportOrientation:Z

    if-eqz v0, :cond_3

    .line 812
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWideSelfieToastPopup(I)V

    goto :goto_0

    .line 816
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 819
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 821
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setOutputFile()V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopFaceDetection()V

    .line 824
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FRONT_AF:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v0

    if-nez v0, :cond_5

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 828
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 831
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHapticEnabled(Z)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartMotionWideSelfie()V

    .line 834
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mGuideAnimationIndex:I

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 838
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STARTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setWideSelfieState(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;)V

    .line 840
    const-string v0, "4002"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 846
    const-string v0, "MotionWideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleCaptureEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    packed-switch p1, :pswitch_data_0

    .line 855
    :goto_0
    return-void

    .line 849
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->reset()V

    .line 850
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showPreviewGroup()V

    goto :goto_0

    .line 847
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 859
    const-string v0, "MotionWideSelfie"

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

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 866
    :cond_1
    if-nez p1, :cond_3

    .line 867
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 870
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showPreviewGroup()V

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 875
    :cond_3
    return-void
.end method

.method public onWideMotionSelfieCaptured()V
    .locals 3

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    const-string v0, "MotionWideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased mCaptureCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-eq v0, v1, :cond_0

    .line 883
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCaptureCount:I

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STARTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v0, v1, :cond_1

    .line 886
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setWideSelfieState(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;)V

    .line 889
    :cond_1
    return-void
.end method

.method public onWideMotionSelfieCapturedMaxFrames()V
    .locals 2

    .prologue
    .line 893
    const-string v0, "MotionWideSelfie"

    const-string v1, "onWideMotionSelfieCapturedMaxFrames"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method public onWideMotionSelfieCapturedNew()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 898
    const-string v0, "MotionWideSelfie"

    const-string v1, "onWideSelfieCapturedNew"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v0, v1, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    if-nez v0, :cond_3

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_2

    .line 905
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->refreshLivePreviewPosition()V

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 913
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    goto :goto_0
.end method

.method public onWideMotionSelfieCompleted()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 923
    const-string v5, "MotionWideSelfie"

    const-string v6, "onWideMotionSelfieCompleted"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v6, "wideselfie.jpg"

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "outputFileName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 928
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v1

    .line 930
    .local v1, "orientation":I
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()Landroid/util/Size;

    move-result-object v4

    .line 931
    .local v4, "thumbnailSize":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 932
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 933
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 934
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 935
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 937
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 938
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_WIDTH:I

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->SCREEN_HEIGHT:I

    invoke-static {v2, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 939
    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v8

    .line 938
    invoke-interface {v5, v6, v1, v7, v8}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V

    .line 943
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 944
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 947
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 948
    .local v3, "sefFile":Ljava/io/File;
    const-string v5, "Wide_Selfie_Info"

    const-string v6, "WideselfieShot"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/16 v7, 0x970

    const/4 v8, 0x1

    invoke-static {v3, v5, v6, v7, v8}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    .end local v1    # "orientation":I
    .end local v3    # "sefFile":Ljava/io/File;
    .end local v4    # "thumbnailSize":Landroid/util/Size;
    :goto_0
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setGestureControl(Z)V

    .line 957
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 958
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 959
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 961
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAfIfNeeded()V

    .line 963
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 965
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->reset()V

    .line 966
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showPreviewGroup()V

    .line 968
    const-string v5, "411"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 969
    return-void

    .line 949
    .restart local v1    # "orientation":I
    .restart local v4    # "thumbnailSize":Landroid/util/Size;
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MotionWideSelfie"

    const-string v6, "error while addSEFData in MotionWideSelfie"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 953
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "orientation":I
    .end local v4    # "thumbnailSize":Landroid/util/Size;
    :cond_2
    const-string v5, "MotionWideSelfie"

    const-string v6, "output file error"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWideMotionSelfieDirectionChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 974
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->onWideDirectionChanged(I)V

    .line 975
    return-void
.end method

.method public onWideMotionSelfieError(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    const/4 v3, 0x1

    .line 979
    const-string v0, "MotionWideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWideMotionSelfieError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    packed-switch p1, :pswitch_data_0

    .line 996
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipFrameOnWideSelfie:Z

    .line 997
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->cancelWideSelfieCapture()V

    .line 1001
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWideSelfieToastPopup(I)V

    .line 1002
    :goto_1
    return-void

    .line 986
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_STOPPING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v0, v1, :cond_0

    .line 987
    const-string v0, "MotionWideSelfie"

    const-string v1, "already Stopping..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopMotionWideSelfieCapture()V

    goto :goto_0

    .line 993
    :pswitch_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mIsImageBlured:Z

    goto :goto_0

    .line 981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWideMotionSelfieLivePreviewData([B)V
    .locals 0
    .param p1, "arg0"    # [B

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->onLivePreviewData([B)V

    .line 1009
    return-void
.end method

.method public onWideMotionSelfieNextCapturePosition(II)V
    .locals 4
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 1013
    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectCenterX:F

    .line 1014
    int-to-float v1, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectCenterY:F

    .line 1015
    const-string v1, "MotionWideSelfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWideSelfieNextCapturePosition : posX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", posY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v1, "MotionWideSelfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWideSelfieNextCapturlePosition : mNextCaptureFocusRectCenterX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectCenterX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNextCaptureFocusRectCenterY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectCenterY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1041
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showNextCaptureFocusRect()V

    .line 1042
    return-void

    .line 1022
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1023
    .local v0, "TOP_MARGIN":F
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectCenterY:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectTop:F

    .line 1024
    if-lez p1, :cond_1

    .line 1025
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    .line 1022
    .end local v0    # "TOP_MARGIN":F
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 1027
    .restart local v0    # "TOP_MARGIN":F
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    .line 1032
    .end local v0    # "TOP_MARGIN":F
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectCenterX:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectLeft:F

    .line 1033
    if-lez p2, :cond_2

    .line 1034
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectTop:F

    goto :goto_0

    .line 1036
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusRectTop:F

    goto :goto_0

    .line 1019
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWideMotionSelfieProgressStitching(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1046
    if-nez p1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 1048
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    const-string v0, "MotionWideSelfie"

    const-string v1, "onWideSelfieProgressStitching - CeState.SHUTDOWN"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->reset()V

    .line 1076
    :goto_0
    return-void

    .line 1055
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopCancelTimer()V

    .line 1056
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setPostCaptureProgress(I)V

    .line 1057
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->stopWideSelfieSound()V

    .line 1058
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V

    .line 1059
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHapticEnabled(Z)V

    .line 1061
    if-nez p1, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    goto :goto_0

    .line 1067
    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1071
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setDelayedSkipCapture()V

    goto :goto_0

    .line 1073
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onWideMotionSelfieRectChanged([B)V
    .locals 0
    .param p1, "arg0"    # [B

    .prologue
    .line 1080
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->wideSelfieRectChanged([B)V

    .line 1081
    return-void
.end method

.method public onWideMotionSelfieSingleCaptureDone()V
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1085
    const-string v0, "MotionWideSelfie"

    const-string v1, "onWideMotionSelfieSingleCaptureDone()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_IDLE:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v0, v1, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    if-nez v0, :cond_1

    .line 1090
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1091
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    .line 1094
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    .line 1095
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1107
    :cond_2
    :goto_1
    const-string v0, "MotionWideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWideSelfieSingleCaptureDone invisible next capture mDetectedDirection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextCaptureFocusStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    if-ne v0, v4, :cond_4

    .line 1109
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showStopButton()V

    goto :goto_0

    .line 1098
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    if-le v0, v3, :cond_2

    .line 1099
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    goto :goto_1

    .line 1103
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    if-le v0, v2, :cond_2

    .line 1104
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    goto :goto_1

    .line 1112
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    if-ne v0, v3, :cond_7

    .line 1113
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1114
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_8

    .line 1115
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1116
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    .line 1131
    :cond_7
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->getGuideDirection(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideArrow(I)V

    goto/16 :goto_0

    .line 1117
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    .line 1118
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1119
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1122
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_a

    .line 1123
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1124
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1125
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    .line 1126
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideWarningText()V

    .line 1127
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1095
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWideMotionSelfieSlowMove()V
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->STATE_SHOOTING:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    if-ne v0, v1, :cond_0

    .line 1137
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideGuideText()V

    .line 1138
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showWarningText(I)V

    .line 1140
    :cond_0
    return-void
.end method

.method protected setWideSelfieState(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    .prologue
    .line 1143
    const-string v0, "MotionWideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWideSelfieState : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieState:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieState;

    .line 1145
    return-void
.end method
