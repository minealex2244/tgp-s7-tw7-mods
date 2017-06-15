.class public Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
.super Ljava/lang/Object;
.source "WideSelfieLite.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;
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

.field protected static final TAG:Ljava/lang/String; = "WideSelfieLite"

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

.field private mCaptureError:Z

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

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

.field private mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mWarningArrow:[Lcom/samsung/android/glview/GLImage;

.field private mWarningText:Lcom/samsung/android/glview/GLText;

.field private mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

.field private mWideSelfieWarning:Z

.field private mWidth:F

.field private misWideSelfieCapturing:Z

.field private misWideSelfieStopping:Z


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

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const v0, 0x7f0a024f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SCREEN_WIDTH:I

    .line 118
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_WIDTH:I

    .line 119
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_HEIGHT:I

    .line 120
    const v0, 0x7f0a023f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_WIDTH:F

    .line 121
    const v0, 0x7f0a023b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_HEIGHT:F

    .line 122
    const v0, 0x7f0a023d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_POS_X:F

    .line 123
    const v0, 0x7f0a023e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_POS_Y:F

    .line 124
    const v0, 0x7f0a008e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_X:F

    .line 125
    const v0, 0x7f0a008f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_Y:F

    .line 126
    const v0, 0x7f0a02ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_SIZE:F

    .line 127
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_STROKE_WIDTH:I

    .line 128
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_STROKE_COLOR:I

    .line 129
    const v0, 0x7f0d0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_FONT_COLOR:I

    .line 130
    const v0, 0x7f0a0238

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_MARGIN:F

    .line 131
    const v0, 0x7f0a0237

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_LANDSCAPE_OVERLAY:F

    .line 132
    const v0, 0x7f0a0240

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 133
    const v0, 0x7f0a0242

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 134
    const v0, 0x7f0a0243

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 135
    const v0, 0x7f0a0245

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 136
    const v0, 0x7f0a0246

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    .line 137
    const v0, 0x7f0a0247

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 138
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 139
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 140
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 141
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 142
    const v0, 0x7f0a0248

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 143
    const v0, 0x7f0a0249

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    .line 144
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    .line 145
    const v0, 0x7f0a0239

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->BACKGROUND_RECT_PORTRAIT_X:F

    .line 146
    const v0, 0x7f0a023a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->BACKGROUND_RECT_PORTRAIT_Y:F

    .line 147
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_Y:F

    .line 148
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_X:F

    .line 149
    const v0, 0x7f0a024e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_TOP_MARGIN:F

    .line 150
    const v0, 0x7f0a024c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_PORTRAIT_MARGIN:F

    .line 151
    const v0, 0x7f0a024d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    .line 152
    const v0, 0x7f0a024b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    .line 153
    const v0, 0x7f0a024a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    .line 154
    const v0, 0x7f0a02a3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->STOP_BUTTON_DIAMETER:I

    .line 155
    const v0, 0x7f0a008b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    .line 156
    const v0, 0x7f0a008d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    .line 157
    const v0, 0x7f0a008c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

    .line 158
    const v0, 0x7f0a000c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    .line 159
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_OFFSET_NORMAL:I

    const v1, 0x7f0a000c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    .line 162
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->BASEMENU_GROUP_WIDTH:F

    .line 163
    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 164
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 167
    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SHUTTER_BUTTON_WIDTH:F

    .line 168
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->BASEMENU_GROUP_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->BASE_MENU_WEIGHT_VALUE:F

    .line 169
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->BASE_MENU_WEIGHT_VALUE:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->STOP_BUTTON_POS_X:I

    .line 170
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->STOP_BUTTON_POS_Y:I

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewLock:Ljava/lang/Object;

    .line 172
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    .line 173
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    .line 174
    const v0, 0x7f0a023c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    .line 175
    const v0, 0x7f0a0241

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 176
    const v0, 0x7f0a0244

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 177
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_X:F

    .line 178
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 179
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    .line 180
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_Y:F

    .line 181
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    .line 182
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrame:I

    .line 183
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsCapturePreparing:Z

    .line 184
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    .line 185
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    .line 186
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCapture:Z

    .line 187
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureError:Z

    .line 188
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCheckWarning:Z

    .line 189
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    .line 190
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

    .line 191
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieStopping:Z

    .line 192
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    .line 193
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPlayHaptic:Z

    .line 194
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrameOnWideSelfie:Z

    .line 195
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    .line 196
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    .line 197
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailLeft:F

    .line 198
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    .line 199
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailWidth:F

    .line 200
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailHeight:F

    .line 201
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    .line 202
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    .line 203
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    .line 204
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectLeft:F

    .line 205
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectTop:F

    .line 206
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    .line 207
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    .line 208
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    .line 209
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    .line 210
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    .line 211
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    .line 212
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    .line 213
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    .line 214
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    .line 215
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    .line 216
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWidth:F

    .line 217
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mHeight:F

    .line 218
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 219
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 220
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 221
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    .line 223
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    .line 224
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    .line 225
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mAnimationDirection:Z

    .line 226
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 227
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mChanged:Z

    .line 228
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 229
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    .line 230
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideState:I

    .line 231
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 232
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 233
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPostProgress:I

    .line 234
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 235
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 236
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 237
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 238
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 239
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 240
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 241
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 242
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 243
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 244
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 245
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    .line 246
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 247
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 248
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 249
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    .line 250
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    .line 251
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectLeft:F

    .line 252
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectTop:F

    .line 253
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterX:F

    .line 254
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterY:F

    .line 255
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    .line 256
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    .line 257
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentDirection:I

    .line 258
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewRealThumbnailHeight:F

    .line 259
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewPortraitHeightMargin:F

    .line 260
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMovingDetection:Z

    .line 261
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 291
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 292
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHRMSensor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)[Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mAnimationDirection:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mAnimationDirection:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideRect(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHapticEnabled(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->cancelWideSelfieCapture()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideGuideText()V

    return-void
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCapture:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setSkipCheckWarning(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setPostCaptureProgress(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieStopping:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setCaptureError(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideStopButton()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

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

    .line 1074
    const/4 v0, 0x0

    .line 1075
    .local v0, "result":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1088
    :goto_0
    return v0

    .line 1078
    :pswitch_0
    mul-float v1, v2, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p3, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1079
    goto :goto_0

    .line 1082
    :pswitch_1
    mul-float v1, v2, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    sub-float v2, p4, p2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1083
    goto :goto_0

    .line 1075
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
    .line 1092
    const-string v0, "WideSelfieLite"

    const-string v1, "cancelCaptureForWideSelfie"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForWideSelfieStartThreadComplete()V

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelWideSelfie()V

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->unlockAEAWB()V

    .line 1101
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1104
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 1108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setGestureControl(Z)V

    .line 1109
    return-void
.end method

.method private checkWarningDirection()I
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 1112
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-nez v5, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return v0

    .line 1115
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getSkipCheckWarning()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1119
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-ne v5, v4, :cond_e

    .line 1120
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v1, v4, :cond_8

    .line 1121
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-ne v1, v2, :cond_5

    .line 1122
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentDirection:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    :cond_3
    move v0, v4

    .line 1123
    goto :goto_0

    .line 1124
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move v0, v3

    .line 1125
    goto :goto_0

    .line 1128
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    .line 1129
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v2, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    :cond_6
    move v0, v3

    .line 1130
    goto :goto_0

    .line 1131
    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v0, v4

    .line 1132
    goto :goto_0

    .line 1136
    :cond_8
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-ne v1, v2, :cond_b

    .line 1137
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentDirection:I

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    :cond_9
    move v0, v3

    .line 1138
    goto :goto_0

    .line 1139
    :cond_a
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v0, v4

    .line 1140
    goto :goto_0

    .line 1143
    :cond_b
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_c

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    .line 1144
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v2, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v2, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    :cond_c
    move v0, v4

    .line 1146
    goto/16 :goto_0

    .line 1147
    :cond_d
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move v0, v3

    .line 1148
    goto/16 :goto_0

    .line 1153
    :cond_e
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v3, v4, :cond_14

    .line 1154
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-ne v3, v2, :cond_11

    .line 1155
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentDirection:I

    if-ne v3, v4, :cond_f

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    :cond_f
    move v0, v2

    .line 1156
    goto/16 :goto_0

    .line 1157
    :cond_10
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    .line 1158
    goto/16 :goto_0

    .line 1161
    :cond_11
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_12

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    .line 1162
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectTop:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    :cond_12
    move v0, v1

    .line 1164
    goto/16 :goto_0

    .line 1165
    :cond_13
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    move v0, v2

    .line 1166
    goto/16 :goto_0

    .line 1170
    :cond_14
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-ne v3, v2, :cond_17

    .line 1171
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentDirection:I

    if-ne v3, v4, :cond_15

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_16

    :cond_15
    move v0, v1

    .line 1172
    goto/16 :goto_0

    .line 1173
    :cond_16
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    move v0, v2

    .line 1174
    goto/16 :goto_0

    .line 1177
    :cond_17
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_18

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    .line 1178
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_19

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectTop:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_19

    :cond_18
    move v0, v2

    .line 1179
    goto/16 :goto_0

    .line 1180
    :cond_19
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    .line 1181
    goto/16 :goto_0
.end method

.method private clearMessageHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;)V

    .line 1193
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    .line 1194
    return-void
.end method

.method private clearTrapezoidFocusRect()V
    .locals 2

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1199
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->clear()V

    .line 1200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 1202
    :cond_0
    return-void
.end method

.method private clearWideSelfieRect()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1205
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_4

    .line 1223
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1225
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_5

    .line 1226
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1228
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_6

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1231
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_7

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1234
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_8

    .line 1235
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 1238
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningArrow()V

    .line 1239
    return-void
.end method

.method private createTrapezoidFocusRect()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-nez v0, :cond_0

    .line 1243
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 1244
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1248
    :cond_0
    return-void
.end method

.method private decodeRgbaBitmap([B)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 1258
    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v8, :cond_1

    .line 1259
    :cond_0
    const-string v6, "WideSelfieLite"

    const-string v7, "Util.decodeRgbaBitmap: Received null or invalid data"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :goto_0
    return-object v1

    .line 1264
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

    .line 1265
    :cond_2
    const-string v6, "WideSelfieLite"

    const-string v7, "Util.decodeRgbaBitmap: Data is invalid (RGBA tag not found)"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1271
    :cond_3
    const/4 v6, 0x4

    :try_start_0
    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v5

    .line 1272
    .local v5, "width":I
    const/16 v6, 0x8

    invoke-static {p1, v6}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1278
    .local v3, "height":I
    array-length v6, p1

    mul-int v7, v5, v3

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x10

    if-ge v6, v7, :cond_4

    .line 1279
    const-string v6, "WideSelfieLite"

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

    .line 1273
    .end local v3    # "height":I
    .end local v5    # "width":I
    :catch_0
    move-exception v2

    .line 1274
    .local v2, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "WideSelfieLite"

    const-string v7, "Util.decodeRgbaBitmap: Could not parse panorama bitmap header"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1285
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

    .line 1293
    .local v1, "bmp":Landroid/graphics/Bitmap;
    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1294
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-virtual {v0, p1, v8, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1295
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1296
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1297
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 1286
    .end local v0    # "bbuf":Ljava/nio/ByteBuffer;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 1287
    .local v4, "oom":Ljava/lang/OutOfMemoryError;
    const-string v6, "WideSelfieLite"

    const-string v7, "Util.decodeRgbaBitmap: Out of memory [1]"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCaptureError()Z
    .locals 1

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureError:Z

    return v0
.end method

.method private declared-synchronized getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 1311
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I
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
    .line 1315
    const/4 v0, 0x0

    .line 1316
    .local v0, "distance":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1326
    :goto_0
    return v0

    .line 1319
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1320
    goto :goto_0

    .line 1323
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 1316
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

    .line 1330
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v2, v0, :cond_2

    .line 1331
    if-ne p1, v1, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1334
    goto :goto_0

    .line 1336
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v2, v1, :cond_3

    .line 1337
    if-ne p1, v1, :cond_0

    move v0, v1

    .line 1338
    goto :goto_0

    .line 1343
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getNextFocusRectDistance()F
    .locals 2

    .prologue
    .line 1348
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1349
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterX:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    sub-float/2addr v0, v1

    .line 1351
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterY:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getSkipCheckWarning()Z
    .locals 1

    .prologue
    .line 1356
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCheckWarning:Z

    return v0
.end method

.method private hideCropArea()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1365
    const-string v0, "WideSelfieLite"

    const-string v1, "hideCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1370
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideGuideRect()V
    .locals 3

    .prologue
    .line 1376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1377
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    :cond_0
    return-void
.end method

.method private hideGuideText()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1382
    const-string v0, "WideSelfieLite"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1385
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 1389
    :cond_0
    return-void
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 1392
    const-string v0, "WideSelfieLite"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1394
    return-void
.end method

.method private hideWarningArrow()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x4

    .line 1397
    const-string v1, "WideSelfieLite"

    const-string v2, "hideWarningArrow"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1399
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1400
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1402
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 1403
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 1404
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1406
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 1407
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1406
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1409
    :cond_2
    return-void
.end method

.method private hideWarningText()V
    .locals 2

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    if-eqz v0, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 1418
    :cond_1
    return-void
.end method

.method private isNextFocusRectBoundary()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1421
    const/high16 v0, 0x40000000    # 2.0f

    .line 1423
    .local v0, "BOUNDARY":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 1439
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1426
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1427
    .local v1, "gap":F
    cmpg-float v3, v1, v0

    if-gtz v3, :cond_0

    goto :goto_0

    .line 1433
    .end local v1    # "gap":F
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1434
    .restart local v1    # "gap":F
    cmpg-float v3, v1, v0

    if-gtz v3, :cond_0

    goto :goto_0

    .line 1423
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
    .line 1450
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;
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
    .line 1454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1455
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    .line 1456
    const/4 v1, 0x1

    .line 1458
    :goto_1
    return v1

    .line 1454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1458
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private declared-synchronized onLivePreviewData([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 1462
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->decodeRgbaBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1463
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1464
    const-string v6, "WideSelfieLite"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1564
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1468
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrameOnWideSelfie:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrame:I

    if-ge v6, v7, :cond_2

    .line 1469
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 1470
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrame:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrame:I

    .line 1471
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrame:I

    if-ne v6, v7, :cond_0

    .line 1472
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    .line 1473
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrameOnWideSelfie:Z

    .line 1474
    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrame:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1462
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1479
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-eq v6, v8, :cond_3

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-nez v6, :cond_5

    .line 1480
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1489
    :cond_4
    :goto_1
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailWidth:F

    .line 1490
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailHeight:F

    .line 1492
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setPreviewThumbnailSize(II)V

    .line 1496
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v6, :pswitch_data_0

    .line 1526
    const-string v6, "WideSelfieLite"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLivePreviewData : invalid orientation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1482
    :cond_5
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-eqz v6, :cond_4

    .line 1483
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eq v6, v8, :cond_6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eq v6, v7, :cond_6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    if-eq v6, v8, :cond_6

    .line 1484
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 1485
    :cond_6
    const/16 v6, 0xb4

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1499
    :pswitch_0
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-gt v6, v8, :cond_a

    .line 1500
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1501
    .local v5, "width":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1502
    .local v1, "height":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_X:F

    .line 1503
    .local v2, "left":F
    const/4 v4, 0x0

    .line 1530
    .local v4, "top":F
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 1531
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1532
    :try_start_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6, v0}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1533
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v9, v4

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FFZ)V

    .line 1534
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v11

    sub-float v8, v5, v8

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v11

    sub-float v9, v1, v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1535
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1537
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v6, :cond_d

    .line 1538
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_7

    .line 1539
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1541
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    if-nez v6, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->isRectGuideVisible()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1542
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

    if-eqz v6, :cond_c

    .line 1543
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1544
    const/16 v6, 0x8

    new-array v3, v6, [F

    const/4 v6, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    aput v8, v3, v6

    const/4 v6, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    aput v8, v3, v6

    const/4 v6, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    aput v8, v3, v6

    const/4 v6, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    aput v8, v3, v6

    const/4 v6, 0x4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    aput v8, v3, v6

    const/4 v6, 0x5

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    aput v8, v3, v6

    const/4 v6, 0x6

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    aput v8, v3, v6

    const/4 v6, 0x7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    aput v8, v3, v6

    .line 1545
    .local v3, "point":[F
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mHeight:F

    invoke-virtual {v6, v8, v9, v3}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 1546
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1559
    .end local v3    # "point":[F
    :cond_8
    :goto_3
    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mChanged:Z

    if-eqz v6, :cond_9

    .line 1560
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->refreshBackgroundRect()V

    .line 1562
    :cond_9
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6

    .line 1505
    .end local v1    # "height":F
    .end local v2    # "left":F
    .end local v4    # "top":F
    .end local v5    # "width":F
    :cond_a
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    .line 1506
    .restart local v5    # "width":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1507
    .restart local v1    # "height":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailLeft:F

    .line 1508
    .restart local v2    # "left":F
    const/4 v4, 0x0

    .line 1510
    .restart local v4    # "top":F
    goto/16 :goto_2

    .line 1513
    .end local v1    # "height":F
    .end local v2    # "left":F
    .end local v4    # "top":F
    .end local v5    # "width":F
    :pswitch_1
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-gt v6, v8, :cond_b

    .line 1514
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1515
    .restart local v5    # "width":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1516
    .restart local v1    # "height":F
    const/4 v2, 0x0

    .line 1517
    .restart local v2    # "left":F
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .restart local v4    # "top":F
    goto/16 :goto_2

    .line 1519
    .end local v1    # "height":F
    .end local v2    # "left":F
    .end local v4    # "top":F
    .end local v5    # "width":F
    :cond_b
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1520
    .restart local v5    # "width":F
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    .line 1521
    .restart local v1    # "height":F
    const/4 v2, 0x0

    .line 1522
    .restart local v2    # "left":F
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1524
    .restart local v4    # "top":F
    goto/16 :goto_2

    .line 1548
    :cond_c
    :try_start_5
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_3

    .line 1552
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_e

    .line 1553
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1555
    :cond_e
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->moveBaseLayoutAbsolute(FFZ)V

    .line 1556
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v5, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1557
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1496
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

    .line 1567
    const-string v2, "WideSelfieLite"

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

    .line 1568
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentDirection:I

    .line 1570
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    if-nez v2, :cond_1

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

    if-eqz v2, :cond_0

    .line 1575
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mChanged:Z

    if-nez v2, :cond_2

    .line 1576
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-eq v2, p1, :cond_2

    .line 1577
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mChanged:Z

    .line 1581
    :cond_2
    if-eqz p1, :cond_0

    .line 1582
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-nez v2, :cond_0

    .line 1583
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 1584
    .local v0, "height":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1596
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    .line 1597
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideArrow(I)V

    .line 1599
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1600
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v2, v6, :cond_5

    .line 1601
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1602
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    .line 1616
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1617
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideDirectionChanged: mDetectedDirection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1587
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1588
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1589
    goto :goto_1

    .line 1592
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1593
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    goto :goto_1

    .line 1603
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    .line 1604
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1605
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    goto :goto_2

    .line 1608
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v2, v6, :cond_7

    .line 1609
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1610
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    goto :goto_2

    .line 1611
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v2, v5, :cond_4

    .line 1612
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1613
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    goto :goto_2

    .line 1584
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

    .line 1623
    if-ne p1, v6, :cond_3

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 1626
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1

    .line 1630
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1632
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1633
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1636
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    .line 1637
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessage(I)Z

    .line 1638
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1639
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1640
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1643
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1644
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1646
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    .line 1670
    :cond_2
    :goto_0
    return-void

    .line 1648
    :cond_3
    if-ne p1, v4, :cond_5

    .line 1649
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1650
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 1651
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    .line 1654
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    if-nez v0, :cond_2

    .line 1655
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessage(I)Z

    .line 1656
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1657
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1658
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1659
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1660
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1661
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1662
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1663
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1664
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    goto :goto_0

    .line 1667
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    .line 1668
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopWideSelfieSound()V

    goto :goto_0
.end method

.method private refreshBackgroundRect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1674
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-nez v1, :cond_2

    .line 1675
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1676
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v1, v3, :cond_1

    .line 1677
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1717
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1679
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v0, v1, v2

    .line 1680
    .local v0, "mAmountDelta":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1681
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    .line 1684
    .end local v0    # "mAmountDelta":F
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-ne v1, v4, :cond_4

    .line 1685
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1686
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v1, v3, :cond_3

    .line 1687
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1688
    .restart local v0    # "mAmountDelta":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1689
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto :goto_0

    .line 1690
    .end local v0    # "mAmountDelta":F
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1691
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getCurrentRight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto :goto_0

    .line 1694
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-ne v1, v3, :cond_6

    .line 1695
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1696
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v1, v3, :cond_5

    .line 1697
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    .line 1698
    .restart local v0    # "mAmountDelta":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1699
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1700
    .end local v0    # "mAmountDelta":F
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1701
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    add-float v0, v1, v2

    .line 1702
    .restart local v0    # "mAmountDelta":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    .line 1705
    .end local v0    # "mAmountDelta":F
    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1706
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1707
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v1, v3, :cond_7

    .line 1708
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    sub-float v0, v1, v2

    .line 1709
    .restart local v0    # "mAmountDelta":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    goto/16 :goto_0

    .line 1710
    .end local v0    # "mAmountDelta":F
    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v1, v4, :cond_0

    .line 1711
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1712
    .restart local v0    # "mAmountDelta":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setWidth(F)V

    .line 1713
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

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

    .line 1720
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v7, :cond_1

    .line 1833
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v7, :cond_3

    .line 1725
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPlayHaptic:Z

    if-eqz v7, :cond_2

    .line 1726
    const/16 v7, 0x8

    new-array v5, v7, [F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    aput v7, v5, v10

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    aput v7, v5, v12

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    aput v8, v5, v7

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    aput v7, v5, v13

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    aput v8, v5, v7

    const/4 v7, 0x5

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    aput v8, v5, v7

    const/4 v7, 0x6

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    aput v8, v5, v7

    const/4 v7, 0x7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    aput v8, v5, v7

    .line 1727
    .local v5, "point":[F
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mHeight:F

    invoke-virtual {v7, v8, v9, v5}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 1728
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 1730
    .end local v5    # "point":[F
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1731
    invoke-direct {p0, v10}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    .line 1734
    :cond_3
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1737
    :pswitch_0
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v7, :cond_4

    move v2, v6

    .line 1739
    .local v2, "TOP_MARGIN":F
    :goto_1
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-ne v7, v12, :cond_8

    .line 1740
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v7, 0x7

    if-ge v4, v7, :cond_5

    .line 1741
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailLeft:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_X:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1740
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1737
    .end local v2    # "TOP_MARGIN":F
    .end local v4    # "i":I
    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 1743
    .restart local v2    # "TOP_MARGIN":F
    .restart local v4    # "i":I
    :cond_5
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailLeft:F

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 1744
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_X:F

    .line 1745
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    .line 1752
    .end local v4    # "i":I
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1753
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v2

    invoke-virtual {v6, v10, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1754
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1756
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1757
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1758
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1760
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1761
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    add-float/2addr v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1763
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    add-float v3, v6, v7

    .line 1764
    .local v3, "guideTextTranslateX":F
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_POS_X:F

    cmpg-float v6, v3, v6

    if-gez v6, :cond_7

    .line 1765
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_POS_X:F

    .line 1767
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1768
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_POS_Y:F

    invoke-virtual {v6, v3, v7}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1770
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_WIDTH:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1771
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_POS_Y:F

    invoke-virtual {v6, v3, v7}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1773
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 1774
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v13, v13}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1775
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v13, v13}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1746
    .end local v3    # "guideTextTranslateX":F
    :cond_8
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-nez v6, :cond_6

    .line 1747
    const v6, 0x7f0a0241

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 1748
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_X:F

    .line 1749
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_X:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    goto/16 :goto_3

    .line 1777
    .restart local v3    # "guideTextTranslateX":F
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v12, v12}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1778
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6, v12, v12}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1783
    .end local v2    # "TOP_MARGIN":F
    .end local v3    # "guideTextTranslateX":F
    :pswitch_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v7, :cond_a

    move v0, v6

    .line 1784
    .local v0, "PORT_MARGIN":F
    :goto_4
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v7, :cond_b

    move v1, v6

    .line 1786
    .local v1, "PORT_RIGHT_MARGIN":F
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setPortraitModePosition()V

    .line 1788
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-ne v7, v12, :cond_e

    .line 1789
    const/4 v4, 0x7

    .restart local v4    # "i":I
    :goto_6
    const/16 v7, 0xe

    if-ge v4, v7, :cond_c

    .line 1790
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v7, v7, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 1789
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1783
    .end local v0    # "PORT_MARGIN":F
    .end local v1    # "PORT_RIGHT_MARGIN":F
    .end local v4    # "i":I
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_4

    .line 1784
    .restart local v0    # "PORT_MARGIN":F
    :cond_b
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_5

    .line 1792
    .restart local v1    # "PORT_RIGHT_MARGIN":F
    .restart local v4    # "i":I
    :cond_c
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    mul-float/2addr v8, v11

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewPortraitHeightMargin:F

    .line 1793
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    mul-float/2addr v7, v11

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1794
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1795
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_Y:F

    .line 1803
    .end local v4    # "i":I
    :cond_d
    :goto_7
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1804
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    add-float/2addr v8, v0

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v9, v1

    invoke-virtual {v7, v10, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1805
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7, v10}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1807
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1808
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->BACKGROUND_RECT_PORTRAIT_X:F

    add-float/2addr v8, v0

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->BACKGROUND_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v1

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    .line 1811
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1813
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1814
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_X:F

    add-float/2addr v8, v0

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_Y:F

    add-float/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1816
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1817
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float v8, v6, v8

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1819
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_HEIGHT:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_WIDTH:F

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1820
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_X:F

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_PORTRAIT_Y:F

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    .line 1822
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-ne v6, v13, :cond_f

    .line 1823
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v13, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1824
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v13, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1796
    :cond_e
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-nez v7, :cond_d

    .line 1797
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewPortraitHeightMargin:F

    .line 1798
    const v7, 0x7f0a0244

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1799
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1800
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_Y:F

    goto/16 :goto_7

    .line 1826
    :cond_f
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v12, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1827
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    invoke-virtual {v6, v12, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_0

    .line 1734
    nop

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

    .line 1836
    const-string v0, "WideSelfieLite"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    .line 1840
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

    .line 1841
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    .line 1842
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCapture:Z

    .line 1843
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCheckWarning:Z

    .line 1844
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mChanged:Z

    .line 1845
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPostProgress:I

    .line 1846
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    .line 1847
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentDirection:I

    .line 1848
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    .line 1849
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailWidth:F

    .line 1850
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailHeight:F

    .line 1851
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieStopping:Z

    .line 1852
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMovingDetection:Z

    .line 1853
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsCapturePreparing:Z

    .line 1854
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    .line 1855
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    .line 1856
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    .line 1857
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    .line 1859
    monitor-enter p0

    .line 1860
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    .line 1861
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 1864
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopCancelTimer()V

    .line 1865
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopWideSelfieSound()V

    .line 1867
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 1869
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1870
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1872
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideState:I

    .line 1873
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideStopButton()V

    .line 1874
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setPreviewThumbnailSizeToDefault()V

    .line 1876
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->resetTrapezoid()V

    .line 1877
    return-void

    .line 1861
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

    .line 1880
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    .line 1881
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    .line 1882
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    .line 1883
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    .line 1884
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    .line 1885
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    .line 1886
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    .line 1887
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    .line 1888
    return-void
.end method

.method private restartCancelTimer()V
    .locals 2

    .prologue
    .line 1891
    const-string v0, "WideSelfieLite"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopCancelTimer()V

    .line 1893
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->startCancelTimer()V

    .line 1894
    return-void
.end method

.method private setCaptureError(Z)V
    .locals 0
    .param p1, "error"    # Z

    .prologue
    .line 1307
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureError:Z

    .line 1308
    return-void
.end method

.method private setDelayedSkipCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1897
    const-string v0, "WideSelfieLite"

    const-string v1, "setDelayedSkipCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v0, :cond_0

    .line 1899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCapture:Z

    .line 1900
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 1901
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1903
    :cond_0
    return-void
.end method

.method private setFocusRectLeftTop(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 1906
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterX:F

    .line 1907
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevFocusRectCenterY:F

    .line 1908
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v3, p1

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    .line 1909
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v3, p2

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    .line 1911
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 1926
    :goto_0
    return-void

    .line 1914
    :pswitch_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v3, :cond_0

    .line 1915
    .local v2, "TOP_MARGIN":F
    :goto_1
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectLeft:F

    .line 1916
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectTop:F

    goto :goto_0

    .line 1914
    .end local v2    # "TOP_MARGIN":F
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 1920
    :pswitch_1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 1921
    .local v0, "PORT_MARGIN":F
    :goto_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 1922
    .local v1, "PORT_RIGHT_MARGIN":F
    :goto_3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectLeft:F

    .line 1923
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectTop:F

    goto :goto_0

    .line 1920
    .end local v0    # "PORT_MARGIN":F
    .end local v1    # "PORT_RIGHT_MARGIN":F
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_PORTRAIT_MARGIN:F

    goto :goto_2

    .line 1921
    .restart local v0    # "PORT_MARGIN":F
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_PORTRAIT_RIGHT_MARGIN:F

    goto :goto_3

    .line 1911
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

    .line 1929
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 1934
    :goto_0
    return-void

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto :goto_0
.end method

.method private setHRMSensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1937
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 1942
    :goto_0
    return-void

    .line 1940
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setHapticEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1945
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPlayHaptic:Z

    .line 1946
    return-void
.end method

.method private setPortraitModePosition()V
    .locals 2

    .prologue
    .line 1949
    const v0, 0x7f0a0244

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 1950
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1951
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_Y:F

    .line 1952
    return-void
.end method

.method private declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 1955
    monitor-enter p0

    :try_start_0
    const-string v0, "WideSelfieLite"

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

    .line 1956
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPostProgress:I

    .line 1957
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1958
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideStopButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1960
    :cond_0
    monitor-exit p0

    return-void

    .line 1955
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

    .line 1963
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1979
    :goto_0
    return-void

    .line 1966
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailLeft:F

    .line 1967
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    goto :goto_0

    .line 1971
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewRealThumbnailHeight:F

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->calcLivePreviewSize(FFFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewRealThumbnailHeight:F

    .line 1974
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewRealThumbnailHeight:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailTop:F

    goto :goto_0

    .line 1963
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
    .line 1982
    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    .line 1983
    int-to-float v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    .line 1984
    return-void
.end method

.method private setPreviewThumbnailSizeToDefault()V
    .locals 1

    .prologue
    .line 1987
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailWidth:F

    .line 1988
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewThumbnailHeight:F

    .line 1989
    return-void
.end method

.method private setSkipCheckWarning(Z)V
    .locals 0
    .param p1, "isSkip"    # Z

    .prologue
    .line 1360
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCheckWarning:Z

    .line 1361
    return-void
.end method

.method private setStartCapture(Z)V
    .locals 2
    .param p1, "isStart"    # Z

    .prologue
    .line 1992
    const-string v0, "WideSelfieLite"

    const-string v1, "setStartCapture()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    .line 1994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsCapturePreparing:Z

    .line 1995
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v0, :cond_0

    .line 1996
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    .line 1997
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

    .line 2000
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 2033
    :goto_0
    return-void

    .line 2003
    :pswitch_0
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFocusRectCenterX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFocusRectCenterY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 2005
    .local v0, "centerX":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 2006
    .local v1, "centerY":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    .line 2007
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    .line 2008
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    .line 2009
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    .line 2010
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    .line 2011
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    .line 2012
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    .line 2013
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    .line 2014
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWidth:F

    .line 2015
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_2
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mHeight:F

    goto/16 :goto_0

    .line 2014
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_1

    .line 2015
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_2

    .line 2019
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 2020
    .restart local v0    # "centerX":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 2021
    .restart local v1    # "centerY":F
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    .line 2022
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    .line 2023
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    .line 2024
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p4

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    .line 2025
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p5

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    .line 2026
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p6

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    .line 2027
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    .line 2028
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v2, p8

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    .line 2029
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_3
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWidth:F

    .line 2030
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_4
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mHeight:F

    goto/16 :goto_0

    .line 2029
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_3

    .line 2030
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_4

    .line 2000
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

    .line 2037
    const-string v0, "WideSelfieLite"

    const-string v1, "showCropArea"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 2039
    :cond_0
    const-string v0, "WideSelfieLite"

    const-string v1, "return, because some cropArea is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :goto_0
    return-void

    .line 2042
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2045
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2046
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2047
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2048
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    .line 2052
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2053
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2054
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2055
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    .line 2042
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

    .line 2061
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-nez v3, :cond_1

    .line 2356
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideState:I

    if-eq v3, p1, :cond_0

    .line 2067
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideState:I

    .line 2069
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_2

    .line 2070
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2071
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2072
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2073
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2076
    :cond_2
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_3

    .line 2077
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 2078
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x46

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2079
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 2080
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v9}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 2081
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v4, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$3;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2254
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2257
    :pswitch_0
    if-ne p1, v8, :cond_4

    .line 2258
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    .line 2259
    .local v0, "arrow_x":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    .line 2260
    .local v1, "arrow_y":F
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningArrow()V

    .line 2262
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2264
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2265
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2266
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2267
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2268
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2269
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2271
    .end local v0    # "arrow_x":F
    .end local v1    # "arrow_y":F
    :cond_4
    if-ne p1, v9, :cond_5

    .line 2272
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    .line 2273
    .restart local v0    # "arrow_x":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    .line 2274
    .restart local v1    # "arrow_y":F
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningArrow()V

    .line 2276
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2278
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2279
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2280
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2281
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2282
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2283
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2284
    .end local v0    # "arrow_x":F
    .end local v1    # "arrow_y":F
    :cond_5
    if-nez p1, :cond_0

    .line 2285
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v0, v3, v4

    .line 2286
    .restart local v0    # "arrow_x":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v1, v3, v4

    .line 2287
    .restart local v1    # "arrow_y":F
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mAnimationDirection:Z

    .line 2288
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningArrow()V

    .line 2289
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_6

    .line 2290
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2291
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2293
    :cond_6
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideRect(I)V

    .line 2294
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_7

    .line 2295
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2294
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2297
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2299
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2300
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2305
    .end local v0    # "arrow_x":F
    .end local v1    # "arrow_y":F
    .end local v2    # "i":I
    :pswitch_1
    if-ne p1, v8, :cond_8

    .line 2306
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_MARGIN:F

    add-float v0, v3, v4

    .line 2307
    .restart local v0    # "arrow_x":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    .line 2308
    .restart local v1    # "arrow_y":F
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningArrow()V

    .line 2310
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2312
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2313
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2314
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2315
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2316
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2317
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2318
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2320
    .end local v0    # "arrow_x":F
    .end local v1    # "arrow_y":F
    :cond_8
    if-ne p1, v9, :cond_9

    .line 2321
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_MARGIN:F

    add-float v0, v3, v4

    .line 2322
    .restart local v0    # "arrow_x":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    .line 2323
    .restart local v1    # "arrow_y":F
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningArrow()V

    .line 2325
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2327
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2328
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2329
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2330
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2331
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2332
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2333
    .end local v0    # "arrow_x":F
    .end local v1    # "arrow_y":F
    :cond_9
    if-nez p1, :cond_0

    .line 2334
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_MARGIN:F

    add-float v0, v3, v4

    .line 2335
    .restart local v0    # "arrow_x":F
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    add-float v1, v3, v4

    .line 2336
    .restart local v1    # "arrow_y":F
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mAnimationDirection:Z

    .line 2337
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningArrow()V

    .line 2338
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v3, :cond_a

    .line 2339
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2340
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2342
    :cond_a
    const/4 v2, 0x7

    .restart local v2    # "i":I
    :goto_2
    const/16 v3, 0xe

    if-ge v2, v3, :cond_b

    .line 2343
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2342
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2345
    :cond_b
    const/4 v2, 0x7

    :goto_3
    const/16 v3, 0xe

    if-ge v2, v3, :cond_c

    .line 2346
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewPortraitHeightMargin:F

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2345
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2348
    :cond_c
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideRect(I)V

    .line 2349
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2350
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTwoBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2351
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    goto/16 :goto_0

    .line 2254
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
    .line 2359
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMovingDetection:Z

    if-eqz v1, :cond_0

    .line 2366
    :goto_0
    return-void

    .line 2362
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 2363
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2365
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

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

    .line 2369
    const-string v0, "WideSelfieLite"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPostProgress:I

    if-nez v0, :cond_1

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v0, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2374
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2390
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 2391
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2392
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v0, :cond_1

    .line 2393
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2396
    :cond_1
    return-void

    .line 2376
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideArrow(I)V

    .line 2377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090294

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2380
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideArrow(I)V

    .line 2381
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090295

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2384
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideArrow(I)V

    .line 2385
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090296

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2374
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

    .line 2399
    const-string v0, "WideSelfieLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNextCaptureFocusRect left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    .line 2422
    :goto_0
    return-void

    .line 2403
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2404
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2406
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2409
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2410
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2411
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 2415
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectTop:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2417
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 2406
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

    .line 2425
    const-string v0, "WideSelfieLite"

    const-string v1, "showPreviewGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->refreshLivePreviewPosition()V

    .line 2428
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 2429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2431
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 2432
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 2434
    :cond_1
    return-void
.end method

.method private showStopButton()V
    .locals 2

    .prologue
    .line 2437
    const-string v0, "WideSelfieLite"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 2439
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 2440
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

    .line 2444
    if-ne p3, v3, :cond_0

    .line 2465
    :goto_0
    return-void

    .line 2447
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, p3

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 2448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 2449
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2451
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 2452
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->resetTranslate()V

    .line 2453
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2451
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2456
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 2457
    if-ne v0, p3, :cond_3

    .line 2458
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 2456
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2460
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_4

    .line 2463
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideGuideText()V

    .line 2464
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->translateRelativeDirection(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWarningText(I)V

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

    .line 2468
    packed-switch p1, :pswitch_data_0

    .line 2499
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 2500
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    .line 2501
    return-void

    .line 2470
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-ne v0, v1, :cond_1

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2473
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2476
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-ne v0, v1, :cond_3

    .line 2477
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2479
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2482
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-ne v0, v1, :cond_5

    .line 2483
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 2485
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2488
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-ne v0, v1, :cond_7

    .line 2489
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2491
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2494
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09029b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2468
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
    .line 2505
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$4;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2524
    return-void
.end method

.method private startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2527
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2530
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2531
    return-void
.end method

.method private stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2534
    const-string v0, "WideSelfieLite"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2536
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2538
    :cond_0
    return-void
.end method

.method private stopWideSelfie()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2541
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsCapturePreparing:Z

    if-eqz v2, :cond_1

    .line 2567
    :cond_0
    :goto_0
    return v0

    .line 2543
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setCaptureError(Z)V

    .line 2544
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 2547
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getCaptureProgressIncreased()I

    move-result v2

    if-lez v2, :cond_2

    .line 2548
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopWideSelfieCapture()V

    .line 2549
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showCropArea(I)V

    goto :goto_0

    .line 2551
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-nez v2, :cond_5

    .line 2552
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2553
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 2554
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 2555
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setGestureControl(Z)V

    .line 2564
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V

    goto :goto_0

    .line 2557
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 2558
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHapticEnabled(Z)V

    .line 2559
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2560
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 2562
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->cancelWideSelfieCapture()V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2567
    goto :goto_0
.end method

.method private stopWideSelfieCapture()V
    .locals 1

    .prologue
    .line 2571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieStopping:Z

    .line 2573
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 2574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHapticEnabled(Z)V

    .line 2576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    .line 2579
    :cond_0
    return-void
.end method

.method private stopWideSelfieSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 2582
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    .line 2583
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2584
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2585
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2588
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    .line 2589
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    .line 2591
    :cond_2
    return-void
.end method

.method private translateRelativeDirection(I)I
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 2594
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-ne v2, v0, :cond_1

    .line 2595
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2608
    .end local p1    # "direction":I
    :cond_1
    :goto_0
    return p1

    .restart local p1    # "direction":I
    :pswitch_0
    move p1, v0

    .line 2597
    goto :goto_0

    .line 2599
    :pswitch_1
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_2
    move p1, v1

    .line 2601
    goto :goto_0

    .line 2603
    :pswitch_3
    const/4 p1, 0x0

    goto :goto_0

    .line 2595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private wideSelfieRectChanged([B)V
    .locals 38
    .param p1, "data"    # [B

    .prologue
    .line 2612
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v15

    .line 2613
    .local v15, "nLeft":I
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v27

    .line 2614
    .local v27, "nTop":I
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v22

    .line 2615
    .local v22, "nRight":I
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v14

    .line 2616
    .local v14, "nBottom":I
    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v20

    .line 2617
    .local v20, "nOffsetX":I
    const/16 v2, 0x14

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v21

    .line 2618
    .local v21, "nOffsetY":I
    const/16 v2, 0x18

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v18

    .line 2619
    .local v18, "nLeftTopX":I
    const/16 v2, 0x1c

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v19

    .line 2620
    .local v19, "nLeftTopY":I
    const/16 v2, 0x20

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v25

    .line 2621
    .local v25, "nRightTopX":I
    const/16 v2, 0x24

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v26

    .line 2622
    .local v26, "nRightTopY":I
    const/16 v2, 0x28

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v16

    .line 2623
    .local v16, "nLeftBottomX":I
    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v17

    .line 2624
    .local v17, "nLeftBottomY":I
    const/16 v2, 0x30

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v23

    .line 2625
    .local v23, "nRightBottomX":I
    const/16 v2, 0x34

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v24

    .line 2629
    .local v24, "nRightBottomY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v2, :cond_1

    .line 2756
    :cond_0
    :goto_0
    return-void

    .line 2632
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 2635
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

    if-eqz v2, :cond_0

    .line 2639
    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setFocusRectLeftTop(FF)V

    .line 2640
    int-to-float v2, v15

    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v22

    int-to-float v4, v0

    int-to-float v5, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setPreviewThumbnailLeftTop(FFFF)V

    .line 2642
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2643
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->refreshLivePreviewPosition()V

    .line 2646
    :cond_2
    move/from16 v0, v18

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    move/from16 v0, v25

    int-to-float v5, v0

    move/from16 v0, v26

    int-to-float v6, v0

    move/from16 v0, v23

    int-to-float v7, v0

    move/from16 v0, v24

    int-to-float v8, v0

    move/from16 v0, v16

    int-to-float v9, v0

    move/from16 v0, v17

    int-to-float v10, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setTrapezoidPosition(FFFFFFFF)V

    .line 2648
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideSelfieRectChanged: mDetectedDirection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideSelfieRectChanged: mFocusRectCenterX :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFocusRectCenterY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectCenterY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideSelfieRectChanged: mFocusRectLeft :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectLeft:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFocusRectTop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mFocusRectTop:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v34, v0

    .line 2655
    .local v34, "xDistance":D
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v36, v0

    .line 2659
    .local v36, "yDistance":D
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMovingDetection:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_3
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v2, v36, v2

    if-gtz v2, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    :cond_5
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v2, v34, v2

    if-lez v2, :cond_7

    .line 2661
    :cond_6
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xDistance : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v34

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , yDistance : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideGuideRect()V

    .line 2663
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMovingDetection:Z

    .line 2664
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mAnimationDirection:Z

    .line 2666
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->checkWarningDirection()I

    move-result v29

    .line 2668
    .local v29, "warningDirection":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 2669
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move/from16 v32, v0

    .line 2670
    .local v32, "warningDistance":F
    const/4 v2, 0x4

    move/from16 v0, v29

    if-eq v0, v2, :cond_c

    .line 2671
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getNextFocusRectDistance()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v34, v0

    .line 2683
    :goto_1
    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    .line 2685
    .local v30, "totalDistance":D
    move/from16 v0, v32

    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    cmpg-double v2, v30, v2

    if-gez v2, :cond_f

    .line 2686
    const/4 v11, 0x0

    .line 2692
    .local v11, "WarningLevel":I
    :goto_2
    if-nez v11, :cond_9

    .line 2693
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->restartCancelTimer()V

    .line 2695
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->prepareWarningArrow(I)V

    .line 2697
    const/4 v2, 0x1

    if-lt v11, v2, :cond_16

    .line 2698
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 2699
    :cond_a
    cmpl-double v2, v34, v36

    if-lez v2, :cond_11

    .line 2700
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v12, v2, v3

    .line 2701
    .local v12, "arrow_x":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v13, v2, v3

    .line 2702
    .local v13, "arrow_y":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v12, v13, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWarningArrow(FFI)V

    .line 2728
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 2729
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->isRectGuideVisible()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getFocusRectDistance()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 2730
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideRectChanged  Warning mLeftTopX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLeftTopY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRightTopX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRightTopY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRightBottomX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLeftBottomX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLeftBottomY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideRectChanged Warning mWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    const/16 v2, 0x8

    new-array v0, v2, [F

    move-object/from16 v28, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    aput v3, v28, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    aput v3, v28, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    aput v3, v28, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    aput v3, v28, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    aput v3, v28, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    aput v3, v28, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    aput v3, v28, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    aput v3, v28, v2

    .line 2734
    .local v28, "point":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mHeight:F

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 2735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 2737
    .end local v28    # "point":[F
    :cond_b
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideArrow(I)V

    goto/16 :goto_0

    .line 2673
    .end local v11    # "WarningLevel":I
    .end local v12    # "arrow_x":F
    .end local v13    # "arrow_y":F
    .end local v30    # "totalDistance":D
    :cond_c
    const-wide/16 v34, 0x0

    goto/16 :goto_1

    .line 2676
    .end local v32    # "warningDistance":F
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    move/from16 v32, v0

    .line 2677
    .restart local v32    # "warningDistance":F
    const/4 v2, 0x4

    move/from16 v0, v29

    if-eq v0, v2, :cond_e

    .line 2678
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getNextFocusRectDistance()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v36, v0

    goto/16 :goto_1

    .line 2680
    :cond_e
    const-wide/16 v36, 0x0

    goto/16 :goto_1

    .line 2687
    .restart local v30    # "totalDistance":D
    :cond_f
    move/from16 v0, v32

    float-to-double v2, v0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    cmpg-double v2, v30, v2

    if-gez v2, :cond_10

    .line 2688
    const/4 v11, 0x1

    .restart local v11    # "WarningLevel":I
    goto/16 :goto_2

    .line 2690
    .end local v11    # "WarningLevel":I
    :cond_10
    const/4 v11, 0x2

    .restart local v11    # "WarningLevel":I
    goto/16 :goto_2

    .line 2704
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v12, v2, v3

    .line 2705
    .restart local v12    # "arrow_x":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_LANDSCAPE_OVERLAY:F

    sub-float v13, v2, v3

    .line 2706
    .restart local v13    # "arrow_y":F
    if-lez v21, :cond_12

    .line 2707
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWarningArrow(FFI)V

    goto/16 :goto_3

    .line 2709
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWarningArrow(FFI)V

    goto/16 :goto_3

    .line 2713
    .end local v12    # "arrow_x":F
    .end local v13    # "arrow_y":F
    :cond_13
    cmpl-double v2, v36, v34

    if-lez v2, :cond_14

    .line 2714
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_MARGIN:F

    add-float v12, v2, v3

    .line 2715
    .restart local v12    # "arrow_x":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v13, v2, v3

    .line 2716
    .restart local v13    # "arrow_y":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v12, v13, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWarningArrow(FFI)V

    goto/16 :goto_3

    .line 2718
    .end local v12    # "arrow_x":F
    .end local v13    # "arrow_y":F
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ARROW_MARGIN:F

    add-float v12, v2, v3

    .line 2719
    .restart local v12    # "arrow_x":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v13, v2, v3

    .line 2720
    .restart local v13    # "arrow_y":F
    if-lez v20, :cond_15

    .line 2721
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWarningArrow(FFI)V

    goto/16 :goto_3

    .line 2723
    :cond_15
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWarningArrow(FFI)V

    goto/16 :goto_3

    .line 2739
    .end local v12    # "arrow_x":F
    .end local v13    # "arrow_y":F
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->isRectGuideVisible()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getFocusRectDistance()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_17

    .line 2740
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideRectChanged not Warning mLeftTopX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLeftTopY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRightTopX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRightTopY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRightBottomX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLeftBottomX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLeftBottomY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWideRectChanged not Warning mWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    const/16 v2, 0x8

    new-array v0, v2, [F

    move-object/from16 v28, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopX:F

    aput v3, v28, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftTopY:F

    aput v3, v28, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopX:F

    aput v3, v28, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightTopY:F

    aput v3, v28, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomX:F

    aput v3, v28, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mRightBottomY:F

    aput v3, v28, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomX:F

    aput v3, v28, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLeftBottomY:F

    aput v3, v28, v2

    .line 2744
    .restart local v28    # "point":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mHeight:F

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    .line 2745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 2746
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 2749
    .end local v28    # "point":[F
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->isNextFocusRectBoundary()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2750
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideArrow(I)V

    .line 2751
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningArrow()V

    goto/16 :goto_0

    .line 2753
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getGuideDirection(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideArrow(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

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
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 312
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 322
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->createTrapezoidFocusRect()V

    .line 323
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V

    .line 324
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    .line 325
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showCropArea(I)V

    .line 327
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHRMSensor(Z)V

    .line 328
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setGestureControl(Z)V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;)V

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    .line 333
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    .line 335
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    if-lez v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showCropArea(I)V

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 356
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->WIDE_SELFIE_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/16 v0, 0x1f40

    const/16 v1, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 358
    const-string v0, "effect_hint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 359
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
    .line 363
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 364
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 365
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 366
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 368
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SCREEN_WIDTH:I

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

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    .line 370
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    .line 372
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 373
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02016a

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 374
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 376
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreview:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 381
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 382
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020169

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    .line 390
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const v7, 0x7f02016a

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setBypassTouch(Z)V

    .line 394
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_HEIGHT:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    .line 398
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201fe

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    .line 399
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ff

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 403
    new-instance v1, Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_HEIGHT:F

    const-string v7, ""

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 411
    new-instance v1, Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_HEIGHT:F

    const-string v7, ""

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 417
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fc

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f4

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f2

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020200

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 427
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f8

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 428
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x5

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fa

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x6

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fc

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x7

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x8

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f5

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x9

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f3

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 433
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xa

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f020201

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 434
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xb

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f9

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xc

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fb

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xd

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c2

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c0

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 442
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200be

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 444
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 446
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c4

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x5

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x6

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_LANDSCAPE_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c8

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x7

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 453
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c3

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x8

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 456
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c1

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0x9

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 459
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bf

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xa

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 462
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200bd

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xb

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 465
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c5

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xc

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 468
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c7

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    const/16 v2, 0xd

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->FOCUS_RECT_PORTRAIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_LEFT:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    const v6, 0x7f0a0244

    .line 471
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->ANIMATION_TOP_MARGIN_TOP:F

    sub-float/2addr v5, v6

    const v6, 0x7f0200c9

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v1, v2

    .line 474
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->STOP_BUTTON_POS_X:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->STOP_BUTTON_POS_Y:I

    int-to-float v4, v2

    const v5, 0x7f020101

    const v6, 0x7f020103

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->STOP_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p3, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 499
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_WIDTH:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 500
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_WIDTH:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_LANDSCAPE_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 503
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_TOP_OFFSET_NORMAL:I

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 505
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_BOTTOM_OFFSET_NORMAL:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_CROP_PORTRAIT_WIDTH_NORMAL:I

    int-to-float v5, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    const v7, 0x7f02029f

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 513
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropLandscapeDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 515
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitUpArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCropPortraitDownArea:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 519
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBackgroundRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLivePreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTrapezoidCaptureFocusRect:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 523
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRect:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectPort:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 526
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v11, v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWarningArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 526
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 530
    :cond_0
    const/4 v11, 0x0

    :goto_1
    const/16 v1, 0xe

    if-ge v11, v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 532
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 530
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 534
    :cond_1
    const/4 v11, 0x0

    :goto_2
    const/16 v1, 0xe

    if-ge v11, v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v11

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 534
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 538
    :cond_2
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/16 v3, 0x970

    .line 543
    const-string v2, "sef_file_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    const-string v1, "Wide_Selfie_Info"

    .line 548
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

    .line 553
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WideSelfieLite"

    const-string v3, "error while addSEFData in WideSelfieLite"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHRMShutterDetected()V
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCapture:Z

    if-eqz v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_2

    .line 562
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopWideSelfieCapture()V

    goto :goto_0

    .line 566
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 572
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v3, :cond_0

    .line 587
    :goto_0
    return v2

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V

    .line 576
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    .line 578
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 579
    .local v0, "density":F
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 580
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 581
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 582
    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOriginalViewFinderHeight()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 580
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->calculateSampleSize(II)I

    move-result v1

    .line 583
    .local v1, "sampleSize":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getCaptureData()[B

    move-result-object v4

    div-int/lit8 v5, v1, 0x4

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setCaptureData([BI)V

    .line 585
    .end local v1    # "sampleSize":I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getOrientation()I

    move-result v5

    invoke-interface {v3, v4, v5, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 587
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 598
    :cond_0
    const-string v0, "WideSelfieLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_2

    .line 600
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 601
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHapticEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 605
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->cancelWideSelfieCapture()V

    .line 608
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    .line 609
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    .line 610
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopCancelTimer()V

    .line 611
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideStopButton()V

    .line 612
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideCropArea()V

    .line 614
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHRMSensor(Z)V

    .line 615
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setGestureControl(Z)V

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 620
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 621
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearTrapezoidFocusRect()V

    .line 622
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopWideSelfieSound()V

    .line 623
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setPreviewThumbnailSizeToDefault()V

    .line 624
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearMessageHandler()V

    .line 625
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 634
    sparse-switch p1, :sswitch_data_0

    .line 670
    :cond_0
    :goto_0
    return v0

    .line 636
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 638
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHapticEnabled(Z)V

    .line 639
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V

    .line 640
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    goto :goto_0

    .line 643
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPostProgress:I

    if-lez v2, :cond_2

    move v0, v1

    .line 644
    goto :goto_0

    .line 646
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 647
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 649
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopWideSelfie()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 650
    goto :goto_0

    .line 656
    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

    if-eqz v2, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_4

    .line 658
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setCaptureError(Z)V

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    .line 661
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 662
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideStopButton()V

    :cond_5
    move v0, v1

    .line 664
    goto :goto_0

    .line 634
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
    .line 676
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

    .line 681
    const-string v0, "WideSelfieLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged - mCurrentOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

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

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v0, :cond_2

    .line 684
    :cond_0
    const-string v0, "WideSelfieLite"

    const-string v1, "onOrientationChanged - Already mCameraContext or mEngine is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    .line 742
    :cond_1
    :goto_0
    return-void

    .line 689
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 691
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieStopping:Z

    if-nez v0, :cond_8

    .line 692
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-nez v0, :cond_6

    .line 693
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eq v0, p1, :cond_5

    .line 694
    const-string v0, "WideSelfieLite"

    const-string v1, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    .line 696
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V

    .line 697
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 699
    const-string v0, "WideSelfieLite"

    const-string v1, "onOrientationChanged isTimerCounting return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x3d

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 702
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    .line 703
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showCropArea(I)V

    goto :goto_0

    .line 706
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 707
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHapticEnabled(Z)V

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 711
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->cancelWideSelfieCapture()V

    .line 712
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWideSelfieToastPopup(I)V

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v0, :cond_5

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 735
    :cond_5
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    .line 737
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->refreshLivePreviewPosition()V

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showCropArea(I)V

    goto/16 :goto_0

    .line 719
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isWideSelfieStopping()Z

    move-result v0

    if-nez v0, :cond_7

    .line 720
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setCaptureError(Z)V

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopWideSelfie()V

    .line 723
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideStopButton()V

    goto :goto_1

    .line 726
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v0, :cond_5

    .line 727
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCapture:Z

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v6, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 752
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 3
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    const/4 v2, 0x1

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 773
    const-string v0, "WideSelfieLite"

    const-string v1, "onShutterKeyReleased- Preview is not started yet"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    :goto_0
    return v2

    .line 776
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    const-string v0, "WideSelfieLite"

    const-string v1, "Return, isCapturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_3

    .line 781
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopWideSelfie()Z

    .line 782
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    goto :goto_0

    .line 786
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPostProgress:I

    if-gtz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 792
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->isReadyToCapture()Z

    move-result v0

    if-nez v0, :cond_5

    .line 793
    const-string v0, "WideSelfieLite"

    const-string v1, "Drop Wide Selfie capture start, because it\'s not ready."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 797
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 802
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setStartCapture(Z)V

    .line 803
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setCaptureError(Z)V

    .line 804
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHapticEnabled(Z)V

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartWideSelfie()V

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 810
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 816
    const-string v0, "WideSelfieLite"

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

    .line 817
    packed-switch p1, :pswitch_data_0

    .line 825
    :goto_0
    return-void

    .line 819
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V

    .line 820
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    goto :goto_0

    .line 817
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

    .line 829
    const-string v0, "WideSelfieLite"

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

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 836
    :cond_1
    if-nez p1, :cond_3

    .line 837
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 840
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 845
    :cond_3
    return-void
.end method

.method public onWideSelfieCaptured()V
    .locals 3

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v0, :cond_1

    .line 850
    const-string v0, "WideSelfieLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureProgressIncreased mCaptureCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsCapturePreparing:Z

    .line 853
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-eqz v0, :cond_0

    .line 854
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCaptureCount:I

    .line 857
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

    .line 859
    :cond_1
    return-void
.end method

.method public onWideSelfieCapturedMaxFrames()V
    .locals 0

    .prologue
    .line 863
    return-void
.end method

.method public onWideSelfieCapturedNew()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 867
    const-string v0, "WideSelfieLite"

    const-string v1, "onWideSelfieCapturedNew"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-nez v0, :cond_2

    .line 873
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setStartCapture(Z)V

    .line 874
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->refreshLivePreviewPosition()V

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 881
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    if-eqz v0, :cond_3

    .line 886
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setSkipCheckWarning(Z)V

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    goto :goto_0
.end method

.method public onWideSelfieDirectionChanged(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 895
    const-string v0, "WideSelfieLite"

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

    .line 896
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->onWideDirectionChanged(I)V

    .line 897
    return-void
.end method

.method public onWideSelfieError(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    const/4 v0, 0x1

    .line 901
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setCaptureError(Z)V

    .line 903
    packed-switch p1, :pswitch_data_0

    .line 918
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipFrameOnWideSelfie:Z

    .line 919
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->cancelWideSelfieCapture()V

    .line 923
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWideSelfieToastPopup(I)V

    .line 924
    return-void

    .line 908
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    goto :goto_0

    .line 911
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPostProgress:I

    if-eqz v0, :cond_0

    .line 912
    const-string v0, "WideSelfieLite"

    const-string v1, "onWideSelfieError - WIDE_SELFIE_ERROR_BLURED_RESULT_IMAGE while processing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V

    .line 914
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V

    goto :goto_0

    .line 903
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWideSelfieLivePreviewData([B)V
    .locals 2
    .param p1, "arg0"    # [B

    .prologue
    .line 928
    const-string v0, "WideSelfieLite"

    const-string v1, "onWideSelfieLivePreviewData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->onLivePreviewData([B)V

    .line 931
    return-void
.end method

.method public onWideSelfieLowResolutionData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 935
    return-void
.end method

.method public onWideSelfieNextCapturePosition(II)V
    .locals 4
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 939
    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterX:F

    .line 940
    int-to-float v1, p2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mPrevThumbnailScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterY:F

    .line 941
    const-string v1, "WideSelfieLite"

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

    .line 942
    const-string v1, "WideSelfieLite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWideSelfieNextCapturePosition : mNextCaptureFocusRectCenterX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNextCaptureFocusRectCenterY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 967
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showNextCaptureFocusRect()V

    .line 968
    return-void

    .line 948
    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsStartCapture:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 949
    .local v0, "TOP_MARGIN":F
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterY:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectTop:F

    .line 950
    if-lez p1, :cond_1

    .line 951
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    .line 948
    .end local v0    # "TOP_MARGIN":F
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->PREVIEW_TOP_MARGIN:F

    goto :goto_1

    .line 953
    .restart local v0    # "TOP_MARGIN":F
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_LANDSCAPE_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectLeft:F

    goto :goto_0

    .line 958
    .end local v0    # "TOP_MARGIN":F
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_X:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectCenterX:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectLeft:F

    .line 959
    if-lez p2, :cond_2

    .line 960
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectTop:F

    goto :goto_0

    .line 962
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->LIVEPREVIEW_PORTRAIT_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->NEXT_CAPTURE_FOCUS_LINE_WIDTH:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusRectTop:F

    goto :goto_0

    .line 945
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

    .line 972
    if-nez p1, :cond_0

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    const-string v0, "WideSelfieLite"

    const-string v1, "onWideSelfieProgressStitching - CeState.SHUTDOWN"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V

    .line 980
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    .line 1008
    :goto_0
    return-void

    .line 982
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopCancelTimer()V

    .line 983
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setPostCaptureProgress(I)V

    .line 984
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->stopWideSelfieSound()V

    .line 985
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V

    .line 986
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHapticEnabled(Z)V

    .line 988
    if-nez p1, :cond_3

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 990
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 992
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getCaptureError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 998
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    goto :goto_0

    .line 995
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    goto :goto_1

    .line 999
    :cond_3
    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1003
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setDelayedSkipCapture()V

    goto :goto_0

    .line 1005
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onWideSelfieRectChanged([B)V
    .locals 0
    .param p1, "arg0"    # [B

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->wideSelfieRectChanged([B)V

    .line 1013
    return-void
.end method

.method public onWideSelfieSingleCaptureDone()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1017
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mIsWideSelfieCaptureStarted:Z

    if-nez v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-nez v0, :cond_1

    .line 1021
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1022
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    .line 1025
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    .line 1026
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 1038
    :cond_2
    :goto_1
    const-string v0, "WideSelfieLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWideSelfieSingleCaptureDone invisible next capture mDetectedDirection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextCaptureFocusStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-ne v0, v4, :cond_4

    .line 1040
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showStopButton()V

    goto :goto_0

    .line 1029
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-le v0, v3, :cond_2

    .line 1030
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    goto :goto_1

    .line 1034
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-le v0, v1, :cond_2

    .line 1035
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    goto :goto_1

    .line 1043
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    if-ne v0, v3, :cond_7

    .line 1044
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1045
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v0, v3, :cond_8

    .line 1046
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1047
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    .line 1062
    :cond_7
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mNextCaptureFocusStep:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->getGuideDirection(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideArrow(I)V

    goto/16 :goto_0

    .line 1048
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    .line 1049
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1050
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    goto :goto_2

    .line 1053
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v0, v3, :cond_a

    .line 1054
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1055
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    goto :goto_2

    .line 1056
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mDetectedDirection:I

    if-ne v0, v4, :cond_7

    .line 1057
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideWarningText()V

    .line 1058
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showGuideText(I)V

    goto :goto_2

    .line 1026
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
    .line 1067
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->misWideSelfieCapturing:Z

    if-eqz v0, :cond_0

    .line 1068
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideGuideText()V

    .line 1069
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showWarningText(I)V

    .line 1071
    :cond_0
    return-void
.end method
