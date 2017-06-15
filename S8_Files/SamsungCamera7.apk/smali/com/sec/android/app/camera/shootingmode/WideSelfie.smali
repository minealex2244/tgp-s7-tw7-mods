.class public Lcom/sec/android/app/camera/shootingmode/WideSelfie;
.super Ljava/lang/Object;
.source "WideSelfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TO_HIDE_PROGRESS_POPUP:I = 0x32

.field private static final GUIDETEXT_LEFT:I = 0x1

.field private static final GUIDETEXT_NONE:I = 0x3

.field private static final GUIDETEXT_RIGHT:I = 0x2

.field private static final GUIDETEXT_START:I = 0x0

.field private static final LANDSCAPE_CAPTURE_COUNT:I = 0x3

.field private static final MESSAGE_HIDE_PROGRESS_POPUP:I = 0x8

.field private static final MESSAGE_SHOW_LIVEPREVIEW:I = 0x7

.field private static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_GUIDETEXT:I = 0x4

.field private static final MESSAGE_TIMEOUT_SKIP_CAPTURE:I = 0x5

.field private static final MESSAGE_TIMEOUT_SKIP_CHECK_WARNING:I = 0x6

.field private static final MESSAGE_WIDE_SELFIE_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_WIDE_SELFIE_WARNING_LOW:I = 0x2

.field private static final PORTRATE_CAPTURE_COUNT:I = 0x5

.field private static final PREVIEW_RATIO:F = 1.3333334f

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static final TAG:Ljava/lang/String; = "WideSelfie"

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

.field private final SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

.field private final SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

.field private final SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final STOP_BUTTON_DIAMETER:I

.field private final STOP_BUTTON_POS_X:I

.field private final STOP_BUTTON_POS_Y:I

.field private mAnimationDirection:Z

.field private mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

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

