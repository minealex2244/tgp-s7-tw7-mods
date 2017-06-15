.class public Lcom/sec/android/app/camera/menu/OverlayHelp;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "OverlayHelp.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/OverlayHelpController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;,
        Lcom/sec/android/app/camera/menu/OverlayHelp$OverlayHelpAnimations;,
        Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;
    }
.end annotation


# static fields
.field private static final HIDE_ANIMATION_DURATION:I = 0x12c

.field private static final HORIZONTAL_ARROW_ANIMATION_OFFSET:F

.field private static final KEY_HRM_SENSOR_CAPTURE_GUIDE_ENABLED:Ljava/lang/String; = "pref_global_hrm_sensor_capture_guide_enabled"

.field private static final KEY_INTERACTION_GUIDE_ENABLED:Ljava/lang/String; = "pref_global_interaction_guide_enabled"

.field private static final NUM_OF_PAGES:I = 0x2

.field private static final ONE_HAND_ZOOM_ANIMATION_OFFSET:F

.field private static final SHOW_ARROW_ANIMATION:I = 0x0

.field private static final SHOW_ONE_HAND_ZOOM_ANIMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OverlayHelp"

.field private static final TOTAL_ARROW_ANIMATION_TIME:I = 0x13a9

.field private static final TOTAL_ONE_HAND_ZOOM_ANIMATION_TIME:I = 0x170c

.field private static final VERTICAL_ARROW_ANIMATION_OFFSET:F


# instance fields
.field private final HELP_TITLE_TOP_MARGIN_LAND:I

.field private final HELP_TITLE_TOP_MARGIN_PORT:I

.field private final HRM_SENSOR_CAPTURE_BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

.field private final HRM_SENSOR_CAPTURE_BUTTON_BOTTOM_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_BUTTON_BOTTOM_MARGIN_PORT:I

.field private final HRM_SENSOR_CAPTURE_LAYOUT_BOTTOM_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_LAYOUT_BOTTOM_MARGIN_PORT:I

.field private final HRM_SENSOR_CAPTURE_LAYOUT_SIDE_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_LAYOUT_SIDE_MARGIN_PORT:I

.field private final HRM_SENSOR_CAPTURE_LAYOUT_TOP_MARGIN_LAND:I

.field private final HRM_SENSOR_CAPTURE_LAYOUT_TOP_MARGIN_PORT:I

.field private final HRM_SENSOR_CAPTURE_MAIN_LAYOUT_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

.field private final HRM_SENSOR_CAPTURE_MAIN_LAYOUT_TOP_MARGIN_FOR_MOBILE_KEYBOARD:I

.field private final HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

.field private final INTERACTION_MENU_BAR_BOTTOM_MARGIN_LAND:I

.field private final INTERACTION_MENU_BAR_BOTTOM_MARGIN_PORT:I

.field private final INTERACTION_PAGER_LAYOUT_BOTTOM_MARGIN_LAND:I

.field private final INTERACTION_PAGER_LAYOUT_BOTTOM_MARGIN_PORT:I

.field private final INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_LAND:I

.field private final INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_PORT:I

.field private final INTERACTION_PAGER_LAYOUT_TOP_MARGIN_LAND:I

.field private final INTERACTION_PAGER_LAYOUT_TOP_MARGIN_PORT:I

.field private mActive:Z

.field private mBaseLayout:Landroid/view/ViewGroup;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommandId:I

.field private mCurrentIndex:I

.field private mHRMSensorCaptureGuideView:Landroid/view/View;

.field private mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

.field private mInteractionGuideView:Landroid/view/View;

.field private mIsLocaleRTL:Z

.field private mIslastPageReached:Z

.field private mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field private mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

.field private mPageIndicator:Landroid/widget/LinearLayout;

