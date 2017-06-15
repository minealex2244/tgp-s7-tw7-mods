.class public Lcom/sec/android/app/camera/menu/PopupLayout;
.super Ljava/lang/Object;
.source "PopupLayout.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/PopupLayoutController;


# static fields
.field private static final EXPERIENCE_GUIDE_AUTO_FOCUS_DURATION:I = 0xbb8

.field protected static final TAG:Ljava/lang/String; = "PopupLayout"


# instance fields
.field private final BASEMENU_GROUP_WIDTH:F

.field private final EXPERIENCE_BACKGROUND_WIDTH:F

.field private KEY_EXPERIENCE_GUIDE_AUTO_FOCUS_POPUP:Ljava/lang/String;

.field private KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

.field private KEY_VISION_INTELLIGENCE_EFFECT:Ljava/lang/String;

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final POPUP_GROUP_RIGHT_GAP:F

.field private final RECORDING_BUTTON_WIDTH:F

.field private final REVIEW_HIDE_ANIMATION_DURATION:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final VIDEO_PREVIEW_POPUP_BOTTOM_MARGIN:F

.field private final VIDEO_PREVIEW_POPUP_WIDTH:F

.field private final VISION_INTELLIGENCE_BUTTON_POS_X:I

.field private final VISION_INTELLIGENCE_POPUP_WIDTH:F

.field private final VISION_INTELLIGENC_POPUP_BOTTOM_MARGIN:F

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

.field private mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field private mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mPopupIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;",
            ">;"
        }
    .end annotation
.end field

.field private mReview:Lcom/sec/android/app/camera/menu/Review;

.field private mReviewShowing:Z

.field private mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

.field private mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .prologue
    const v1, 0x7f0a0012

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    .line 51
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_HEIGHT:I

    .line 53
    const v0, 0x7f0a005e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VIDEO_PREVIEW_POPUP_WIDTH:F

    .line 54
    const v0, 0x7f0a005d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VIDEO_PREVIEW_POPUP_BOTTOM_MARGIN:F

    .line 56
    const v0, 0x7f0a03e4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENCE_POPUP_WIDTH:F

    .line 57
    const v0, 0x7f0a03e5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENC_POPUP_BOTTOM_MARGIN:F

    .line 59
    const v0, 0x7f0a03c2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->POPUP_GROUP_RIGHT_GAP:F

    .line 61
    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_WIDTH:F

    .line 62
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->BASEMENU_GROUP_WIDTH:F

    .line 63
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 64
    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 65
    const v0, 0x7f0a02a2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->RECORDING_BUTTON_WIDTH:F

    .line 66
    const v0, 0x7f0a0323

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    .line 67
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f0a0262

    .line 68
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    .line 70
    const v0, 0x7f0b0014

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->REVIEW_HIDE_ANIMATION_DURATION:I

    .line 73
    const-string v0, "pref_global_vision_intelligence_effect_key"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VISION_INTELLIGENCE_EFFECT:Ljava/lang/String;

    .line 74
    const-string v0, "pref_global_recording_preview_guide_popup_key"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

    .line 75
    const-string v0, "pref_global_experience_guide_auto_focus_popup_key"

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_EXPERIENCE_GUIDE_AUTO_FOCUS_POPUP:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    .line 92
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 93
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 94
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .line 95
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/Review;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/PopupLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/PopupLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/PopupLayout;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/PopupLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/PopupLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/PopupLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/PopupLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/PopupLayout;)Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/PopupLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    return-object v0
.end method

