.class public Lcom/sec/android/app/camera/shootingmode/Selfie;
.super Ljava/lang/Object;
.source "Selfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;
.implements Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
.implements Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
.implements Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_BEAUTY_LEVEL_FOR_FACE_AR:I = 0x5

.field private static final DELAY_TIME_TO_HIDE_STICKER_GUIDE_TEXT:I = 0xbb8

.field private static final LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

.field private static final LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

.field private static final MESSAGE_SELFIE_HIDE_STICKER_TEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Selfie"


# instance fields
.field private final BEAUTY_MENU_BUTTON_POS_X:I

.field private final BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

.field private final BEAUTY_MENU_BUTTON_POS_Y:I

.field private final BEAUTY_MENU_BUTTON_POS_Y_FOR_STICKER_BUTTON:I

.field private final BEAUTY_MENU_BUTTON_WIDTH:I

.field private final BUTTON_FONT_COLOR:I

.field private final FACE_DETECTION_GROUP_WIDTH:F

.field private final FACE_DETECTION_IMAGE_WIDTH:F

.field private final FACE_DETECTION_TEXT_HEIGHT:F

.field private final FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

.field private final FACE_DETECTION_TEXT_SIZE:F

.field private final FACE_DETECTION_TEXT_WIDTH:F

.field private final STICKER_GUIDE_TEXT_SIZE:F

.field private final STICKER_SHORTCUT_BUTTON_POS_X:I

.field private final STICKER_SHORTCUT_BUTTON_POS_Y:I

.field private final STICKER_SHORTCUT_BUTTON_WIDTH:I

.field private final VISION_INTELLIGENCE_BUTTON_POS_X:I

.field private final VISION_INTELLIGENCE_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

.field private final VISION_INTELLIGENCE_BUTTON_POS_Y:I

.field private final VISION_INTELLIGENCE_BUTTON_WIDTH:I

.field private mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

.field private mFaceDetectionIndicatorPosX:F

.field private mFaceDetectionText:Lcom/samsung/android/glview/GLText;

.field private mFaceLength:I

.field private mIsActivatedSpotLightSlider:Z

.field private mIsAlreadyHideFaceDetection:Z

.field private mIsAlreadyShowFaceDetection:Z

.field private mIsAlreadyShowStickerGuideText:Z

.field private mIsAlreadyShowStickerToast:Z

.field private mIsBeautySupported:Z

.field private mIsBurstCapturing:Z

.field private mIsFace:Z

.field private mIsFaceRelight:Z

.field private mIsScreenFlashStarted:Z

.field private mIsShapeEffectEngineRunning:Z

.field private mIsStickerShortcutSupported:Z

.field private mIsVisionIntelligenceSupported:Z

.field private mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

.field private mSpotLightPositionX:F

.field private mSpotLightPositionY:F

.field private mStickerGuideText:Lcom/samsung/android/glview/GLText;

.field private mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

.field private mStickerToast:Landroid/widget/Toast;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f0a029c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

    .line 94
    const v0, 0x7f0a0053

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const v6, 0x7f0a025e

    const v5, 0x7f0a0012

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const v0, 0x7f0a0326

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    .line 98
    const v0, 0x7f0a0327

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    .line 99
    const v0, 0x7f0a0329

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    .line 100
    const v0, 0x7f0a032a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_SIZE:F

    .line 101
    const v0, 0x7f0a032b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    .line 102
    const v0, 0x7f0a0328

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    .line 103
    const v0, 0x7f0a039e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_GUIDE_TEXT_SIZE:F

    .line 105
    const v0, 0x7f0d001c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BUTTON_FONT_COLOR:I

    .line 106
    const v0, 0x7f0a025f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    .line 107
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X:I

    .line 109
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v1, 0x7f0a0016

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    .line 110
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y:I

    .line 111
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0a03aa

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    const v1, 0x7f0a03a8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y_FOR_STICKER_BUTTON:I

    .line 112
    const v0, 0x7f0a025f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    .line 113
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    .line 115
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    .line 117
    const v0, 0x7f0a0016

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    .line 118
    const v0, 0x7f0a03aa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    .line 119
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_POS_X:I

    .line 121
    const v0, 0x7f0a03a9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_POS_Y:I

    .line 122
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    .line 123
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 124
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 125
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 126
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 127
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 128
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 131
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 132
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    .line 133
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 134
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceLength:I

    .line 135
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    .line 136
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    .line 137
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    .line 138
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    .line 139
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    .line 141
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    .line 142
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    .line 143
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerGuideText:Z

    .line 144
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    .line 145
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    .line 146
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerToast:Z

    .line 147
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 148
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    .line 149
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    .line 150
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    .line 151
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    .line 152
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 155
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    .line 158
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    .line 160
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Selfie$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 191
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setHRMSensor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/Selfie;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/shootingmode/Selfie;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerToast:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Selfie;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceEffect()V

    return-void