.field private mGuideArrow:[Lcom/samsung/android/glview/GLImage;

.field private mGuideRect:[Lcom/samsung/android/glview/GLImage;

.field private mGuideShow:Z

.field private mGuideState:I

.field private mGuideText:Lcom/samsung/android/glview/GLText;

.field private mHeight:F

.field private mIsCapturePreparing:Z

.field private mIsStartCapture:Z

.field private mIsWideSelfieCaptureStarted:Z

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

.field private mSkipCheckWarning:Z

.field private mSkipFrame:I

.field private mSkipFrameOnWideSelfie:Z

.field private mStartCheckWarning:Z

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

.field private mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mWarningArrow:[Lcom/samsung/android/glview/GLImage;

.field private mWarningText:Lcom/samsung/android/glview/GLText;

.field private mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

.field private mWideSelfieWarning:Z

.field private mWidth:F

.field private misWideSelfieCapturing:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const v1, 0x3faaaaab

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const v0, 0x7f0a024f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SCREEN_WIDTH:I

    .line 119
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    .line 120
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    .line 121
    const v0, 0x7f0a023f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    .line 122
    const v0, 0x7f0a023b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    .line 123
    const v0, 0x7f0a023d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_X:F

    .line 124
    const v0, 0x7f0a023e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_Y:F

    .line 125
    const v0, 0x7f0a008e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    .line 126
    const v0, 0x7f0a008f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    .line 127
    const v0, 0x7f0a02ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    .line 128
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    .line 129
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    .line 130
    const v0, 0x7f0d0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    .line 131
    const v0, 0x7f0a0238

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    .line 132
    const v0, 0x7f0a0237

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    .line 133
    const v0, 0x7f0a0240

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 134
    const v0, 0x7f0a0242

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 135
    const v0, 0x7f0a0243

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 136
    const v0, 0x7f0a0245

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 137
    const v0, 0x7f0a0246

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    .line 138
    const v0, 0x7f0a0247

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 139
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 140
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 141
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 142
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 143
    const v0, 0x7f0a0248

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 144
    const v0, 0x7f0a0249

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    .line 145
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    .line 146
    const v0, 0x7f0a0239

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_X:F

    .line 147
    const v0, 0x7f0a023a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_Y:F

    .line 148
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    .line 149
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    .line 150
    const v0, 0x7f0a024e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    .line 151
    const v0, 0x7f0a024c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    .line 152
    const v0, 0x7f0a024d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    .line 153
    const v0, 0x7f0a024b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    .line 154
    const v0, 0x7f0a024a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    .line 155
    const v0, 0x7f0a02a3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_DIAMETER:I

    .line 156
    const v0, 0x7f0a008b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    .line 157
    const v0, 0x7f0a008d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    .line 158
    const v0, 0x7f0a008c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

    .line 159
    const v0, 0x7f0a000c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    .line 160
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

    const v1, 0x7f0a000c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    .line 163
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BASEMENU_GROUP_WIDTH:F

    .line 164
    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 165
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 168
    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_WIDTH:F

    .line 169
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BASEMENU_GROUP_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BASE_MENU_WEIGHT_VALUE:F

    .line 170
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BASE_MENU_WEIGHT_VALUE:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_X:I

    .line 171
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_Y:I

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewLock:Ljava/lang/Object;

    .line 173
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    .line 174
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    .line 175
    const v0, 0x7f0a023c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    .line 176
    const v0, 0x7f0a0241

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 177
    const v0, 0x7f0a0244

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 178
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 179
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 180
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    .line 181
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    .line 182
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    .line 183
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    .line 184
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    .line 185
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 186
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    .line 187
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    .line 188
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    .line 189
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 190
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    .line 191
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 192
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPlayHaptic:Z

    .line 193
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    .line 194
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    .line 195
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    .line 196
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    .line 197
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    .line 198
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    .line 199
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    .line 200
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    .line 201
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    .line 202
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    .line 203
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    .line 204
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    .line 205
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    .line 206
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    .line 207
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    .line 208
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    .line 209
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    .line 210
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    .line 211
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    .line 212
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    .line 213
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    .line 214
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    .line 215
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    .line 216
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    .line 217
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 218
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 219
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 220
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 221
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    .line 223
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    .line 224
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    .line 225
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    .line 226
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 227
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    .line 228
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 229
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    .line 230
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    .line 231
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    .line 232
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 233
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 234
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    .line 235
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 236
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 237
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 238
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 239
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 240
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 241
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 242
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 243
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 244
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 245
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 246
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    .line 247
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 248
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 249
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 250
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    .line 251
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    .line 252
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    .line 253
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    .line 254
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    .line 255
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    .line 256
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    .line 257
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    .line 258
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    .line 259
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    .line 260
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    .line 261
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    .line 262
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 293
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHRMSensor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    return-void
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setSkipCheckWarning(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPostCaptureProgress(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private calcLivePreviewSize(FFFF)F
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1047
    const/4 v0, 0x0

    .line 1048
    .local v0, "result":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1061
    :goto_0
    return v0

    .line 1051
    :pswitch_0
    mul-float v1, v2, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p3, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1052
    goto :goto_0

    .line 1055
    :pswitch_1
    mul-float v1, v2, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p4, p2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1056
    goto :goto_0

    .line 1048
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
    .line 1065
    const-string v0, "WideSelfie"

    const-string v1, "cancelCaptureForWideSelfie"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForWideSelfieStartThreadComplete()V

    .line 1068
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopPreview()V

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelWideSelfie()V

    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 1080
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1083
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    .line 1088
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setGestureControl(Z)V

    .line 1089
    return-void
.end method

.method private clearMessageHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1092
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1093
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->access$500(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;)V

    .line 1094
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    .line 1095
    return-void
.end method

.method private clearTrapezoidFocusRect()V
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->clear()V

    .line 1101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 1103
    :cond_0
    return-void
.end method

.method private clearWideSelfieRect()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1123
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1126
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1129
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_6

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1132
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_7

    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1135
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_8

    .line 1136
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 1139
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 1140
    return-void
.end method

.method private createTrapezoidFocusRect()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1143
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-nez v0, :cond_0

    .line 1144
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 1145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1149
    :cond_0
    return-void
.end method

.method private decodeRgbaBitmap([B)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 1159
    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v8, :cond_1

    .line 1160
    :cond_0
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Received null or invalid data"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :goto_0
    return-object v1

    .line 1165
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

    .line 1166
    :cond_2
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1172
    :cond_3
    const/4 v6, 0x4

    :try_start_0
    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v5

    .line 1173
    .local v5, "width":I
    const/16 v6, 0x8

    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1179
    .local v3, "height":I
    array-length v6, p1

    mul-int v7, v5, v3

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x10

    if-ge v6, v7, :cond_4

    .line 1180
    const-string v6, "WideSelfie"

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

    .line 1174
    .end local v3    # "height":I
    .end local v5    # "width":I
    :catch_0
    move-exception v2

    .line 1175
    .local v2, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1186
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

    .line 1194
    .local v1, "bmp":Landroid/graphics/Bitmap;
    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1195
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-virtual {v0, p1, v8, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1196
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1197
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1198
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 1187
    .end local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 1188
    .local v4, "oom":Ljava/lang/OutOfMemoryError;
    const-string v6, "WideSelfie"

    const-string v7, "Util.decodeRgbaBitmap: Out of memory [1]"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private declared-synchronized getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 1204
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I
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
    .line 1208
    const/4 v0, 0x0

    .line 1209
    .local v0, "distance":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1219
    :goto_0
    return v0

    .line 1212
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1213
    goto :goto_0

    .line 1216
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 1209
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

    .line 1223
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_2

    .line 1224
    if-ne p1, v1, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1227
    goto :goto_0

    .line 1229
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v1, :cond_3

    .line 1230
    if-ne p1, v1, :cond_0

    move v0, v1

    .line 1231
    goto :goto_0

    .line 1236
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getSkipCheckWarning()Z
    .locals 1

    .prologue
    .line 1241
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    return v0
.end method

.method private hideCropArea()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1250
    const-string v0, "WideSelfie"

    const-string v1, "hideCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1256
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1257
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideGuideRect()V
    .locals 3

    .prologue
    .line 1261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1262
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1264
    :cond_0
    return-void
.end method

.method private hideGuideText()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1267
    const-string v0, "WideSelfie"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1270
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 1274
    :cond_0
    return-void
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 1277
    const-string v0, "WideSelfie"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1279
    return-void
.end method

.method private hideWarningArrow()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x4

    .line 1282
    const-string v1, "WideSelfie"

    const-string v2, "hideWarningArrow"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1284
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1285
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1287
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 1288
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1289
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1291
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 1292
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1294
    :cond_2
    return-void
.end method

.method private hideWarningText()V
    .locals 2

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 1303
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

    .line 1306
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1354
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    move v0, v1

    .line 1355
    :goto_0
    return v0

    .line 1309
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v3, :cond_2

    .line 1310
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 1311
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_1

    .line 1312
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1315
    goto :goto_0

    .line 1318
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    .line 1319
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1320
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_3

    .line 1321
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1324
    goto :goto_0

    .line 1331
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v3, :cond_5

    .line 1332
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1333
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_4

    .line 1334
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1337
    goto :goto_0

    .line 1340
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v0, :cond_0

    .line 1341
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 1342
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-nez v2, :cond_6

    .line 1343
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1346
    goto :goto_0

    .line 1306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized isReadyToCapture()Z
    .locals 1

    .prologue
    .line 1366
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;
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
    .line 1370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1371
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    .line 1372
    const/4 v1, 0x1

    .line 1374
    :goto_1
    return v1

    .line 1370
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1374
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private declared-synchronized onLivePreviewData([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 1378
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->decodeRgbaBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1379
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1380
    const-string v6, "WideSelfie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1384
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    if-ge v6, v7, :cond_2

    .line 1385
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 1386
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    .line 1387
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I

    if-ne v6, v7, :cond_0

    .line 1388
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 1389
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    .line 1390
    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrame:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1378
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1395
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-eq v6, v8, :cond_3

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v6, :cond_5

    .line 1396
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1397
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    .line 1406
    :cond_4
    :goto_1
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    .line 1407
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    .line 1409
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailSize(II)V

    .line 1411
    const/4 v2, 0x0

    .local v2, "left":F
    const/4 v4, 0x0

    .local v4, "top":F
    const/4 v5, 0x0

    .local v5, "width":F
    const/4 v1, 0x0

    .line 1413
    .local v1, "height":F
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v6, :pswitch_data_0

    .line 1461
    const-string v6, "WideSelfie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLivePreviewData : invalid orientation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1399
    .end local v1    # "height":F
    .end local v2    # "left":F
    .end local v4    # "top":F
    .end local v5    # "width":F
    :cond_5
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v6, :cond_4

    .line 1400
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v6, v8, :cond_6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v6, v7, :cond_6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    if-eq v6, v8, :cond_6

    .line 1401
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 1402
    :cond_6
    const/16 v6, 0xb4

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1416
    .restart local v1    # "height":F
    .restart local v2    # "left":F
    .restart local v4    # "top":F
    .restart local v5    # "width":F
    :pswitch_0
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-gt v6, v8, :cond_b

    .line 1417
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1418
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1419
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 1420
    const/4 v4, 0x0

    .line 1465
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 1466
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1467
    :try_start_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1468
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v9, v4

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FFZ)V

    .line 1469
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v8, v5, v8

    const/high16 v9, 0x40000000    # 2.0f

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v9, v1, v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1470
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1472
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v6, :cond_10

    .line 1473
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_8

    .line 1474
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1476
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    if-nez v6, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isRectGuideVisible()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1477
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v6, :cond_f

    .line 1478
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1479
    const/16 v6, 0x8

    new-array v3, v6, [F

    const/4 v6, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v8, v3, v6

    const/4 v6, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v8, v3, v6

    const/4 v6, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v8, v3, v6

    const/4 v6, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v8, v3, v6

    const/4 v6, 0x4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v8, v3, v6

    const/4 v6, 0x5

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v8, v3, v6

    const/4 v6, 0x6

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v8, v3, v6

    const/4 v6, 0x7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v8, v3, v6

    .line 1480
    .local v3, "point":[F
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v6, v8, v9, v3}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 1481
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1494
    .end local v3    # "point":[F
    :cond_9
    :goto_3
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    if-eqz v6, :cond_a

    .line 1495
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshBackgroundRect()V

    .line 1497
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

    .line 1422
    :cond_b
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    .line 1423
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1424
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    .line 1425
    const/4 v4, 0x0

    .line 1426
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v6, v9, :cond_c

    .line 1427
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 1428
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    .line 1430
    :cond_c
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v6, v8, :cond_7

    .line 1431
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 1432
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    .line 1439
    :pswitch_1
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-gt v6, v8, :cond_d

    .line 1440
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1441
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1442
    const/4 v2, 0x0

    .line 1443
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    goto/16 :goto_2

    .line 1445
    :cond_d
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1446
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    .line 1447
    const/4 v2, 0x0

    .line 1448
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    .line 1449
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v6, v9, :cond_e

    .line 1450
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 1451
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    goto/16 :goto_2

    .line 1453
    :cond_e
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v6, v8, :cond_7

    .line 1454
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 1455
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1483
    :cond_f
    :try_start_5
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_3

    .line 1487
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_11

    .line 1488
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1490
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->moveBaseLayoutAbsolute(FFZ)V

    .line 1491
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v5, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1492
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 1413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onWideDirectionChanged(I)V
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1502
    const-string v2, "WideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideDirectionChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    .line 1505
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-nez v2, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1507
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    if-nez v2, :cond_2

    .line 1508
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eq v2, p1, :cond_2

    .line 1509
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    .line 1511
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 1515
    :cond_2
    if-eqz p1, :cond_0

    .line 1516
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-nez v2, :cond_0

    .line 1517
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 1518
    .local v0, "height":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1530
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eq v2, p1, :cond_4

    .line 1531
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    .line 1532
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 1534
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1535
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v6, :cond_5

    .line 1536
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1537
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 1552
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1553
    const-string v2, "WideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideDirectionChanged: mDetectedDirection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showStopButton()V

    goto :goto_0

    .line 1521
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1522
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1523
    goto :goto_1

    .line 1526
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1527
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    goto :goto_1

    .line 1538
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    .line 1539
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1540
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1543
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v6, :cond_7

    .line 1544
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1545
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1546
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    .line 1547
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1548
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prepareWarningArrow(I)V
    .locals 8
    .param p1, "warningLevel"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1560
    if-ne p1, v6, :cond_3

    .line 1561
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 1563
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    .line 1567
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1570
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1573
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessage(I)Z

    .line 1575
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1577
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1578
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1581
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1582
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1583
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 1607
    :cond_2
    :goto_0
    return-void

    .line 1585
    :cond_3
    if-ne p1, v4, :cond_5

    .line 1586
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 1588
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 1591
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessage(I)Z

    .line 1593
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1595
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1596
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1599
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1600
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1601
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    goto :goto_0

    .line 1604
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 1605
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    goto :goto_0
.end method

.method private refreshBackgroundRect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1610
    const/4 v0, 0x0

    .line 1611
    .local v0, "mAmountDelta":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-nez v1, :cond_2

    .line 1612
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1613
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_1

    .line 1614
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1654
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v0, v1, v2

    .line 1617
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1618
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    .line 1621
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v1, v4, :cond_4

    .line 1622
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1623
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_3

    .line 1624
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1625
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1626
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    .line 1627
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto :goto_0

    .line 1631
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v1, v3, :cond_6

    .line 1632
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1633
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_5

    .line 1634
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    .line 1635
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1636
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1637
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1638
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float v0, v1, v2

    .line 1639
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    .line 1642
    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1643
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1644
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v3, :cond_7

    .line 1645
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float v0, v1, v2

    .line 1646
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    .line 1647
    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1648
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1649
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1650
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

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

    .line 1657
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v7, :cond_1

    .line 1767
    :cond_0
    :goto_0
    return-void

    .line 1661
    :cond_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_3

    .line 1662
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPlayHaptic:Z

    if-eqz v7, :cond_2

    .line 1663
    const/16 v7, 0x8

    new-array v5, v7, [F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v7, v5, v10

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v7, v5, v12

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v8, v5, v7

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v7, v5, v13

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v8, v5, v7

    const/4 v7, 0x5

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v8, v5, v7

    const/4 v7, 0x6

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v8, v5, v7

    const/4 v7, 0x7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v8, v5, v7

    .line 1664
    .local v5, "point":[F
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v7, v8, v9, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 1665
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1667
    .end local v5    # "point":[F
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1668
    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 1671
    :cond_3
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1674
    :pswitch_0
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_4

    move v3, v6

    .line 1675
    .local v3, "TOP_MARGIN":F
    :goto_1
    const/4 v0, 0x0

    .line 1677
    .local v0, "LEFT_MARGIN":F
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-ne v7, v12, :cond_7

    .line 1678
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v7, 0x7

    if-ge v4, v7, :cond_5

    .line 1679
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1678
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1674
    .end local v0    # "LEFT_MARGIN":F
    .end local v3    # "TOP_MARGIN":F
    .end local v4    # "i":I
    :cond_4
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 1681
    .restart local v0    # "LEFT_MARGIN":F
    .restart local v3    # "TOP_MARGIN":F
    .restart local v4    # "i":I
    :cond_5
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 1682
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 1683
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    .line 1690
    .end local v4    # "i":I
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1691
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v10, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1692
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1694
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1695
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    add-float/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1696
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1698
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1699
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    add-float/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1701
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1702
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_Y:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1704
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1705
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_POS_Y:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1707
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 1708
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v13, v13}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1709
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v13, v13}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1684
    :cond_7
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v6, :cond_6

    .line 1685
    const v6, 0x7f0a0241

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 1686
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    .line 1687
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    goto/16 :goto_3

    .line 1711
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v12, v12}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1712
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v12, v12}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1717
    .end local v0    # "LEFT_MARGIN":F
    .end local v3    # "TOP_MARGIN":F
    :pswitch_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_9

    move v1, v6

    .line 1718
    .local v1, "PORT_MARGIN":F
    :goto_4
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v7, :cond_a

    move v2, v6

    .line 1720
    .local v2, "PORT_RIGHT_MARGIN":F
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPortraitModePosition()V

    .line 1722
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-ne v7, v12, :cond_d

    .line 1723
    const/4 v4, 0x7

    .restart local v4    # "i":I
    :goto_6
    const/16 v7, 0xe

    if-ge v4, v7, :cond_b

    .line 1724
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1723
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1717
    .end local v1    # "PORT_MARGIN":F
    .end local v2    # "PORT_RIGHT_MARGIN":F
    .end local v4    # "i":I
    :cond_9
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_4

    .line 1718
    .restart local v1    # "PORT_MARGIN":F
    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_5

    .line 1726
    .restart local v2    # "PORT_RIGHT_MARGIN":F
    .restart local v4    # "i":I
    :cond_b
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    mul-float/2addr v8, v11

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    .line 1727
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    mul-float/2addr v7, v11

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1728
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1729
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    .line 1737
    .end local v4    # "i":I
    :cond_c
    :goto_7
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1738
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v9, v2

    invoke-virtual {v7, v10, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1739
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1741
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1742
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->BACKGROUND_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v2

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1745
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1747
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1748
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    add-float/2addr v8, v1

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1750
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1751
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float v8, v6, v8

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1753
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1754
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1756
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v6, v13, :cond_e

    .line 1757
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v13, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1758
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v13, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1730
    :cond_d
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v7, :cond_c

    .line 1731
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    .line 1732
    const v7, 0x7f0a0244

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1733
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1734
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    goto/16 :goto_7

    .line 1760
    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v12, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1761
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v12, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1770
    const-string v0, "WideSelfie"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 1774
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    .line 1775
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    .line 1776
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    .line 1777
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    .line 1778
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mChanged:Z

    .line 1779
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    .line 1780
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    .line 1781
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    .line 1782
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    .line 1783
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailWidth:F

    .line 1784
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailHeight:F

    .line 1785
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    .line 1786
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    .line 1787
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    .line 1788
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    .line 1789
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    .line 1790
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    .line 1792
    monitor-enter p0

    .line 1793
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    .line 1794
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 1797
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    .line 1798
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    .line 1800
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 1802
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1803
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1805
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    .line 1806
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    .line 1807
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailSizeToDefault()V

    .line 1809
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->resetTrapezoid()V

    .line 1810
    return-void

    .line 1794
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

    .line 1813
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    .line 1814
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    .line 1815
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    .line 1816
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    .line 1817
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    .line 1818
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    .line 1819
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    .line 1820
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    .line 1821
    return-void
.end method

.method private restartCancelTimer()V
    .locals 2

    .prologue
    .line 1824
    const-string v0, "WideSelfie"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    .line 1826
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->startCancelTimer()V

    .line 1827
    return-void
.end method

.method private setDelayedSkipCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1830
    const-string v0, "WideSelfie"

    const-string v1, "setDelayedSkipCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    .line 1832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 1834
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1836
    :cond_0
    return-void
.end method

.method private setFocusRectLeftTop(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 1839
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterX:F

    .line 1840
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevFocusRectCenterY:F

    .line 1841
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    .line 1842
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    .line 1844
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v4, :pswitch_data_0

    .line 1860
    :goto_0
    return-void

    .line 1847
    :pswitch_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v4, :cond_0

    .line 1848
    .local v3, "TOP_MARGIN":F
    :goto_1
    const/4 v0, 0x0

    .line 1849
    .local v0, "LEFT_MARGIN":F
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    .line 1850
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    goto :goto_0

    .line 1847
    .end local v0    # "LEFT_MARGIN":F
    .end local v3    # "TOP_MARGIN":F
    :cond_0
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 1854
    :pswitch_1
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v4, :cond_1

    move v1, v3

    .line 1855
    .local v1, "PORT_MARGIN":F
    :goto_2
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 1856
    .local v2, "PORT_RIGHT_MARGIN":F
    :goto_3
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    .line 1857
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    goto :goto_0

    .line 1854
    .end local v1    # "PORT_MARGIN":F
    .end local v2    # "PORT_RIGHT_MARGIN":F
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_2

    .line 1855
    .restart local v1    # "PORT_MARGIN":F
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_3

    .line 1844
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

    .line 1863
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 1868
    :goto_0
    return-void

    .line 1866
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto :goto_0
.end method

.method private setHRMSensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1871
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 1876
    :goto_0
    return-void

    .line 1874
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setHapticEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1879
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPlayHaptic:Z

    .line 1880
    return-void
.end method

.method private setPortraitModePosition()V
    .locals 2

    .prologue
    .line 1883
    const v0, 0x7f0a0244

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1884
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1885
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_Y:F

    .line 1886
    return-void
.end method

.method private declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 1889
    monitor-enter p0

    :try_start_0
    const-string v0, "WideSelfie"

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

    .line 1890
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    .line 1891
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    :cond_0
    monitor-exit p0

    return-void

    .line 1889
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

    .line 1897
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1913
    :goto_0
    return-void

    .line 1900
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    .line 1901
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    goto :goto_0

    .line 1905
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->calcLivePreviewSize(FFFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    .line 1908
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewRealThumbnailHeight:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    goto :goto_0

    .line 1897
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
    .line 1916
    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    .line 1917
    int-to-float v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    .line 1918
    return-void
.end method

.method private setPreviewThumbnailSizeToDefault()V
    .locals 1

    .prologue
    .line 1921
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    .line 1922
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    .line 1923
    return-void
.end method

.method private setSkipCheckWarning(Z)V
    .locals 0
    .param p1, "isSkip"    # Z

    .prologue
    .line 1245
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCheckWarning:Z

    .line 1246
    return-void
.end method

.method private setStartCapture(Z)V
    .locals 2
    .param p1, "isStart"    # Z

    .prologue
    .line 1926
    const-string v0, "WideSelfie"

    const-string v1, "setStartCapture()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    .line 1928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    .line 1929
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v0, :cond_0

    .line 1930
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    .line 1931
    :cond_0
    return-void
.end method

.method private setTrapezoidPosition(FFFFFFFF)V
    .locals 6
    .param p1, "leftTopX"    # F
    .param p2, "leftTopY"    # F
    .param p3, "rightTopX"    # F
    .param p4, "rightTopY"    # F
    .param p5, "rightBottomX"    # F
    .param p6, "rightBottomY"    # F
    .param p7, "leftBottomX"    # F
    .param p8, "leftBottomY"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1934
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1967
    :goto_0
    return-void

    .line 1937
    :pswitch_0
    const-string v2, "WideSelfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFocusRectCenterX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFocusRectCenterY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 1939
    .local v0, "centerX":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 1940
    .local v1, "centerY":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    .line 1941
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    .line 1942
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    .line 1943
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    .line 1944
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    .line 1945
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    .line 1946
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    .line 1947
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    .line 1948
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    .line 1949
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_2
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    goto/16 :goto_0

    .line 1948
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_1

    .line 1949
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_2

    .line 1953
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 1954
    .restart local v0    # "centerX":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 1955
    .restart local v1    # "centerY":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    .line 1956
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    .line 1957
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    .line 1958
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    .line 1959
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    .line 1960
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    .line 1961
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    .line 1962
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    .line 1963
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_3
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    .line 1964
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_4
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    goto/16 :goto_0

    .line 1963
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_3

    .line 1964
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_4

    .line 1934
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

    .line 1971
    const-string v0, "WideSelfie"

    const-string v1, "showCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 1973
    :cond_0
    const-string v0, "WideSelfie"

    const-string v1, "return, because some cropArea is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    :goto_0
    return-void

    .line 1976
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1979
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1980
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1981
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1982
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    .line 1986
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1987
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1988
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1989
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    .line 1976
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
    .locals 11
    .param p1, "state"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 1995
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v3, :cond_1

    .line 2291
    :cond_0
    :goto_0
    return-void

    .line 1998
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    if-eq v3, p1, :cond_0

    .line 2001
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideState:I

    .line 2002
    const/4 v0, 0x0

    .line 2003
    .local v0, "arrow_x":F
    const/4 v1, 0x0

    .line 2004
    .local v1, "arrow_y":F
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_2

    .line 2005
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2006
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2007
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2008
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2011
    :cond_2
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_3

    .line 2012
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2013
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x46

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2014
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2015
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2016
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v4, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2189
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2192
    :pswitch_0
    if-ne p1, v8, :cond_4

    .line 2193
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    .line 2194
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    .line 2195
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2197
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2199
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2200
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2201
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2202
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2203
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2204
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2206
    :cond_4
    if-ne p1, v9, :cond_5

    .line 2207
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    .line 2208
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    .line 2209
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2211
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2213
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2214
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2215
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2216
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2217
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2218
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2219
    :cond_5
    if-nez p1, :cond_0

    .line 2220
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    .line 2221
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    .line 2222
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    .line 2223
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2224
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_6

    .line 2225
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2226
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2228
    :cond_6
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V

    .line 2229
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_7

    .line 2230
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2232
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2234
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2235
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2240
    .end local v2    # "i":I
    :pswitch_1
    if-ne p1, v8, :cond_8

    .line 2241
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v0, v3, v4

    .line 2242
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    .line 2243
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2245
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2247
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2248
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2249
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2250
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2251
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2252
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2253
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2255
    :cond_8
    if-ne p1, v9, :cond_9

    .line 2256
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v0, v3, v4

    .line 2257
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    .line 2258
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2260
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2262
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2263
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2264
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2265
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2266
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2267
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2268
    :cond_9
    if-nez p1, :cond_0

    .line 2269
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v0, v3, v4

    .line 2270
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    .line 2271
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    .line 2272
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2273
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_a

    .line 2274
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2275
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2277
    :cond_a
    const/4 v2, 0x7

    .restart local v2    # "i":I
    :goto_2
    const/16 v3, 0xe

    if-ge v2, v3, :cond_b

    .line 2278
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2277
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2280
    :cond_b
    const/4 v2, 0x7

    :goto_3
    const/16 v3, 0xe

    if-ge v2, v3, :cond_c

    .line 2281
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2280
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2283
    :cond_c
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideRect(I)V

    .line 2284
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2285
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2286
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2189
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
    .line 2294
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    if-eqz v1, :cond_0

    .line 2301
    :goto_0
    return-void

    .line 2297
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 2298
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2300
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

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

    .line 2304
    const-string v0, "WideSelfie"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    if-nez v0, :cond_1

    .line 2306
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2309
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2325
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 2326
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_1

    .line 2328
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2331
    :cond_1
    return-void

    .line 2311
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090294

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2315
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090295

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2319
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2320
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090296

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2309
    nop

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

    .line 2334
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNextCaptureFocusRect left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    .line 2357
    :goto_0
    return-void

    .line 2338
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2339
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2341
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2344
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2345
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2346
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 2350
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2351
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2352
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 2341
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

    .line 2360
    const-string v0, "WideSelfie"

    const-string v1, "showPreviewGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    .line 2363
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2366
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 2367
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2369
    :cond_1
    return-void
.end method

.method private showStopButton()V
    .locals 2

    .prologue
    .line 2372
    const-string v0, "WideSelfie"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2374
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2375
    return-void
.end method

.method private showWarningArrow(FFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "direction"    # I

    .prologue
    const/16 v2, 0xe

    const/4 v3, 0x4

    .line 2379
    if-ne p3, v3, :cond_0

    .line 2400
    :goto_0
    return-void

    .line 2382
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p3

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 2384
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2386
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 2387
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2388
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2386
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2391
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 2392
    if-ne v0, p3, :cond_3

    .line 2393
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2391
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2395
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_4

    .line 2398
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    .line 2399
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningText(I)V

    goto :goto_0
.end method

.method private showWarningText(I)V
    .locals 6
    .param p1, "warningType"    # I

    .prologue
    const v5, 0x7f09029c

    const v4, 0x7f09029a

    const v3, 0x7f090299

    const v2, 0x7f090298

    const/4 v1, 0x2

    .line 2403
    packed-switch p1, :pswitch_data_0

    .line 2434
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2435
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 2436
    return-void

    .line 2405
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_1

    .line 2406
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2408
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2411
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_3

    .line 2412
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2414
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2417
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_5

    .line 2418
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2420
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2423
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne v0, v1, :cond_7

    .line 2424
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2426
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2429
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09029b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2403
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
    .locals 3
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x1

    .line 2440
    packed-switch p1, :pswitch_data_0

    .line 2454
    :goto_0
    :pswitch_0
    return-void

    .line 2442
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0901a1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2445
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f090297

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2448
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f090293

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2451
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f090292

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2440
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2457
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2460
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2461
    return-void
.end method

.method private stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2464
    const-string v0, "WideSelfie"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2468
    :cond_0
    return-void
.end method

.method private stopWideSelfie()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2471
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    if-eqz v2, :cond_1

    .line 2496
    :cond_0
    :goto_0
    return v0

    .line 2473
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 2476
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v2

    if-lez v2, :cond_2

    .line 2477
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieCapture()V

    .line 2478
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    goto :goto_0

    .line 2480
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v2, :cond_5

    .line 2481
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2482
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 2483
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 2484
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setGestureControl(Z)V

    .line 2493
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    goto :goto_0

    .line 2486
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 2487
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 2488
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2489
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 2491
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2496
    goto :goto_0
.end method

.method private stopWideSelfieCapture()V
    .locals 1

    .prologue
    .line 2500
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 2501
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 2503
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 2504
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    .line 2506
    :cond_0
    return-void
.end method

.method private stopWideSelfieSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 2509
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    .line 2510
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2511
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2515
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    .line 2516
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    .line 2518
    :cond_2
    return-void
.end method

.method private wideSelfieRectChanged([B)V
    .locals 40
    .param p1, "data"    # [B

    .prologue
    .line 2521
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v17

    .line 2522
    .local v17, "nLeft":I
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v29

    .line 2523
    .local v29, "nTop":I
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v24

    .line 2524
    .local v24, "nRight":I
    const/16 v4, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v16

    .line 2525
    .local v16, "nBottom":I
    const/16 v4, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v22

    .line 2526
    .local v22, "nOffsetX":I
    const/16 v4, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v23

    .line 2527
    .local v23, "nOffsetY":I
    const/16 v4, 0x18

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v20

    .line 2528
    .local v20, "nLeftTopX":I
    const/16 v4, 0x1c

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v21

    .line 2529
    .local v21, "nLeftTopY":I
    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v27

    .line 2530
    .local v27, "nRightTopX":I
    const/16 v4, 0x24

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v28

    .line 2531
    .local v28, "nRightTopY":I
    const/16 v4, 0x28

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v18

    .line 2532
    .local v18, "nLeftBottomX":I
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v19

    .line 2533
    .local v19, "nLeftBottomY":I
    const/16 v4, 0x30

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v25

    .line 2534
    .local v25, "nRightBottomX":I
    const/16 v4, 0x34

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v26

    .line 2535
    .local v26, "nRightBottomY":I
    const/16 v31, 0x0

    .line 2536
    .local v31, "rect_x":F
    const/16 v32, 0x0

    .line 2538
    .local v32, "rect_y":F
    const/4 v14, 0x0

    .line 2539
    .local v14, "arrow_x":F
    const/4 v15, 0x0

    .line 2541
    .local v15, "arrow_y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v4, :cond_1

    .line 2760
    :cond_0
    :goto_0
    return-void

    .line 2544
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 2547
    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setFocusRectLeftTop(FF)V

    .line 2548
    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v29

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailLeftTop(FFFF)V

    .line 2550
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2551
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    .line 2554
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

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setTrapezoidPosition(FFFFFFFF)V

    .line 2556
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideSelfieRectChanged: mDetectedDirection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideSelfieRectChanged: mFocusRectCenterX :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFocusRectCenterY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectCenterY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideSelfieRectChanged: mFocusRectLeft :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mFocusRectTop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move/from16 v31, v0

    .line 2561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move/from16 v32, v0

    .line 2563
    const/4 v13, 0x0

    .line 2565
    .local v13, "WarningLevel":I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v36, v0

    .line 2566
    .local v36, "xDistance":D
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v38, v0

    .line 2567
    .local v38, "yDistance":D
    const/16 v33, 0x0

    .line 2569
    .local v33, "warningDistance":F
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    :cond_3
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v38, v4

    if-gtz v4, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    :cond_5
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v36, v4

    if-lez v4, :cond_7

    .line 2571
    :cond_6
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xDistance : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , yDistance : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideRect()V

    .line 2573
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMovingDetection:Z

    .line 2574
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationDirection:Z

    .line 2577
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 2578
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    if-eqz v4, :cond_d

    .line 2579
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 2580
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    .line 2591
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v33, v4, v5

    .line 2610
    :goto_2
    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    .line 2612
    .local v34, "totalDistance":D
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_15

    .line 2613
    const/4 v13, 0x0

    .line 2621
    :goto_3
    if-nez v13, :cond_9

    .line 2622
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->restartCancelTimer()V

    .line 2624
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->prepareWarningArrow(I)V

    .line 2626
    const/4 v4, 0x1

    if-lt v13, v4, :cond_20

    .line 2627
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v4, :pswitch_data_0

    .line 2708
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2709
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isRectGuideVisible()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getFocusRectDistance()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 2710
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged  Warning mLeftTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftTopY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged Warning mWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v5, v30, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v5, v30, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v5, v30, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v5, v30, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v5, v30, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v5, v30, v4

    .line 2714
    .local v30, "point":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 2717
    .end local v30    # "point":[F
    :cond_b
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2753
    :goto_5
    const/4 v4, 0x3

    if-ne v13, v4, :cond_0

    .line 2754
    const-string v4, "WideSelfie"

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

    .line 2755
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 2756
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningArrow()V

    .line 2757
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    .line 2758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopWideSelfie()V

    goto/16 :goto_0

    .line 2582
    .end local v34    # "totalDistance":D
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailWidth:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2584
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    .line 2585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2586
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    .line 2587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectLeft:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2589
    :cond_f
    const-wide/16 v36, 0x0

    goto/16 :goto_1

    .line 2593
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mStartCheckWarning:Z

    if-eqz v4, :cond_12

    .line 2594
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 2595
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailHeight:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    .line 2607
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    const/high16 v5, 0x40400000    # 3.0f

    div-float v33, v4, v5

    goto/16 :goto_2

    .line 2597
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    .line 2599
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_13

    .line 2600
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    .line 2601
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_14

    .line 2603
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mFocusRectTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v38, v0

    goto :goto_6

    .line 2605
    :cond_14
    const-wide/16 v38, 0x0

    goto :goto_6

    .line 2614
    .restart local v34    # "totalDistance":D
    :cond_15
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_16

    .line 2615
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 2616
    :cond_16
    move/from16 v0, v33

    float-to-double v4, v0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpg-double v4, v34, v4

    if-gez v4, :cond_17

    .line 2617
    const/4 v13, 0x2

    goto/16 :goto_3

    .line 2619
    :cond_17
    const/4 v13, 0x3

    goto/16 :goto_3

    .line 2629
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v14, v4, v5

    .line 2630
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v15, v4, v5

    .line 2631
    cmpl-double v4, v36, v38

    if-lez v4, :cond_18

    .line 2632
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_4

    .line 2637
    :pswitch_1
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2634
    :pswitch_2
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2640
    :cond_18
    if-lez v23, :cond_19

    .line 2641
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2642
    :cond_19
    if-gez v23, :cond_a

    .line 2643
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2647
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v14, v4, v5

    .line 2648
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v15, v4, v5

    .line 2649
    cmpl-double v4, v36, v38

    if-lez v4, :cond_1a

    .line 2650
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_4

    .line 2652
    :pswitch_4
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2655
    :pswitch_5
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2660
    :cond_1a
    if-lez v23, :cond_1b

    .line 2661
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2662
    :cond_1b
    if-gez v23, :cond_a

    .line 2663
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2667
    :pswitch_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v14, v4, v5

    .line 2668
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 2669
    cmpl-double v4, v38, v36

    if-lez v4, :cond_1c

    .line 2670
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_4

    .line 2675
    :pswitch_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2672
    :pswitch_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2680
    :cond_1c
    if-gez v22, :cond_1d

    .line 2681
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2682
    :cond_1d
    if-lez v22, :cond_a

    .line 2683
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2687
    :pswitch_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ARROW_MARGIN:F

    add-float v14, v4, v5

    .line 2688
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 2689
    cmpl-double v4, v38, v36

    if-lez v4, :cond_1e

    .line 2690
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    packed-switch v4, :pswitch_data_4

    goto/16 :goto_4

    .line 2695
    :pswitch_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2692
    :pswitch_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2700
    :cond_1e
    if-gez v22, :cond_1f

    .line 2701
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2702
    :cond_1f
    if-lez v22, :cond_a

    .line 2703
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningArrow(FFI)V

    goto/16 :goto_4

    .line 2719
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isRectGuideVisible()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getFocusRectDistance()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_21

    .line 2720
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged not Warning mLeftTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftTopY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightTopY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRightBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLeftBottomY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    const-string v4, "WideSelfie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWideRectChanged not Warning mWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v30, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopX:F

    aput v5, v30, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftTopY:F

    aput v5, v30, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopX:F

    aput v5, v30, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightTopY:F

    aput v5, v30, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mRightBottomY:F

    aput v5, v30, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomX:F

    aput v5, v30, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLeftBottomY:F

    aput v5, v30, v4

    .line 2724
    .restart local v30    # "point":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mHeight:F

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v6, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 2725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 2728
    .end local v30    # "point":[F
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isMaxPositionReached(FF)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideShow:Z

    if-eqz v4, :cond_24

    .line 2729
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_26

    .line 2730
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    .line 2731
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 2732
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 2746
    :cond_23
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->WIDE_SELFIE_OVER_BOUNDARY:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 2747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 2749
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentDirection:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    .line 2750
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    goto/16 :goto_5

    .line 2733
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 2734
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 2735
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_7

    .line 2738
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    .line 2739
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 2740
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_7

    .line 2741
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 2742
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 2743
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_7

    .line 2627
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_9
    .end packed-switch

    .line 2632
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2650
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2670
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2690
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

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
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 313
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 323
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->createTrapezoidFocusRect()V

    .line 324
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 325
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 326
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    .line 328
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHRMSensor(Z)V

    .line 329
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setGestureControl(Z)V

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;)V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    .line 334
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    .line 336
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-lez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 357
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/16 v0, 0x1f40

    const/16 v1, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 359
    const-string v0, "effect_hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 360
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
    .line 364
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 365
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 366
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 367
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 369
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SCREEN_WIDTH:I

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

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    .line 371
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 373
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 374
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02016a

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 377
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 382
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 383
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020169

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    .line 391
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const v7, 0x7f02016a

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setBypassTouch(Z)V

    .line 395
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    .line 399
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201fe

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    .line 400
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ff

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 404
    new-instance v1, Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    const-string v7, ""

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 412
    new-instance v1, Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    const-string v7, ""

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 417
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fc

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f4

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f2

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 427
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020200

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 428
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f8

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x5

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fa

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x6

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fc

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x7

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x8

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f5

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 433
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x9

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f3

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 434
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xa

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020201

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xb

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f9

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xc

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fb

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xd

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c2

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c0

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200be

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c4

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x5

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 451
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x6

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c8

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x7

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 454
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c3

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x8

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 457
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c1

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x9

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 460
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bf

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 462
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xa

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 463
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xb

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 466
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c5

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xc

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 469
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xd

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 472
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c9

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 475
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_X:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_POS_Y:I

    int-to-float v4, v2

    const v5, 0x7f020101

    const v6, 0x7f020103

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->STOP_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 490
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p3, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 494
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 495
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 498
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 500
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 503
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 504
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 513
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 515
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 519
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v11, v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 519
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 523
    :cond_0
    const/4 v11, 0x0

    :goto_1
    const/16 v1, 0xe

    if-ge v11, v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 523
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 527
    :cond_1
    const/4 v11, 0x0

    :goto_2
    const/16 v1, 0xe

    if-ge v11, v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 527
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 531
    :cond_2
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/16 v3, 0x970

    .line 536
    const-string v2, "sef_file_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v1, "Wide_Selfie_Info"

    .line 541
    .local v1, "keyName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v3, 0x970

    const/4 v4, 0x1

    invoke-static {p2, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WideSelfie"

    const-string v3, "error while addSEFData in WideSelfie"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHRMShutterDetected()V
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    if-eqz v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_2

    .line 555
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieCapture()V

    goto :goto_0

    .line 559
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 565
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v3, :cond_0

    .line 580
    :goto_0
    return v2

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 569
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 571
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 572
    .local v0, "density":F
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 573
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 574
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 575
    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 573
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->calculateSampleSize(II)I

    move-result v1

    .line 576
    .local v1, "sampleSize":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getCaptureData()[B

    move-result-object v4

    div-int/lit8 v5, v1, 0x4

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setCaptureData([BI)V

    .line 578
    .end local v1    # "sampleSize":I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getOrientation()I

    move-result v5

    invoke-interface {v3, v4, v5, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 580
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 591
    :cond_0
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_2

    .line 593
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 594
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 598
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    .line 601
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 602
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 603
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    .line 604
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    .line 605
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideCropArea()V

    .line 607
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHRMSensor(Z)V

    .line 608
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setGestureControl(Z)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;)V

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 613
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 614
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearTrapezoidFocusRect()V

    .line 615
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    .line 616
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPreviewThumbnailSizeToDefault()V

    .line 617
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearMessageHandler()V

    .line 618
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 627
    sparse-switch p1, :sswitch_data_0

    .line 658
    :cond_0
    :goto_0
    return v0

    .line 629
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 631
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 632
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 633
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    goto :goto_0

    .line 636
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    if-lez v2, :cond_2

    move v0, v1

    .line 637
    goto :goto_0

    .line 639
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 640
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 642
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 643
    goto :goto_0

    .line 649
    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v2, :cond_0

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    .line 651
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    move v0, v1

    .line 652
    goto :goto_0

    .line 627
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
    .line 664
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

    const/4 v4, 0x7

    .line 669
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged - mCurrentOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

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

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v0, :cond_1

    .line 672
    :cond_0
    const-string v0, "WideSelfie"

    const-string v1, "onOrientationChanged - Already mCameraContext or mEngine is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 726
    :goto_0
    return-void

    .line 677
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 679
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_7

    .line 680
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-nez v0, :cond_5

    .line 681
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, p1, :cond_4

    .line 682
    const-string v0, "WideSelfie"

    const-string v1, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 684
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 685
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieWarning:Z

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    const-string v0, "WideSelfie"

    const-string v1, "onOrientationChanged isTimerCounting return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x3d

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 690
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 691
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    goto :goto_0

    .line 694
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 695
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 699
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    .line 700
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWideSelfieToastPopup(I)V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_4

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 722
    :cond_4
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    .line 724
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    .line 725
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea(I)V

    goto :goto_0

    .line 707
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isWideSelfieStopping()Z

    move-result v0

    if-nez v0, :cond_6

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopWideSelfie()V

    .line 710
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    goto :goto_1

    .line 713
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_4

    .line 714
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipCapture:Z

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v6, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 3
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    const/4 v2, 0x1

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 757
    const-string v0, "WideSelfie"

    const-string v1, "onShutterKeyReleased- Preview is not started yet"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    :goto_0
    return v2

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    const-string v0, "WideSelfie"

    const-string v1, "Return, isCapturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_3

    .line 765
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()Z

    .line 766
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    goto :goto_0

    .line 770
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPostProgress:I

    if-gtz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 776
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isReadyToCapture()Z

    move-result v0

    if-nez v0, :cond_5

    .line 777
    const-string v0, "WideSelfie"

    const-string v1, "Drop Wide Selfie capture start, because it\'s not ready."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 781
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 786
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setStartCapture(Z)V

    .line 787
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartWideSelfie()V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 793
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 799
    const-string v0, "WideSelfie"

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

    .line 800
    packed-switch p1, :pswitch_data_0

    .line 808
    :goto_0
    return-void

    .line 802
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 803
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    goto :goto_0

    .line 800
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

    .line 812
    const-string v0, "WideSelfie"

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

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 819
    :cond_1
    if-nez p1, :cond_3

    .line 820
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 823
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewGroup()V

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 828
    :cond_3
    return-void
.end method

.method public onWideSelfieCaptured()V
    .locals 3

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v0, :cond_1

    .line 833
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased mCaptureCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsCapturePreparing:Z

    .line 836
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_0

    .line 837
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    .line 840
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    .line 842
    :cond_1
    return-void
.end method

.method public onWideSelfieCapturedMaxFrames()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method public onWideSelfieCapturedNew()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 850
    const-string v0, "WideSelfie"

    const-string v1, "onWideSelfieCapturedNew"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-nez v0, :cond_3

    .line 856
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setStartCapture(Z)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_2

    .line 858
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->refreshLivePreviewPosition()V

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 866
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    if-eqz v0, :cond_4

    .line 871
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setSkipCheckWarning(Z)V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 874
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    goto :goto_0
.end method

.method public onWideSelfieDirectionChanged(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 880
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWideSelfieDirectionChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onWideDirectionChanged(I)V

    .line 882
    return-void
.end method

.method public onWideSelfieError(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 886
    packed-switch p1, :pswitch_data_0

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mSkipFrameOnWideSelfie:Z

    .line 897
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    .line 901
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWideSelfieToastPopup(I)V

    .line 902
    return-void

    .line 891
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWideSelfieLivePreviewData([B)V
    .locals 2
    .param p1, "arg0"    # [B

    .prologue
    .line 906
    const-string v0, "WideSelfie"

    const-string v1, "onWideSelfieLivePreviewData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onLivePreviewData([B)V

    .line 909
    return-void
.end method

.method public onWideSelfieLowResolutionData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 913
    return-void
.end method

.method public onWideSelfieNextCapturePosition(II)V
    .locals 4
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 917
    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    .line 918
    int-to-float v1, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    .line 919
    const-string v1, "WideSelfie"

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

    .line 920
    const-string v1, "WideSelfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWideSelfieNextCapturePosition : mNextCaptureFocusRectCenterX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNextCaptureFocusRectCenterY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 945
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showNextCaptureFocusRect()V

    .line 946
    return-void

    .line 926
    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsStartCapture:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 927
    .local v0, "TOP_MARGIN":F
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterY:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    .line 928
    if-lez p1, :cond_1

    .line 929
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    .line 926
    .end local v0    # "TOP_MARGIN":F
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 931
    .restart local v0    # "TOP_MARGIN":F
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    .line 936
    .end local v0    # "TOP_MARGIN":F
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectCenterX:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectLeft:F

    .line 937
    if-lez p2, :cond_2

    .line 938
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    goto :goto_0

    .line 940
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusRectTop:F

    goto :goto_0

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWideSelfieProgressStitching(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 950
    if-nez p1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    const-string v0, "WideSelfie"

    const-string v1, "onWideSelfieProgressStitching - CeState.SHUTDOWN"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    .line 958
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    .line 981
    :goto_0
    return-void

    .line 960
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    .line 961
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setPostCaptureProgress(I)V

    .line 962
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfieSound()V

    .line 963
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->clearWideSelfieRect()V

    .line 964
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHapticEnabled(Z)V

    .line 966
    if-nez p1, :cond_2

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 971
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    goto :goto_0

    .line 972
    :cond_2
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 976
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setDelayedSkipCapture()V

    goto :goto_0

    .line 978
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onWideSelfieRectChanged([B)V
    .locals 0
    .param p1, "arg0"    # [B

    .prologue
    .line 985
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->wideSelfieRectChanged([B)V

    .line 986
    return-void
.end method

.method public onWideSelfieSingleCaptureDone()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 990
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 993
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-nez v0, :cond_1

    .line 994
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 995
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 998
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    .line 999
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1011
    :cond_2
    :goto_1
    const-string v0, "WideSelfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWideSelfieSingleCaptureDone invisible next capture mDetectedDirection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextCaptureFocusStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v0, v4, :cond_4

    .line 1013
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showStopButton()V

    goto :goto_0

    .line 1002
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-le v0, v3, :cond_2

    .line 1003
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    goto :goto_1

    .line 1007
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-le v0, v1, :cond_2

    .line 1008
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    goto :goto_1

    .line 1016
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    if-ne v0, v3, :cond_7

    .line 1017
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1018
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_8

    .line 1019
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1020
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    .line 1035
    :cond_7
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->getGuideDirection(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideArrow(I)V

    goto/16 :goto_0

    .line 1021
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    .line 1022
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1023
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1026
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v3, :cond_a

    .line 1027
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1028
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 1029
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    .line 1030
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideWarningText()V

    .line 1031
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_2

    .line 999
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWideSelfieSlowMove()V
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->misWideSelfieCapturing:Z

    if-eqz v0, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    .line 1042
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWarningText(I)V

    .line 1044
    :cond_0
    return-void
.end method