.method private createExperienceGuideAutoFocusPopup()V
    .locals 12

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_GUIDE_TEXT_FOR_AUTO_FOCUS:Z

    if-eqz v0, :cond_1

    .line 387
    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float v10, v0, v1

    .line 388
    .local v10, "ratio_margin":F
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v3, v10

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/4 v6, 0x0

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09016c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f09016b

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IFFFFILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/4 v5, 0x0

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09016c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09016b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v10

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/4 v5, 0x0

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09016c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09016b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->EXPERIENCE_BACKGROUND_WIDTH:F

    const/4 v5, 0x0

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09016c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09016b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setPosition(IFFFFILjava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v10    # "ratio_margin":F
    :cond_1
    return-void
.end method

.method private createVideoPreviewPopup()V
    .locals 12

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 400
    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->BASEMENU_GROUP_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float v9, v0, v2

    .line 401
    .local v9, "baseMenuWeightValue":F
    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    add-float v11, v0, v9

    .line 402
    .local v11, "shutterButtonX":F
    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->SHUTTER_BUTTON_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    add-float v10, v11, v0

    .line 403
    .local v10, "recordingButtonX":F
    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->POPUP_GROUP_RIGHT_GAP:F

    sub-float v4, v10, v0

    .line 405
    .local v4, "pickerX":F
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VIDEO_PREVIEW_POPUP_WIDTH:F

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VIDEO_PREVIEW_POPUP_BOTTOM_MARGIN:F

    const v6, 0x7f0901ff

    const v7, 0x7f0901fe

    const v8, 0x7f0201f1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VIDEO_PREVIEW:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method private createVisionIntelligencePopup()V
    .locals 9

    .prologue
    .line 411
    iget v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->POPUP_GROUP_RIGHT_GAP:F

    sub-float v4, v0, v1

    .line 413
    .local v4, "pickerX":F
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENCE_POPUP_WIDTH:F

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->VISION_INTELLIGENC_POPUP_BOTTOM_MARGIN:F

    const v6, 0x7f090282

    const v7, 0x7f090281

    const v8, 0x7f0201f0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->clear()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    .line 108
    :cond_0
    return-void
.end method

.method public hideAllPopup()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mPopupIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    .line 113
    .local v0, "id":Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PopupLayout;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V

    goto :goto_0

    .line 115
    .end local v0    # "id":Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;
    :cond_0
    return-void
.end method

.method public hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V
    .locals 3
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    .prologue
    .line 119
    sget-object v0, Lcom/sec/android/app/camera/menu/PopupLayout$4;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayoutController$PopupID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setTextBalloonEnabled(Ljava/lang/String;Z)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->hideTextBalloon()V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->hideTextBalloon()V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setVisibility(I)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideReview(Z)V
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    .line 145
    const-string v1, "PopupLayout"

    const-string v2, "hideReview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-nez v1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->removeReviewTimeOutCallback()V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->isShareViaWorking()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->cancelAnimation()V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->hideReview()V

    .line 179
    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    goto :goto_0

    .line 155
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->REVIEW_HIDE_ANIMATION_DURATION:I

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 156
    .local v0, "hideAnim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/sec/android/app/camera/menu/PopupLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/PopupLayout$1;-><init>(Lcom/sec/android/app/camera/menu/PopupLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/Review;->setAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/Review;->startAnimation()V

    goto :goto_1
.end method

.method public isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)Z
    .locals 4
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "enabled":Z
    sget-object v1, Lcom/sec/android/app/camera/menu/PopupLayout$4;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayoutController$PopupID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 187
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v1, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVideoPreviewPopup()V

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->isTextBalloonEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 191
    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v1, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVisionIntelligencePopup()V

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VISION_INTELLIGENCE_EFFECT:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->isTextBalloonEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 197
    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-nez v1, :cond_3

    .line 200
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createExperienceGuideAutoFocusPopup()V

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_EXPERIENCE_GUIDE_AUTO_FOCUS_POPUP:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->isExperienceGuideEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isReviewShowing()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    return v0
.end method

.method public isReviewUpdating()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->isReviewUpdating()Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShareViaWorking()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->isShareViaWorking()Z

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->hideAllPopup()V

    .line 239
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;Z)V
    .locals 2
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;
    .param p2, "enabled"    # Z

    .prologue
    .line 244
    sget-object v0, Lcom/sec/android/app/camera/menu/PopupLayout$4;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayoutController$PopupID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v0, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVideoPreviewPopup()V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VIDEO_PREVIEW_GUIDE_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setTextBalloonEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v0, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVisionIntelligencePopup()V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_VISION_INTELLIGENCE_EFFECT:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->setTextBalloonEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-nez v0, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createExperienceGuideAutoFocusPopup()V

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->KEY_EXPERIENCE_GUIDE_AUTO_FOCUS_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setExperienceGuideEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V
    .locals 4
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    .prologue
    .line 272
    sget-object v0, Lcom/sec/android/app/camera/menu/PopupLayout$4;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayoutController$PopupID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVideoPreviewPopup()V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVideoPreviewPopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->showTextBalloon()V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    if-nez v0, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createVisionIntelligencePopup()V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mVisionIntelligencePopup:Lcom/sec/android/app/camera/widget/gl/TextBalloon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TextBalloon;->showTextBalloon()V

    goto :goto_0

    .line 286
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-nez v0, :cond_3

    .line 287
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->createExperienceGuideAutoFocusPopup()V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mExperienceGuideAutoFocusPopup:Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ExperienceGuide;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/PopupLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/PopupLayout$2;-><init>(Lcom/sec/android/app/camera/menu/PopupLayout;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "captureFileName"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 306
    const-string v0, "PopupLayout"

    const-string v1, "showReview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-nez p1, :cond_1

    .line 309
    const-string v0, "PopupLayout"

    const-string v1, "bitmap is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isLaunchGallery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getZorderOnTop()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 318
    const-string v0, "PopupLayout"

    const-string v1, "showReview : ignore showReview because another menu is showing now"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/PopupLayout;->isReviewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-nez v0, :cond_3

    .line 327
    new-instance v0, Lcom/sec/android/app/camera/menu/Review;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/menu/Review;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayoutController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Review;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 332
    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReviewShowing:Z

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/menu/Review;->updateReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    new-instance v1, Lcom/sec/android/app/camera/menu/PopupLayout$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/PopupLayout$3;-><init>(Lcom/sec/android/app/camera/menu/PopupLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Review;->setReviewButtonListener(Lcom/sec/android/app/camera/menu/Review$ReviewButtonListener;)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->startShowReviewAnimation()V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendCompletedMessageToBixby()V

    goto :goto_0
.end method

.method public startShareViaAnimation()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->removeReviewTimeOutCallback()V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout;->mReview:Lcom/sec/android/app/camera/menu/Review;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Review;->startShareViaAnimation()V

    .line 381
    :cond_0
    return-void
.end method