.end method

.method private hideBeautyMenuButton()V
    .locals 2

    .prologue
    .line 1294
    const-string v0, "Selfie"

    const-string v1, "hideBeautyMenuButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1298
    :cond_0
    return-void
.end method

.method private hideScreenFlash()V
    .locals 2

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideScreenFlashAnimation()V

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1308
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1309
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    .line 1311
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1313
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    .line 1316
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    .line 1317
    return-void
.end method

.method private hideStickerFaceDetectionIndicator()V
    .locals 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1324
    :cond_0
    return-void
.end method

.method private hideStickerShortcutButton()V
    .locals 2

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1330
    :cond_0
    return-void
.end method

.method private hideStickerToast()V
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    .line 1337
    :cond_0
    return-void
.end method

.method private hideVisionIntelligenceButton()V
    .locals 2

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1341
    const-string v0, "Selfie"

    const-string v1, "hideVisionIntelligenceButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1344
    :cond_0
    return-void
.end method

.method private hideVisionIntelligenceEffect()V
    .locals 2

    .prologue
    .line 1347
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    .line 1348
    const-string v0, "Selfie"

    const-string v1, "hideVisionIntelligenceEffect"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideVisionIntelligenceEffect()V

    .line 1351
    :cond_0
    return-void
.end method

.method private isBeautyEnabled()Z
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1355
    :cond_0
    const/4 v0, 0x0

    .line 1357
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    goto :goto_0
.end method

.method private isEffectEditEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1361
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveFaceDetectionIndicator(FF)V
    .locals 1
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->translate(FF)V

    .line 1371
    :cond_0
    return-void
.end method

