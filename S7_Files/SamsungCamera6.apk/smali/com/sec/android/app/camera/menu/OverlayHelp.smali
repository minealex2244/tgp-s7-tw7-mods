.class public Lcom/sec/android/app/camera/menu/OverlayHelp;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "OverlayHelp.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/OverlayHelpController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final ANIMATION_CUT_DURATION:I = 0x3e8

.field private static final FADE_ANIMATION_DURATION:I = 0xa7

.field private static final FRAME_HOLD_DURATION:I = 0x3e8

.field private static final HIDE_ANIMATION_DURATION:I = 0x12c

.field private static final KEY_HRM_SENSOR_CAPTURE_GUIDE_ENABLED:Ljava/lang/String; = "pref_global_hrm_sensor_capture_guide_enabled"

.field private static final KEY_INTERACTION_GUIDE_ENABLED:Ljava/lang/String; = "pref_global_interaction_guide_enabled"

.field private static final KEY_PALM_CAPTURE_GUIDE_ENABLED:Ljava/lang/String; = "pref_global_palm_capture_guide_enabled"

.field private static final NUM_OF_PAGES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OverlayHelp"


# instance fields
.field private final BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

.field private final BUTTON_BOTTOM_MARGIN_LAND:I

.field private final BUTTON_BOTTOM_MARGIN_PORT:I

.field private final BUTTON_END_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_PORT:I

.field private final HRM_SENSOR_CAPTURE_TEXT_HEIGHT_FOR_MOBILE_KEYBOARD:I

.field private final HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_PORT:I

.field private final HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_FOR_MOBILE_KEYBOARD:I

.field private final HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_PORT:I

.field private final INTERACTION_DESCRIPTION_HEIGHT_LAND:I

.field private final INTERACTION_DESCRIPTION_HEIGHT_PORT:I

.field private final INTERACTION_IMAGE_BOTTOM_MARGIN_LAND:I

.field private final INTERACTION_IMAGE_BOTTOM_MARGIN_PORT:I

.field private final INTERACTION_IMAGE_TOP_MARGIN_LAND:I

.field private final INTERACTION_IMAGE_TOP_MARGIN_PORT:I

.field private final INTERACTION_PAGER_HEIGHT_LAND:I

.field private final INTERACTION_PAGER_HEIGHT_PORT:I

.field private final INTERACTION_PAGER_TOP_MARGIN_LAND:I

.field private final INTERACTION_PAGER_TOP_MARGIN_PORT:I

.field private final INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_LAND:I

.field private final INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_PORT:I

.field private mActive:Z

.field private mBaseLayout:Landroid/view/ViewGroup;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mCurrentIndex:I

.field private mHRMSensorCaptureGuideView:Landroid/view/View;

.field private mInteractionGuideView:Landroid/view/View;

.field private mIslastPageReached:Z

.field private mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field private mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

.field private mPageIndicator:Landroid/widget/LinearLayout;