.field private mPageIndicatorItem:[Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f0a036c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HORIZONTAL_ARROW_ANIMATION_OFFSET:F

    .line 86
    const v0, 0x7f0a036e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/OverlayHelp;->VERTICAL_ARROW_ANIMATION_OFFSET:F

    .line 87
    const v0, 0x7f0a0395

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/menu/OverlayHelp;->ONE_HAND_ZOOM_ANIMATION_OFFSET:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/menu/MenuManagerImpl;FF)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const v4, 0x7f0a0373

    const v3, 0x7f0a0371

    const v2, 0x7f0a0370

    const/4 v1, 0x0

    .line 153
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 89
    const v0, 0x7f0a0374

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HELP_TITLE_TOP_MARGIN_PORT:I

    .line 90
    const v0, 0x7f0a0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HELP_TITLE_TOP_MARGIN_LAND:I

    .line 91
    const v0, 0x7f0a0369

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

    .line 93
    const v0, 0x7f0a000d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_TOP_MARGIN_PORT:I

    .line 94
    const v0, 0x7f0a0372

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_BOTTOM_MARGIN_PORT:I

    .line 95
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_PORT:I

    .line 97
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_TOP_MARGIN_LAND:I

    .line 98
    const v0, 0x7f0a036f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_BOTTOM_MARGIN_LAND:I

    .line 99
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_LAND:I

    .line 101
    const v0, 0x7f0a000e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_MENU_BAR_BOTTOM_MARGIN_PORT:I

    .line 102
    const v0, 0x7f0a036d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_MENU_BAR_BOTTOM_MARGIN_LAND:I

    .line 104
    const v0, 0x7f0a003f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_TOP_MARGIN_PORT:I

    .line 105
    const v0, 0x7f0a0368

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_BOTTOM_MARGIN_PORT:I

    .line 106
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_SIDE_MARGIN_PORT:I

    .line 108
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_TOP_MARGIN_LAND:I

    .line 109
    const v0, 0x7f0a0365

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_BOTTOM_MARGIN_LAND:I

    .line 110
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_SIDE_MARGIN_LAND:I

    .line 112
    const v0, 0x7f0a0364

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_BUTTON_BOTTOM_MARGIN_PORT:I

    .line 113
    const v0, 0x7f0a0362

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_BUTTON_BOTTOM_MARGIN_LAND:I

    .line 115
    const v0, 0x7f0a0367

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_MAIN_LAYOUT_TOP_MARGIN_FOR_MOBILE_KEYBOARD:I

    .line 116
    const v0, 0x7f0a0366

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_MAIN_LAYOUT_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    .line 117
    const v0, 0x7f0a0363

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 129
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIsLocaleRTL:Z

    .line 130
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIsLocaleRTL:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    .line 134
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    .line 136
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayHelp$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 155
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f004b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    .line 158
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setInteractionGuideEnabled(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isNeedShowHRMSensorCaptureGuide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createHRMSensorCaptureGuide()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIsLocaleRTL:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/menu/OverlayHelp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/menu/OverlayHelp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->updatePageIndicator(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2000()F
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/sec/android/app/camera/menu/OverlayHelp;->ONE_HAND_ZOOM_ANIMATION_OFFSET:F

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300()F
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HORIZONTAL_ARROW_ANIMATION_OFFSET:F

    return v0
.end method

.method static synthetic access$2500()F
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/sec/android/app/camera/menu/OverlayHelp;->VERTICAL_ARROW_ANIMATION_OFFSET:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HELP_TITLE_TOP_MARGIN_LAND:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/menu/OverlayHelp;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HELP_TITLE_TOP_MARGIN_PORT:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->setHRMSensorCaptureGuideEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    return p1
.end method

.method private createHRMSensorCaptureGuide()V
    .locals 11

    .prologue
    .line 333
    const-string v8, "OverlayHelp"

    const-string v9, "createHRMSensorCaptureGuide"

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 335
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040009

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 336
    .local v2, "guideView":Landroid/view/View;
    new-instance v8, Lcom/sec/android/app/camera/menu/OverlayHelp$4;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$4;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    const v8, 0x7f0f002a

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 351
    .local v0, "button":Landroid/widget/Button;
    new-instance v8, Lcom/sec/android/app/camera/menu/OverlayHelp$5;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$5;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 363
    const v8, 0x7f0f0026

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 364
    .local v5, "mainLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 365
    .local v6, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_MAIN_LAYOUT_TOP_MARGIN_FOR_MOBILE_KEYBOARD:I

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 366
    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_MAIN_LAYOUT_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 367
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    const v8, 0x7f0f0027

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 370
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v8, v6

    .line 371
    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, 0x2

    const v10, 0x7f0f0028

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v8, v6

    .line 372
    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 373
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    const v8, 0x7f0f0028

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 376
    .local v7, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v8, v6

    .line 377
    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, 0x2

    const v10, 0x7f0f0029

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v8, v6

    .line 378
    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 379
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    const v8, 0x7f0f0029

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 382
    .local v1, "descriptionTextView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v8, v6

    .line 383
    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v8, v6

    .line 384
    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 385
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    const v8, 0x7f0f002a

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 388
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 389
    .restart local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_BUTTON_BOTTOM_MARGIN_FOR_MOBILE_KEYBOARD:I

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 390
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    .end local v1    # "descriptionTextView":Landroid/widget/TextView;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "mainLayout":Landroid/widget/RelativeLayout;
    .end local v6    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "titleTextView":Landroid/widget/TextView;
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/camera/menu/OverlayHelp$6;

    invoke-direct {v9, p0, v2}, Lcom/sec/android/app/camera/menu/OverlayHelp$6;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method private createInteractionGuide()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 409
    const-string v5, "OverlayHelp"

    const-string v8, "createInteractionGuide"

    invoke-static {v5, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 411
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04000c

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 412
    .local v1, "guideView":Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$7;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$7;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    const v5, 0x7f0f003d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 427
    .local v0, "button":Landroid/widget/Button;
    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$8;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$8;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    new-instance v5, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    .line 454
    const v5, 0x7f0f003c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    .line 455
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 456
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 457
    move v3, v2

    .line 458
    .local v3, "index":I
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v5, v2

    .line 459
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v5, v5, v2

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0901a9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    add-int/lit8 v11, v2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v5, v5, v2

    new-instance v8, Lcom/sec/android/app/camera/menu/OverlayHelp$9;

    invoke-direct {v8, p0, v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$9;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;I)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v3    # "index":I
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIsLocaleRTL:Z

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    iput v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    .line 468
    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z

    .line 469
    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/OverlayHelp;->updatePageIndicator(I)V

    .line 470
    const v5, 0x7f0f0039

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 471
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 472
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 473
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$10;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$10;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 493
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/menu/OverlayHelp$11;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$11;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 506
    return-void

    :cond_1
    move v5, v7

    .line 467
    goto :goto_1
.end method

.method public static isHRMSensorCaptureGuideEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v0, 0x1

    .line 161
    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->UNPACK_BINARY:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInteractionGuideEnabled(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z
    .locals 3
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p1, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v0, 0x1

    .line 166
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_global_interaction_guide_enabled"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
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

    .line 168
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isLauncherCameraIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->UNPACK_BINARY:Z

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

    .line 509
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

    .line 510
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

.method private refreshHRMSensorCaptureGuide(I)V
    .locals 13
    .param p1, "orientation"    # I

    .prologue
    const v12, 0x7f0f0029

    const v11, 0x7f0f0027

    const v10, 0x7f0f0028

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 514
    if-ne p1, v8, :cond_0

    .line 515
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v7, 0x7f0f0026

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 517
    .local v3, "mainLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 518
    .local v4, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_TOP_MARGIN_LAND:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 519
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_BOTTOM_MARGIN_LAND:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 520
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_SIDE_MARGIN_LAND:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 521
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_SIDE_MARGIN_LAND:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 522
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 525
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v6, v4

    .line 526
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v6, v4

    .line 527
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 528
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 531
    .local v5, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 532
    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_TITLE_TOP_MARGIN_LAND:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 533
    const/4 v6, -0x2

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v6, v4

    .line 534
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v6, v4

    .line 535
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 536
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 539
    .local v1, "descriptionTextView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v6, v4

    .line 540
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v6, v4

    .line 541
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 542
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v7, 0x7f0f002a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 545
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 546
    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_BUTTON_BOTTOM_MARGIN_LAND:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v6, v4

    .line 547
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v6, v4

    .line 548
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 549
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    :goto_0
    return-void

    .line 551
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "descriptionTextView":Landroid/widget/TextView;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "mainLayout":Landroid/widget/RelativeLayout;
    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "titleTextView":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v7, 0x7f0f0026

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 553
    .restart local v3    # "mainLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 554
    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_TOP_MARGIN_PORT:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 555
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_BOTTOM_MARGIN_PORT:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 556
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_SIDE_MARGIN_PORT:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 557
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_LAYOUT_SIDE_MARGIN_PORT:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 558
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 561
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v6, v4

    .line 562
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v6, v4

    .line 563
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 564
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 567
    .restart local v5    # "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 568
    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HELP_TITLE_TOP_MARGIN_PORT:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 569
    const/4 v6, -0x2

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v6, v4

    .line 570
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v6, v4

    .line 571
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 572
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 575
    .restart local v1    # "descriptionTextView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v6, v4

    .line 576
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v6, v4

    .line 577
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 578
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    const v7, 0x7f0f002a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 581
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 582
    .restart local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->HRM_SENSOR_CAPTURE_BUTTON_BOTTOM_MARGIN_PORT:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v6, v4

    .line 583
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v6, v4

    .line 584
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 585
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private refreshInteractionGuide(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const v5, 0x7f0f003a

    const/4 v4, 0x0

    .line 590
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 591
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 592
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_TOP_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 593
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_BOTTOM_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 594
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 595
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 596
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 599
    .local v1, "menuBar":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 600
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_MENU_BAR_BOTTOM_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 601
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 602
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_LAND:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 603
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 620
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v3, v0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->refreshPagerItem(II)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 605
    .end local v0    # "i":I
    .end local v1    # "menuBar":Landroid/widget/RelativeLayout;
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 606
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_TOP_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 607
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_BOTTOM_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 608
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 609
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_PAGER_LAYOUT_SIDE_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 610
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 613
    .restart local v1    # "menuBar":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 614
    .restart local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->INTERACTION_MENU_BAR_BOTTOM_MARGIN_PORT:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 615
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 616
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 617
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 622
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private removeHRMSensorCaptureGuide()V
    .locals 2

    .prologue
    .line 625
    const-string v0, "OverlayHelp"

    const-string v1, "removeHRMSensorCaptureGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$12;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 638
    return-void
.end method

.method private removeInteractionGuide()V
    .locals 2

    .prologue
    .line 641
    const-string v0, "OverlayHelp"

    const-string v1, "removeInteractionGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$13;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 657
    return-void
.end method

.method private setHRMSensorCaptureGuideEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 661
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

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_hrm_sensor_capture_guide_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 664
    :cond_0
    return-void
.end method

.method private setInteractionGuideEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_interaction_guide_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 668
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

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_interaction_guide_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 671
    :cond_0
    return-void
.end method

.method private updatePageIndicator(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 675
    if-ne v0, p1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 674
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mPageIndicatorItem:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 681
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "OverlayHelp"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V

    .line 182
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 183
    return-void
.end method

.method public hideHelp(Z)V
    .locals 4
    .param p1, "bAnimation"    # Z

    .prologue
    .line 187
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

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->enableFocusNavigation()V

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    :cond_0
    if-eqz p1, :cond_3

    .line 199
    const/16 v1, 0x12c

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 200
    .local v0, "hideAnimation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 202
    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$2;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 242
    .end local v0    # "hideAnimation":Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    return-void

    .line 217
    .restart local v0    # "hideAnimation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 218
    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayHelp$3;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 235
    .end local v0    # "hideAnimation":Landroid/view/animation/Animation;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 236
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V

    .line 238
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    return v0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    .line 255
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 265
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 261
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 255
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
    .line 270
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    .line 274
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 282
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 280
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 274
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
    .line 287
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 288
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->refreshInteractionGuide(I)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->refreshHRMSensorCaptureGuide(I)V

    goto :goto_0
.end method

.method public setOverlayHelpHideListener(Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    .line 297
    return-void
.end method

.method public showHelp(I)V
    .locals 5
    .param p1, "commandId"    # I

    .prologue
    const/4 v4, 0x0

    .line 301
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    if-eqz v0, :cond_1

    .line 302
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

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 305
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

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mActive:Z

    .line 307
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->disableFocusNavigation()V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHoverSwipeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.glview.ACCESSIBILITY_GESTURE_DETECTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 317
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_4

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createInteractionGuide()V

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 323
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 325
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->createHRMSensorCaptureGuide()V

    goto/16 :goto_0

    .line 327
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp;->mHRMSensorCaptureGuideView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