.method private prepareStickerGuideText(I)V
    .locals 18
    .param p1, "stickerId"    # I

    .prologue
    .line 1374
    const/4 v13, 0x0

    .line 1375
    .local v13, "isMouthEvent":Z
    const/4 v12, 0x0

    .line 1376
    .local v12, "isBlinkEvent":Z
    const/4 v7, 0x0

    .line 1377
    .local v7, "outputString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1378
    .local v11, "eventString":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerInfo(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    move-result-object v17

    .line 1379
    .local v17, "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    move-object/from16 v0, v17

    instance-of v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    if-eqz v1, :cond_0

    .line 1380
    check-cast v17, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    .end local v17    # "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;->sceneType:Ljava/lang/String;

    .line 1383
    :cond_0
    if-eqz v11, :cond_1

    .line 1384
    const-string v1, "open_mouth"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 1385
    const-string v1, "wink"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 1388
    :cond_1
    if-eqz v13, :cond_3

    if-nez v12, :cond_3

    .line 1389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09022e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1398
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    if-nez v1, :cond_6

    .line 1399
    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_GUIDE_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1401
    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BUTTON_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    .line 1402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v15, v1, Landroid/graphics/Rect;->left:I

    .line 1403
    .local v15, "previewLeft":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 1404
    .local v16, "previewRight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    .line 1406
    .local v14, "previewBottom":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const v3, 0x7f0b0059

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0d004b

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    add-int v3, v15, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    add-int v3, v15, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    add-int v3, v15, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_2

    .line 1417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->getAlwaysVisibleOverlayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1419
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1423
    .end local v14    # "previewBottom":I
    .end local v15    # "previewLeft":I
    .end local v16    # "previewRight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1424
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerGuideText:Z

    .line 1425
    return-void

    .line 1390
    :cond_3
    if-eqz v12, :cond_4

    if-nez v13, :cond_4

    .line 1391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09022d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1392
    :cond_4
    if-eqz v13, :cond_5

    if-eqz v12, :cond_5

    .line 1393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09022f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1395
    :cond_5
    const-string v7, " "

    goto/16 :goto_0

    .line 1421
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeStickerFaceDetection()V
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 1432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1435
    :cond_0
    return-void
.end method

.method private removeStickerGuideText()V
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1440
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    .line 1445
    :cond_0
    return-void
.end method

.method private setBeautyAsDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1448
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultBeautyLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlimFaceLevelSync(I)V

    .line 1451
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightLevelSync(I)V

    .line 1452
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEyeEnlargeLevelSync(I)V

    .line 1453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setSkinColorLevelSync(I)V

    .line 1454
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    .line 1456
    :cond_0
    return-void
.end method

.method private setBeautyLevel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1460
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    .line 1461
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlimFaceLevelSync(I)V

    .line 1464
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v0, :cond_1

    .line 1465
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightLevelSync(I)V

    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    if-lez v0, :cond_6

    .line 1467
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 1468
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 1469
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightPostion()V

    .line 1475
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v0, :cond_2

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEyeEnlargeLevelSync(I)V

    .line 1478
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v0, :cond_4

    .line 1479
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    if-lez v0, :cond_4

    .line 1480
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    .line 1483
    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SKINCOLOR:Z

    if-eqz v0, :cond_5

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSkinColorLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSkinColorLevelSync(I)V

    .line 1487
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 1488
    return-void

    .line 1471
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 1472
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    goto :goto_0
.end method

.method private setGestureControl(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1491
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 1496
    :goto_0
    return-void

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto :goto_0
.end method

.method private setHRMSensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1499
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 1504
    :goto_0
    return-void

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setShapeEffectEngine(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1507
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 1508
    if-eqz p1, :cond_1

    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    if-nez v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShapeCorrectionModeChanged(I)V

    .line 1511
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    .line 1519
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShapeCorrectionModeChanged(I)V

    .line 1516
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    goto :goto_0
.end method

.method private showBeautyMenuButton()V
    .locals 2

    .prologue
    .line 1522
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    .line 1523
    const-string v0, "Selfie"

    const-string v1, "showBeautyMenuButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1526
    :cond_0
    return-void
.end method

.method private showExperienceGuideAutoFocusPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1529
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1530
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1531
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_GUIDE_TEXT_FOR_AUTO_FOCUS:Z

    if-eqz v0, :cond_1

    .line 1532
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1533
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1534
    const-string v0, "Selfie"

    const-string v1, "showExperienceGuideAutoFocusPopup"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V

    .line 1536
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;Z)V

    .line 1537
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;Z)V

    .line 1543
    :cond_1
    return-void
.end method

.method private showScreenFlash()V
    .locals 2

    .prologue
    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    .line 1547
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 1548
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startScreenFlashAnimation()V

    .line 1553
    :cond_0
    return-void
.end method

.method private showStickerGuideText()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;->removeMessages(I)V

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1563
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerGuideText:Z

    .line 1564
    return-void
.end method

.method private showStickerShortcutButton()V
    .locals 2

    .prologue
    .line 1567
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1570
    :cond_0
    return-void
.end method

.method private showStickerToast()V
    .locals 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$5;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1584
    return-void
.end method

.method private showVisionIntelligenceButton()V
    .locals 2

    .prologue
    .line 1587
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1588
    const-string v0, "Selfie"

    const-string v1, "showVisionIntelligenceButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1591
    :cond_0
    return-void
.end method

.method private showVisionIntelligenceButtonWithAnimation()V
    .locals 9

    .prologue
    .line 1594
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1595
    const-string v0, "Selfie"

    const-string v1, "showVisionIntelligenceButtonWithAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1597
    .local v8, "animationset":Landroid/view/animation/AnimationSet;
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3fa66666    # 1.3f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Lcom/samsung/android/view/animation/ElasticCustom;

    const v6, 0x3fa66666    # 1.3f

    const v7, 0x3f19999a    # 0.6f

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/view/animation/ElasticCustom;-><init>(FF)V

    const v6, 0x7f0b001b

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1598
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f428f5c    # 0.76f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f428f5c    # 0.76f

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Lcom/samsung/android/view/animation/ElasticCustom;

    const v6, 0x3fa66666    # 1.3f

    const v7, 0x3f19999a    # 0.6f

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/view/animation/ElasticCustom;-><init>(FF)V

    const v6, 0x7f0b001c

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v6

    const v7, 0x7f0b001b

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1599
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1600
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1601
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1604
    .end local v8    # "animationset":Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method private showVisionIntelligencePopup()V
    .locals 2

    .prologue
    .line 1607
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1608
    const-string v0, "Selfie"

    const-string v1, "showVisionIntelligencePopup"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V

    .line 1611
    :cond_0
    return-void
.end method

.method private turnOffSpotLightEffect()Z
    .locals 2

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "SP=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 1615
    const/4 v0, 0x0

    return v0
.end method

.method private updateSpotLightPostion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1620
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightPosition()I

    move-result v0

    .line 1622
    .local v0, "positionType":I
    packed-switch v0, :pswitch_data_0

    .line 1637
    :goto_0
    const-string v1, "Selfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send SpotLight Position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ,  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightPosition(II)V

    .line 1639
    return-void

    .line 1624
    :pswitch_0
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    .line 1625
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    goto :goto_0

    .line 1628
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    .line 1629
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    goto :goto_0

    .line 1632
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    .line 1633
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    goto :goto_0

    .line 1622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSpotLightVI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1642
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 1644
    .local v0, "lastSpotLightState":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v1, :cond_2

    .line 1645
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 1646
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 1647
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    .line 1668
    :cond_1
    :goto_0
    return-void

    .line 1651
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1655
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_4

    .line 1656
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 1661
    :goto_1
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    if-eqz v1, :cond_3

    .line 1662
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setShapeEffectEngine(Z)V

    .line 1664
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    if-nez v1, :cond_1

    .line 1665
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setShapeEffectEngine(Z)V

    goto :goto_0

    .line 1658
    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    .line 1659
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->turnOffSpotLightEffect()Z

    goto :goto_1
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 11
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v10, 0x64

    const/16 v9, 0x81

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 211
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 213
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v3, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v3, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v3, v4, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 220
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 221
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v4, v6, [I

    const/16 v5, 0xaa

    aput v5, v4, v7

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 230
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 232
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setHRMSensor(Z)V

    .line 233
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setGestureControl(Z)V

    .line 235
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v3

    if-ne v3, v6, :cond_10

    .line 242
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 247
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v3

    if-nez v3, :cond_11

    .line 248
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    .line 253
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v3

    if-ne v3, v6, :cond_12

    .line 254
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 259
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v3

    if-ne v3, v6, :cond_13

    .line 260
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    .line 265
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 266
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 267
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    .line 268
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    .line 277
    :cond_2
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setHardwareFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;)V

    .line 278
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 279
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 281
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v3, :cond_3

    .line 282
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    .line 285
    :cond_3
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_15

    .line 286
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x7f

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 287
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x7f

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 289
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x232f

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 290
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x232f

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 298
    :cond_5
    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v8, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 299
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v3, :cond_6

    .line 300
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setRelightEventListener(Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;)V

    .line 301
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v4, 0x6f

    invoke-interface {v3, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 302
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v4, 0x77

    invoke-interface {v3, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 303
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v9, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 304
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 306
    :cond_6
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v3, :cond_16

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v3, :cond_16

    .line 307
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v9}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 308
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v9}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 316
    :cond_7
    :goto_7
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v3, :cond_a

    .line 317
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    .line 318
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v10}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 319
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v10}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 320
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 321
    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 324
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :cond_8
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    .line 326
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 327
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setStickerEventListener(Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;)V

    .line 328
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 355
    :cond_9
    :goto_8
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v4, 0xbe

    invoke-interface {v3, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 358
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showExperienceGuideAutoFocusPopup()V

    .line 360
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v3, :cond_e

    .line 361
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->setVisionIntelligenceEffectAnimationListener(Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;)V

    .line 362
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isInteractionGuideEnabled(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 363
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->isVisionIntelligenceAnimationCompleted()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 364
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 365
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    .line 370
    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 371
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 372
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    .line 373
    return-void

    .line 223
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 225
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    goto/16 :goto_0

    .line 244
    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_1

    .line 250
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    goto/16 :goto_2

    .line 256
    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_3

    .line 262
    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    goto/16 :goto_4

    .line 270
    :cond_14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    .line 271
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyAsDefault()V

    .line 272
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isEffectEditEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto/16 :goto_5

    .line 293
    :cond_15
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v8}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 294
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v8}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_6

    .line 311
    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x82

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 312
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x82

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_7

    .line 330
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 331
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-eqz v3, :cond_17

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    if-nez v3, :cond_17

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerFaceDetectionIndicator()V

    .line 334
    :cond_17
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v3

    const/16 v4, 0x2710

    if-eq v3, v4, :cond_9

    .line 335
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v3

    const/16 v4, 0x232d

    if-ne v3, v4, :cond_18

    .line 336
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showRandomStickerButton()V

    .line 338
    :cond_18
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v3

    const/16 v4, 0x232d

    if-ne v3, v4, :cond_19

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v2

    .line 339
    .local v2, "stickerId":I
    :goto_9
    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 340
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showStickerSoundMuteButton()V

    .line 344
    :goto_a
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Selfie;->prepareStickerGuideText(I)V

    goto/16 :goto_8

    .line 338
    .end local v2    # "stickerId":I
    :cond_19
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v2

    goto :goto_9

    .line 342
    .restart local v2    # "stickerId":I
    :cond_1a
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto :goto_a

    .line 349
    .end local v2    # "stickerId":I
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 350
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    goto/16 :goto_8

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 223
    :array_0
    .array-data 4
        0xaa
        0xc
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 379
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBurstCaptureCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    const-string v0, "Selfie"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 397
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 400
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    .line 403
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    .line 404
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFrontSensorMirror(I)V

    .line 410
    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 414
    const-string v0, "Selfie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstCaptureProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez p1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 419
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 2

    .prologue
    .line 423
    const-string v0, "Selfie"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 429
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 431
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    .line 432
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "FA=0,LE=0,TO=0,RI=0,BO=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "SP=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 1
    .param p1, "lastImageNum"    # I

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