.field private mPageIndicatorItem:[Landroid/view/View;

.field private mPalmCaptureGuideView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/menu/MenuManagerImpl;FF)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 67
    const v0, 0x7f0b032b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_HEIGHT_PORT:I

    .line 68
    const v0, 0x7f0b0023

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_HEIGHT_LAND:I

    .line 69
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_TOP_MARGIN_PORT:I

    .line 70
    const v0, 0x7f0b0024

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_TOP_MARGIN_LAND:I

    .line 71
    const v0, 0x7f0b0329

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_PORT:I

    .line 72
    const v0, 0x7f0b0327

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_LAND:I

    .line 73
    const v0, 0x7f0b0328

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_PORT:I

    .line 74
    const v0, 0x7f0b0326

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_LAND:I

    .line 75
    const v0, 0x7f0b031d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_PORT:I

    .line 76
    const v0, 0x7f0b031c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_LAND:I

    .line 77
    const v0, 0x7f0b0325

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_PORT:I

    .line 78
    const v0, 0x7f0b0323

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

    .line 79
    const v0, 0x7f0b0324

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_FOR_MOBILE_KEYBOARD:I

    .line 80
    const v0, 0x7f0b031f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_PORT:I

    .line 81
    const v0, 0x7f0b031e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_LAND:I

    .line 82
    const v0, 0x7f0b0322

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_PORT:I

    .line 83
    const v0, 0x7f0b0321

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_LAND:I

    .line 84
    const v0, 0x7f0b0320

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_HEIGHT_FOR_MOBILE_KEYBOARD:I

    .line 85
    const v0, 0x7f0b0022

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_PORT:I

    .line 86
    const v0, 0x7f0b032a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_LAND:I

    .line 87
    const v0, 0x7f0b0021

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_PORT:I

    .line 88
    const v0, 0x7f0b0319

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_LAND:I

    .line 89
    const v0, 0x7f0b031a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_END_MARGIN_LAND:I

    .line 90
    const v0, 0x7f0b031b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 102
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 111
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    .line 114
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isNeedShowHRMSensorCaptureGuide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/menu/OverlayHelp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createHRMSensorCaptureGuide()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isNeedShowPalmCaptureGuide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createPalmCaptureGuide()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/menu/OverlayHelp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/menu/OverlayHelp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->updatePageIndicator(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removePalmCaptureGuide()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setPalmCaptureGuideEnabled(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_LAND:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_LAND:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_LAND:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_TOP_MARGIN_PORT:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_IMAGE_BOTTOM_MARGIN_PORT:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_DESCRIPTION_HEIGHT_PORT:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setHRMSensorCaptureGuideEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setInteractionGuideEnabled(Z)V

    return-void
.end method

.method private createHRMSensorCaptureGuide()V
    .locals 9

    .prologue
    .line 315
    const-string v6, "OverlayHelp"

    const-string v7, "createHRMSensorCaptureGuide"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 317
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040009

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 318
    .local v1, "guideView":Landroid/view/View;
    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$4;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    const v6, 0x7f100028

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 333
    .local v0, "button":Landroid/widget/Button;
    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$5;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 345
    const v6, 0x7f100024

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 346
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 347
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_FOR_MOBILE_KEYBOARD:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 348
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    const v6, 0x7f100026

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 351
    .local v4, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 352
    .restart local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_HEIGHT_FOR_MOBILE_KEYBOARD:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 353
    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 356
    .restart local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 357
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "scrollView":Landroid/widget/ScrollView;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/camera/menu/OverlayHelp$6;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$6;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method private createInteractionGuide()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 377
    const-string v5, "OverlayHelp"

    const-string v7, "createInteractionGuide"

    invoke-static {v5, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 379
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04000b

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 380
    .local v1, "guideView":Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$7;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$7;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    const v5, 0x7f10002d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 395
    .local v0, "button":Landroid/widget/Button;
    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$8;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$8;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    .line 425
    const v5, 0x7f10002e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    .line 426
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 427
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 428
    move v3, v2

    .line 429
    .local v3, "index":I
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v2

    .line 430
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v5, v5, v2

    new-instance v7, Lcom/sec/android/app/camera/menu/OverlayHelp$9;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$9;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v3    # "index":I
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    :goto_1
    iput v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    .line 438
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    .line 439
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/OverlayHelp;->updatePageIndicator(I)V

    .line 440
    const v5, 0x7f10002c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 441
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$10;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$10;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 461
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 462
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 463
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$11;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$11;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 476
    return-void

    :cond_1
    move v5, v6

    .line 437
    goto :goto_1
.end method

.method private createPalmCaptureGuide()V
    .locals 7

    .prologue
    .line 479
    const-string v4, "OverlayHelp"

    const-string v5, "createPalmCaptureGuide"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 481
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04000f

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    .line 482
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$12;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$12;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v5, 0x7f100038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 497
    .local v0, "button":Landroid/widget/Button;
    new-instance v4, Lcom/sec/android/app/camera/menu/OverlayHelp$13;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$13;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v5, 0x7f100036

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 510
    .local v3, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 511
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_HEIGHT_FOR_MOBILE_KEYBOARD:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 512
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 515
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 516
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "scrollView":Landroid/widget/ScrollView;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$14;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$14;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 529
    return-void
.end method

.method public static isHRMSensorCaptureGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v0, 0x1

    .line 117
    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInteractionGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v0, 0x1

    .line 122
    const-string v1, "pref_global_interaction_guide_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedShowHRMSensorCaptureGuide()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 532
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    .line 533
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isHRMSensorCaptureGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedShowPalmCaptureGuide()Z
    .locals 2

    .prologue
    .line 537
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 538
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isPalmCaptureGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPalmCaptureGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v0, 0x1

    .line 128
    const-string v1, "pref_global_palm_capture_guide_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshHRMSensorCaptureGuideGuide(I)V
    .locals 11
    .param p1, "orientation"    # I

    .prologue
    const v10, 0x7f100026

    const v9, 0x7f100025

    const v6, 0x7f100024

    const/16 v8, 0x15

    const/16 v7, 0xd

    .line 542
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 543
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 544
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 545
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 546
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 549
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 550
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 551
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 554
    .local v3, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 555
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 556
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 557
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100028

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 560
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 561
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 562
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_END_MARGIN_LAND:I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object v5, v2

    .line 563
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v5, v2

    .line 564
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 565
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    :goto_0
    return-void

    .line 567
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "scrollView":Landroid/widget/ScrollView;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 568
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 569
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 570
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 573
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 574
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 575
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 578
    .restart local v3    # "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 579
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 580
    const v5, 0x7f0b032c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 581
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100028

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 584
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 585
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v5, v2

    .line 586
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v5, v2

    .line 587
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 588
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private refreshInteractionGuide(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const v6, 0x7f10002d

    const/16 v5, 0x15

    const/16 v4, 0xd

    .line 593
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 594
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 595
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_HEIGHT_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 596
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_TOP_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 597
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 600
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 601
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 604
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 605
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 606
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_END_MARGIN_LAND:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object v3, v2

    .line 607
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v3, v2

    .line 608
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 609
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 629
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v3, v1, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->refreshPagerItem(II)V

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 611
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "i":I
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 612
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_HEIGHT_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 613
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_TOP_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 614
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 617
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGE_INDICATOR_BOTTOM_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 618
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 621
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 622
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v3, v2

    .line 623
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v3, v2

    .line 624
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v3, v2

    .line 625
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 626
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 631
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method private refreshPalmCaptureGuideGuide(I)V
    .locals 11
    .param p1, "orientation"    # I

    .prologue
    const v10, 0x7f100036

    const v9, 0x7f100035

    const v6, 0x7f100034

    const/16 v8, 0x15

    const/16 v7, 0xd

    .line 634
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 635
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 636
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 637
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 638
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 641
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 642
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 643
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 646
    .local v3, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 647
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 648
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100038

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 651
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 652
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_LAND:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 653
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_END_MARGIN_LAND:I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object v5, v2

    .line 654
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v5, v2

    .line 655
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 656
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    :goto_0
    return-void

    .line 658
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "scrollView":Landroid/widget/ScrollView;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 659
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 660
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 661
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 664
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 665
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_IMAGE_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 666
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 669
    .restart local v3    # "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 670
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TEXT_TOP_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 671
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    const v6, 0x7f100038

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 674
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 675
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->BUTTON_BOTTOM_MARGIN_PORT:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v5, v2

    .line 676
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v5, v2

    .line 677
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 678
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private removeHRMSensorCaptureGuide()V
    .locals 2

    .prologue
    .line 683
    const-string v0, "OverlayHelp"

    const-string v1, "removeHRMSensorCaptureGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$15;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method private removeInteractionGuide()V
    .locals 2

    .prologue
    .line 699
    const-string v0, "OverlayHelp"

    const-string v1, "removeInteractionGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$16;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method

.method private removePalmCaptureGuide()V
    .locals 2

    .prologue
    .line 718
    const-string v0, "OverlayHelp"

    const-string v1, "removePalmCaptureGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$17;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method

.method private setHRMSensorCaptureGuideEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 735
    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHRMSensorCaptureGuideEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 738
    :cond_0
    return-void
.end method

.method private setInteractionGuideEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_interaction_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 742
    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInteractionGuideEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_interaction_guide_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 745
    :cond_0
    return-void
.end method

.method private setPalmCaptureGuideEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_palm_capture_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 749
    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPalmCaptureGuideEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_palm_capture_guide_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 752
    :cond_0
    return-void
.end method

.method private updatePageIndicator(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 755
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 756
    if-ne v0, p1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 755
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 762
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "OverlayHelp"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removePalmCaptureGuide()V

    .line 144
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 145
    return-void
.end method

.method public hideHelp(Z)V
    .locals 4
    .param p1, "bAnimation"    # Z

    .prologue
    .line 149
    const-string v1, "OverlayHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideHelp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->enableFocusNavigation()V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/16 v2, 0x300

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerEAM(I)V

    .line 157
    if-eqz p1, :cond_3

    .line 158
    const/16 v1, 0x12c

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 159
    .local v0, "hideAnimation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 161
    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    .end local v0    # "hideAnimation":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v0    # "hideAnimation":Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 177
    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$2;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 193
    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$3;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 210
    .end local v0    # "hideAnimation":Landroid/view/animation/Animation;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 211
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    .line 213
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 214
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V

    .line 216
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removePalmCaptureGuide()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    return v0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 233
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 243
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 239
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    .line 252
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 260
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 258
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public refreshOverlayHelp(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 265
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 266
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->refreshInteractionGuide(I)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 268
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->refreshHRMSensorCaptureGuideGuide(I)V

    goto :goto_0

    .line 269
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->refreshPalmCaptureGuideGuide(I)V

    goto :goto_0
.end method

.method public setOverlayHelpHideListener(Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    .line 277
    return-void
.end method

.method public showHelp(I)V
    .locals 4
    .param p1, "commandId"    # I

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    if-eqz v0, :cond_1

    .line 282
    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHelp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " previous help "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already showing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v0, "OverlayHelp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHelp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    .line 287
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->disableFocusNavigation()V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x300

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->unregisterEAM(I)V

    .line 293
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_3

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 295
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createInteractionGuide()V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 299
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_5

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 301
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createHRMSensorCaptureGuide()V

    goto :goto_0

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 307
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createPalmCaptureGuide()V

    goto :goto_0

    .line 309
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPalmCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