.method public onBurstStringProgress([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 7
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/16 v6, 0x232d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 461
    const-string v1, "Selfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraSettingsChanged menuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " modeid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sparse-switch p1, :sswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 466
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyAsDefault()V

    goto :goto_0

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    .line 471
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto :goto_0

    .line 476
    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerToast:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerToast()V

    .line 479
    :cond_2
    if-ne p2, v6, :cond_4

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showRandomStickerButton()V

    .line 484
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 524
    :cond_3
    :goto_2
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto :goto_0

    .line 482
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideRandomStickerButton()V

    goto :goto_1

    .line 486
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 487
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 488
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    .line 489
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    .line 490
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 492
    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerToast:Z

    .line 493
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerFaceDetectionIndicator()V

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto :goto_2

    .line 498
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 499
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyAsDefault()V

    .line 500
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    .line 501
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    .line 502
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v0

    .line 503
    .local v0, "stickerId":I
    :goto_3
    const/16 v1, 0x2710

    if-eq v0, v1, :cond_3

    .line 504
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showStickerSoundMuteButton()V

    .line 509
    :goto_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->prepareStickerGuideText(I)V

    goto :goto_2

    .line 502
    .end local v0    # "stickerId":I
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v0

    goto :goto_3

    .line 507
    .restart local v0    # "stickerId":I
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto :goto_4

    .line 514
    .end local v0    # "stickerId":I
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 515
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyAsDefault()V

    .line 516
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerFaceDetectionIndicator()V

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->setStickerDefaultPosition(II)V

    goto/16 :goto_2

    .line 527
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto/16 :goto_0

    .line 530
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_0

    .line 533
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_0

    .line 537
    :sswitch_5
    const/4 v1, 0x4

    if-ne p2, v1, :cond_9

    .line 538
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    .line 542
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto/16 :goto_0

    .line 540
    :cond_9
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    goto :goto_5

    .line 545
    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightPostion()V

    goto/16 :goto_0

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x6f -> :sswitch_2
        0x77 -> :sswitch_6
        0x7d -> :sswitch_3
        0x81 -> :sswitch_5
        0xaa -> :sswitch_4
        0xbe -> :sswitch_1
    .end sparse-switch

    .line 484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 6
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v5, 0x7530

    const/16 v4, 0x1f40

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 555
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I

    move-result-object v0

    .line 557
    .local v0, "effectPreviewFPSRange":[I
    aget v1, v0, v2

    aget v2, v0, v3

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 558
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 571
    .end local v0    # "effectPreviewFPSRange":[I
    :goto_0
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeValueForISPset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 572
    return-void

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_3

    .line 560
    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I

    move-result-object v0

    .line 561
    .restart local v0    # "effectPreviewFPSRange":[I
    aget v1, v0, v2

    aget v2, v0, v3

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 562
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 563
    .end local v0    # "effectPreviewFPSRange":[I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 564
    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 565
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 567
    :cond_4
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 568
    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 576
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 577
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 579
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    .line 580
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

    const v4, 0x7f02019f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p3, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_6

    .line 591
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X:I

    int-to-float v2, v1

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y_FOR_STICKER_BUTTON:I

    int-to-float v3, v1

    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020009

    const v7, 0x7f02000a

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    .line 597
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f09008e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 598
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v0, :cond_7

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 603
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 607
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 612
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.visionintelligence"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 637
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    .line 639
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_a

    .line 641
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f02028a

    const v7, 0x7f02028b

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    .line 647
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f09027f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$3;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 684
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 685
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    .line 686
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    if-eqz v0, :cond_3

    .line 687
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f020018

    const v7, 0x7f020019

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090168

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x2331

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$4;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 707
    :cond_3
    return-void

    .line 579
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 591
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    goto/16 :goto_1

    .line 594
    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020009

    const v7, 0x7f02000a

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_2

    .line 601
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    goto/16 :goto_3

    .line 610
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 637
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 644
    :cond_a
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f02028a

    const v7, 0x7f02028b

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_6

    .line 685
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_7
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/16 v3, 0x910

    .line 712
    const-string v2, "sef_file_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    const-string v1, "Front_Cam_Selfie_Info"

    .line 717
    .local v1, "keyName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v3, 0x910

    const/4 v4, 0x1

    invoke-static {p2, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Selfie"

    const-string v3, "error while addSEFData in Selfie"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onEngineStateChanged(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .prologue
    const/4 v1, 0x0

    .line 727
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne p1, v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 730
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    goto :goto_0

    .line 734
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    goto :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onFaceAlignmentData([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    const/4 v5, 0x1

    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, "index":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v0, v3, v4

    .line 748
    .local v0, "faceCount":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    if-lez v0, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerGuideText:Z

    if-nez v3, :cond_2

    .line 753
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerGuideText()V

    .line 756
    :cond_2
    if-lez v0, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    if-nez v3, :cond_4

    .line 757
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerFaceDetectionIndicator()V

    .line 758
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    .line 764
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 765
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    .line 766
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v5, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(I[B)V

    goto :goto_0

    .line 759
    :cond_4
    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-nez v3, :cond_3

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerFaceDetectionIndicator()V

    .line 761
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    goto :goto_1
.end method

.method public onHRMShutterDetected()V
    .locals 2

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 773
    const-string v0, "Selfie"

    const-string v1, "onHRMShutterDetected returned - BurstCapturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_0
    return-void

    .line 776
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    goto :goto_0
.end method

.method public onHardwareFaceDetection([Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "faces"    # [Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 781
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-nez v4, :cond_2

    .line 782
    if-eqz p1, :cond_0

    array-length v4, p1

    if-ge v4, v5, :cond_3

    .line 783
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    if-eqz v4, :cond_1

    .line 784
    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    .line 785
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 787
    :cond_1
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceLength:I

    .line 788
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v5, "FA=0,LE=0,TO=0,RI=0,BO=0"

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 811
    :cond_2
    :goto_0
    return-void

    .line 790
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    if-nez v4, :cond_4

    .line 791
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    .line 792
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 794
    :cond_4
    array-length v4, p1

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v4

    if-ne v4, v5, :cond_7

    .line 795
    const/4 v1, 0x0

    .line 796
    .local v1, "face_area":I
    const/4 v2, 0x0

    .line 798
    .local v2, "face_index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_6

    .line 799
    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int v0, v4, v5

    .line 800
    .local v0, "area":I
    if-le v0, v1, :cond_5

    .line 801
    move v1, v0

    .line 802
    move v2, v3

    .line 798
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 805
    .end local v0    # "area":I
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",LE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",TO="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",RI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",BO="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 808
    .end local v1    # "face_area":I
    .end local v2    # "face_index":I
    .end local v3    # "i":I
    :cond_7
    array-length v4, p1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceLength:I

    goto/16 :goto_0
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 4
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 815
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 817
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 818
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerFaceDetectionIndicator()V

    goto :goto_0

    .line 824
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_1

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopAutoFilter()V

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopThumbnailPreviewCallback()V

    .line 831
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 832
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    goto :goto_0

    .line 834
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    .line 835
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isEffectEditEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 840
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 841
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    goto :goto_0

    .line 838
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_1

    .line 846
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 847
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    .line 848
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    .line 849
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    .line 851
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    .line 852
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    goto :goto_0

    .line 855
    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 856
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    .line 858
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    .line 859
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    goto/16 :goto_0

    .line 815
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x7f -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 869
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 8

    .prologue
    const/16 v7, 0x82

    const/16 v6, 0x8

    const/16 v5, 0x81

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 874
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 876
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 880
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 882
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    .line 885
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1a

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 886
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1a

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 887
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 888
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 889
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xbb

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 890
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xbb

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 892
    :cond_4
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setHRMSensor(Z)V

    .line 893
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setGestureControl(Z)V

    .line 896
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    .line 897
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 898
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 899
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    .line 901
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_5

    .line 902
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    .line 903
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    .line 906
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setHardwareFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;)V

    .line 907
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 908
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    .line 910
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v1, :cond_7

    .line 911
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    if-eqz v1, :cond_6

    .line 912
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideScreenFlash()V

    .line 914
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    .line 917
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v6, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 919
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_8

    .line 920
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setRelightEventListener(Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;)V

    .line 921
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x6f

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 922
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x77

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 923
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v5, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 926
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 927
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    .line 930
    :cond_9
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_f

    .line 931
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x7f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 932
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x7f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 934
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x232f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 935
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x232f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 943
    :cond_b
    :goto_0
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v1, :cond_10

    .line 944
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 945
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 946
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 954
    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    .line 955
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    .line 956
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceEffect()V

    .line 958
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v1, :cond_e

    .line 959
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    .line 960
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 961
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    .line 962
    .local v0, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 963
    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 965
    .end local v0    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    .line 966
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 967
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 968
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setStickerEventListener(Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;)V

    .line 969
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerToast()V

    .line 970
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    .line 971
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideRandomStickerButton()V

    .line 972
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    .line 973
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->removeStickerGuideText()V

    .line 974
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->removeStickerFaceDetection()V

    .line 975
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0xbe

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 978
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 979
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 980
    return-void

    .line 938
    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 939
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_0

    .line 949
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 950
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 951
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 989
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 999
    :cond_0
    :goto_0
    return v0

    .line 991
    :pswitch_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-nez v2, :cond_0

    .line 994
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 995
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    :cond_1
    move v0, v1

    .line 997
    goto :goto_0

    .line 989
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuCreated(ILcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 0
    .param p1, "menuId"    # I
    .param p2, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 1004
    sparse-switch p1, :sswitch_data_0

    .line 1021
    :goto_0
    return-void

    .line 1006
    :sswitch_0
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 1007
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    .line 1010
    :sswitch_1
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    .line 1013
    :sswitch_2
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    .line 1016
    :sswitch_3
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    .line 1004
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x7f -> :sswitch_2
        0x81 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 1025
    const-string v0, "Selfie"

    const-string v1, "onMenuSelected"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v0, 0x0

    return v0
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 7
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
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 1032
    const-string v0, "Z021"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_0

    .line 1034
    const-string v0, "Z112"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    const-string v0, "Z113"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    const-string v0, "Z114"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    :cond_0
    const-string v0, "Z029"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    const-string v0, "G018"

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceLength:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, v6, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAASManagerAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    const-string v0, "G017"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAASBrightnessValue()J

    move-result-wide v2

    invoke-static {v0, v6, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    :cond_1
    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 1047
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    return v0
.end method

.method public onRelightTransformDataUpdated([Lcom/samsung/android/camera/core/SemCamera$TransformData;)V
    .locals 10
    .param p1, "transformData"    # [Lcom/samsung/android/camera/core/SemCamera$TransformData;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1063
    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v2

    if-lez v2, :cond_1

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .local v1, "relightTransformData":Ljava/lang/StringBuilder;
    const-string v2, "SP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 1067
    const-string v2, ";P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1068
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1069
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1071
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1072
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1073
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1074
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1075
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1076
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1077
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1078
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1079
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1080
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1081
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1082
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1083
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->faceAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    .line 1084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->lightIntensity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1086
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    .line 1087
    const-string v2, "Selfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relightTransformData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    .end local v0    # "i":I
    .end local v1    # "relightTransformData":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 1090
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v3, "SP=0"

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onScreenFlashStarted()V
    .locals 0

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showScreenFlash()V

    .line 1097
    return-void
.end method

.method public onScreenFlashStopped()V
    .locals 0

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideScreenFlash()V

    .line 1102
    return-void
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 1106
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1108
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1109
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    if-nez v0, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerFaceDetectionIndicator()V

    goto :goto_0

    .line 1115
    :sswitch_1
    const-string v0, "Selfie"

    const-string v1, "onShow mEffectLevelSliderMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    goto :goto_0

    .line 1106
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x232f -> :sswitch_1
    .end sparse-switch
.end method

.method public onShutterKeyLongPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1125
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isBurstCaptureAvailableFPS()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isLowLightDetected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 1128
    const/4 v0, 0x1

    .line 1134
    :cond_0
    :goto_0
    return v0

    .line 1130
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f090121

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 1139
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 2
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 1144
    const-string v0, "Engine"

    const-string v1, "onShutterKeyReleased selfie"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 1149
    :cond_0
    const/4 v0, 0x1

    .line 1153
    :goto_0
    return v0

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 1153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    const/4 v2, -0x1

    .line 1158
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1163
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    .line 1165
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    .line 1166
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    goto :goto_0

    .line 1170
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 1172
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1175
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1178
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1179
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    .line 1181
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    .line 1182
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    goto :goto_0

    .line 1185
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1188
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1189
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    .line 1191
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    .line 1192
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    goto :goto_0

    .line 1161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 1201
    const-string v0, "Selfie"

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

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 1208
    :cond_1
    if-nez p1, :cond_3

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1227
    :cond_3
    :goto_0
    return-void

    .line 1217
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 1222
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    .line 1223
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    .line 1224
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    goto :goto_0
.end method

.method public onVisionIntelligenceEffectAnimationComplete()V
    .locals 2

    .prologue
    .line 1231
    const-string v0, "Selfie"

    const-string v1, "onVisionIntelligenceEffectAnimationComplete()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButtonWithAnimation()V

    .line 1233
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligencePopup()V

    .line 1234
    return-void
.end method

.method public showStickerFaceDetectionIndicator()V
    .locals 19

    .prologue
    .line 1237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 1238
    .local v17, "previewLeft":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 1239
    .local v18, "previewRight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 1240
    .local v16, "previewBottom":I
    add-int v1, v17, v18

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v15, v1, v2

    .line 1242
    .local v15, "faceDetectionIndicatorPosX":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    invoke-static {v1, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 1243
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    sub-float v1, v15, v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Selfie;->moveFaceDetectionIndicator(FF)V

    .line 1244
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    .line 1249
    :goto_0
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    .line 1251
    .local v4, "mFaceDetectionIndicatorPosY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_1

    .line 1253
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1256
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const v6, 0x7f0200ac

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    .line 1259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1263
    new-instance v5, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 1264
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090171

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 1265
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    .line 1266
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BUTTON_FONT_COLOR:I

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    .line 1267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const v3, 0x7f0b0025

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x7f0d001d

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    add-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_0

    .line 1286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->getAlwaysVisibleOverlayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1288
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1290
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1291
    return-void

    .line 1246
    .end local v4    # "mFaceDetectionIndicatorPosY":F
    :cond_2
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    goto/16 :goto_0
.end method