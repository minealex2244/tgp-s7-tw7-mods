.class public Lcom/sec/android/app/camera/shootingmode/Auto;
.super Ljava/lang/Object;
.source "Auto.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;
.implements Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;
.implements Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_BEAUTY_LEVEL_FOR_FACE_AR:I = 0x5

.field private static final DELAY_TIME_TO_HIDE_STICKER_GUIDE_TEXT:I = 0xbb8

.field private static final LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

.field private static final LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

.field private static final MESSAGE_AUTO_HIDE_STICKER_TEXT:I = 0x1

.field private static final QR_CODE_CANT_DECODE:I = -0x7

.field private static final QR_CODE_ERROR_CORRECTION_FAILED:I = -0x2

.field private static final QR_CODE_INCOMPATIBLE_IMAGE_BUFFER:I = -0x6

.field private static final QR_CODE_SCAN_ERROR:I = -0x1

.field private static final QR_CODE_UNRECOGNIZED_FORMAT:I = -0x4

.field private static final QR_CODE_UNRECOGNIZED_MODE:I = -0x3

.field private static final QR_CODE_UNRECOGNIZED_VERSION:I = -0x5

.field protected static final TAG:Ljava/lang/String; = "Auto"

.field private static final URL_PREFIX:[Ljava/lang/String;


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

.field private mAutoMsgHandler:Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mErrorToast:Landroid/widget/Toast;

.field private mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

.field private mFaceDetectionIndicatorPosX:F

.field private mFaceDetectionText:Lcom/samsung/android/glview/GLText;

.field private mIsAlreadyHideFaceDetection:Z

.field private mIsAlreadyShowFaceDetection:Z

.field private mIsAlreadyShowStickerGuideText:Z

.field private mIsAlreadyShowStickerToast:Z

.field private mIsBeautySupported:Z

.field private mIsBurstCapturing:Z

.field private mIsQRCodeDetectionEnabled:Z

.field private mIsStickerShortcutSupported:Z

.field private mIsVisionIntelligenceSupported:Z

.field private mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

.field private mStickerGuideText:Lcom/samsung/android/glview/GLText;

.field private mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

.field private mStickerToast:Landroid/widget/Toast;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/Auto;->URL_PREFIX:[Ljava/lang/String;

    .line 91
    const v0, 0x7f0a02a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Auto;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

    .line 92
    const v0, 0x7f0a0055

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Auto;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const v6, 0x7f0a0016

    const v5, 0x7f0a0261

    const v4, 0x7f0a0012

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const v0, 0x7f0a0329

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    .line 96
    const v0, 0x7f0a032e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    .line 97
    const v0, 0x7f0a032b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_HEIGHT:F

    .line 98
    const v0, 0x7f0a032a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_IMAGE_WIDTH:F

    .line 99
    const v0, 0x7f0a032c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    .line 100
    const v0, 0x7f0a032d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_SIZE:F

    .line 101
    const v0, 0x7f0a03a1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_GUIDE_TEXT_SIZE:F

    .line 102
    const v0, 0x7f0d001c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BUTTON_FONT_COLOR:I

    .line 104
    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_WIDTH:I

    .line 105
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_POS_X:I

    .line 106
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_POS_Y:I

    .line 107
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0a03ad

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    const v1, 0x7f0a03ab

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_POS_Y_FOR_STICKER_BUTTON:I

    .line 108
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    .line 109
    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    .line 110
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    .line 112
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    .line 114
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    .line 115
    const v0, 0x7f0a03ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    .line 116
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_SHORTCUT_BUTTON_POS_X:I

    .line 118
    const v0, 0x7f0a03ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_SHORTCUT_BUTTON_POS_Y:I

    .line 119
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 120
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 121
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 122
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 123
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 126
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    .line 127
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    .line 128
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    .line 129
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 130
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 131
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    .line 132
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    .line 133
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    .line 134
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerToast:Landroid/widget/Toast;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionIndicatorPosX:F

    .line 136
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowFaceDetection:Z

    .line 137
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowStickerToast:Z

    .line 138
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyHideFaceDetection:Z

    .line 139
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowStickerGuideText:Z

    .line 140
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAutoMsgHandler:Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;

    .line 142
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 144
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    .line 145
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    .line 148
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsVisionIntelligenceSupported:Z

    .line 151
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsStickerShortcutSupported:Z

    .line 154
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 155
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Auto;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideBeautyMenuButton()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/shootingmode/Auto;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowStickerToast:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Auto;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideVisionIntelligenceButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Auto;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideVisionIntelligenceEffect()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Auto;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideShortcutStickerButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Auto;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/Auto;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/shootingmode/Auto;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Auto;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private checkQRDetectCondition()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1125
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    const-string v1, "Auto"

    const-string v2, "checkQRDetectCondition return isPausing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :goto_0
    return v0

    .line 1129
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1130
    const-string v1, "Auto"

    const-string v2, "checkQRDetectCondition return isStartPreview"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1133
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1134
    const-string v1, "Auto"

    const-string v2, "checkQRDetectCondition return shutter key is already pressed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1138
    :cond_3
    const-string v1, "Auto"

    const-string v2, "checkQRDetectCondition return recording"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1141
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hideBeautyMenuButton()V
    .locals 2

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    .line 1146
    const-string v0, "Auto"

    const-string v1, "hideBeautyMenuButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1149
    :cond_0
    return-void
.end method

.method private hideQRButton()V
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->hideQRButton()V

    .line 1155
    :cond_0
    return-void
.end method

.method private hideQRErrorToast()V
    .locals 2

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isShowingQRErrorToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1160
    const-string v0, "Auto"

    const-string v1, "onQRErrorToast cancel"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    .line 1165
    :cond_0
    return-void
.end method

.method private hideShortcutStickerButton()V
    .locals 2

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsStickerShortcutSupported:Z

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1171
    :cond_0
    return-void
.end method

.method private hideStickerFaceDetectionIndicator()V
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1177
    :cond_0
    return-void
.end method

.method private hideStickerToast()V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerToast:Landroid/widget/Toast;

    .line 1184
    :cond_0
    return-void
.end method

.method private hideVisionIntelligenceButton()V
    .locals 2

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    const-string v0, "Auto"

    const-string v1, "hideVisionIntelligenceButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1191
    :cond_0
    return-void
.end method

.method private hideVisionIntelligenceEffect()V
    .locals 2

    .prologue
    .line 1194
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    .line 1195
    const-string v0, "Auto"

    const-string v1, "hideVisionIntelligenceEffect"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideVisionIntelligenceEffect()V

    .line 1198
    :cond_0
    return-void
.end method

.method private isBeautyEnabled()Z
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    :cond_0
    const/4 v0, 0x0

    .line 1204
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    goto :goto_0
.end method

.method private isEffectEditEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1208
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isShowingQRErrorToast()Z
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportQRCode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1219
    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Auto;->URL_PREFIX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Auto;->URL_PREFIX:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private moveFaceDetectionIndicator(FF)V
    .locals 1
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->translate(FF)V

    .line 1226
    :cond_0
    return-void
.end method

.method private onQRErrorToast(I)V
    .locals 3
    .param p1, "errCase"    # I

    .prologue
    const/4 v2, 0x0

    .line 1229
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->checkQRDetectCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1232
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRErrorToast()V

    .line 1233
    packed-switch p1, :pswitch_data_0

    .line 1250
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Auto$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Auto$4;-><init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1235
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0901ee

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    goto :goto_1

    .line 1242
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0901ea

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    goto :goto_1

    .line 1245
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0901eb

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;

    goto :goto_1

    .line 1233
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareStickerGuideText(I)V
    .locals 18
    .param p1, "stickerId"    # I

    .prologue
    .line 1261
    const/4 v13, 0x0

    .line 1262
    .local v13, "isMouthEvent":Z
    const/4 v12, 0x0

    .line 1263
    .local v12, "isBlinkEvent":Z
    const/4 v7, 0x0

    .line 1264
    .local v7, "outputString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1265
    .local v11, "eventString":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerInfo(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    move-result-object v17

    .line 1266
    .local v17, "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    move-object/from16 v0, v17

    instance-of v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    if-eqz v1, :cond_0

    .line 1267
    check-cast v17, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    .end local v17    # "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;->sceneType:Ljava/lang/String;

    .line 1270
    :cond_0
    if-eqz v11, :cond_1

    .line 1271
    const-string v1, "open_mouth"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 1272
    const-string v1, "wink"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 1275
    :cond_1
    if-eqz v13, :cond_3

    if-nez v12, :cond_3

    .line 1276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090231

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1285
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    if-nez v1, :cond_6

    .line 1286
    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_GUIDE_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1288
    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->BUTTON_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    .line 1289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v15, v1, Landroid/graphics/Rect;->left:I

    .line 1290
    .local v15, "previewLeft":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 1291
    .local v16, "previewRight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    .line 1293
    .local v14, "previewBottom":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const v3, 0x7f0b0059

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0d004b

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    add-int v3, v15, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_HEIGHT:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    add-int v3, v15, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    add-int v3, v15, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_2

    .line 1304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->getAlwaysVisibleOverlayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1306
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1310
    .end local v14    # "previewBottom":I
    .end local v15    # "previewLeft":I
    .end local v16    # "previewRight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1311
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowStickerGuideText:Z

    .line 1312
    return-void

    .line 1277
    :cond_3
    if-eqz v12, :cond_4

    if-nez v13, :cond_4

    .line 1278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090230

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1279
    :cond_4
    if-eqz v13, :cond_5

    if-eqz v12, :cond_5

    .line 1280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1282
    :cond_5
    const-string v7, " "

    goto/16 :goto_0

    .line 1308
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeStickerFaceDetection()V
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1322
    :cond_0
    return-void
.end method

.method private removeStickerGuideText()V
    .locals 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    .line 1329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    .line 1332
    :cond_0
    return-void
.end method

.method private setBeautyLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    .line 1338
    :cond_0
    return-void
.end method

.method private showBeautyMenuButton()V
    .locals 2

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    .line 1342
    const-string v0, "Auto"

    const-string v1, "showBeautyMenuButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1345
    :cond_0
    return-void
.end method

.method private showStickerFaceDetectionIndicator()V
    .locals 19

    .prologue
    .line 1348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 1349
    .local v17, "previewLeft":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 1350
    .local v18, "previewRight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 1351
    .local v16, "previewBottom":I
    add-int v1, v17, v18

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v15, v1, v2

    .line 1353
    .local v15, "faceDetectionIndicatorPosX":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionIndicatorPosX:F

    invoke-static {v1, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 1354
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionIndicatorPosX:F

    sub-float v1, v15, v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Auto;->moveFaceDetectionIndicator(FF)V

    .line 1355
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionIndicatorPosX:F

    .line 1360
    :goto_0
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    .line 1362
    .local v4, "mFaceDetectionIndicatorPosY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_1

    .line 1364
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionIndicatorPosX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1367
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const v6, 0x7f0200ac

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    .line 1370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1374
    new-instance v5, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 1375
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090171

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1376
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->BUTTON_FONT_COLOR:I

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    .line 1377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const v3, 0x7f0b0025

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x7f0d001d

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_IMAGE_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_IMAGE_WIDTH:F

    add-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_GROUP_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->FACE_DETECTION_TEXT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_0

    .line 1396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->getAlwaysVisibleOverlayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1398
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1400
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1401
    return-void

    .line 1357
    .end local v4    # "mFaceDetectionIndicatorPosY":F
    :cond_2
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/shootingmode/Auto;->mFaceDetectionIndicatorPosX:F

    goto/16 :goto_0
.end method

.method private showStickerGuideText()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1404
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAutoMsgHandler:Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAutoMsgHandler:Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;->removeMessages(I)V

    .line 1410
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAutoMsgHandler:Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1411
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowStickerGuideText:Z

    .line 1412
    return-void
.end method

.method private showStickerShortcutButton()V
    .locals 2

    .prologue
    .line 1415
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsStickerShortcutSupported:Z

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1418
    :cond_0
    return-void
.end method

.method private showStickerToast()V
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Auto$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Auto$5;-><init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1432
    return-void
.end method

.method private showVisionIntelligenceButton()V
    .locals 2

    .prologue
    .line 1435
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1436
    const-string v0, "Auto"

    const-string v1, "showVisionIntelligenceButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1439
    :cond_0
    return-void
.end method

.method private showVisionIntelligenceButtonWithAnimation()V
    .locals 9

    .prologue
    .line 1442
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1443
    const-string v0, "Auto"

    const-string v1, "showVisionIntelligenceButtonWithAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1445
    .local v8, "animationset":Landroid/view/animation/AnimationSet;
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3fa66666    # 1.3f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

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

    .line 1446
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f428f5c    # 0.76f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f428f5c    # 0.76f

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

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

    .line 1447
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1449
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1450
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1452
    .end local v8    # "animationset":Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method private showVisionIntelligencePopup()V
    .locals 2

    .prologue
    .line 1455
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1456
    const-string v0, "Auto"

    const-string v1, "showVisionIntelligencePopup"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V

    .line 1459
    :cond_0
    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 9
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v8, 0x12

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 175
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v3, v4, [I

    aput v7, v3, v5

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 192
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x200

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 198
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    if-ne v2, v4, :cond_13

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 210
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v2

    if-nez v2, :cond_14

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    .line 216
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    if-ne v2, v4, :cond_15

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 224
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v2

    if-ne v2, v4, :cond_17

    .line 225
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    .line 230
    :goto_4
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 231
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 233
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v2, :cond_3

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setQRCodeDetectEventListener(Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;)V

    .line 235
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->startQRCodeDetection()V

    .line 238
    :cond_3
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_5

    .line 239
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x7f

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x7f

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 243
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x232f

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x232f

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 248
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v3, 0x8

    invoke-interface {v2, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v3, 0x137

    invoke-interface {v2, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 251
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    if-eqz v2, :cond_8

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 253
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    .line 254
    .local v0, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 255
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 258
    .end local v0    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x71

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v3, 0x71

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 262
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyMode(I)V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBeautyListener(Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;)V

    .line 266
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 268
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showBeautyMenuButton()V

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyLevel()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    .line 270
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 279
    :cond_9
    :goto_5
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v2, :cond_c

    .line 280
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerShortcutButton()V

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    .line 283
    .restart local v0    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 284
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 287
    .end local v0    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :cond_a
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mAutoMsgHandler:Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setStickerEventListener(Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;)V

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 318
    :cond_b
    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v3, 0xbe

    invoke-interface {v2, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 320
    :cond_c
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsVisionIntelligenceSupported:Z

    if-eqz v2, :cond_10

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->setVisionIntelligenceEffectAnimationListener(Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;)V

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isInteractionGuideEnabled(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 323
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->isVisionIntelligenceAnimationCompleted()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 324
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 325
    :cond_f
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showVisionIntelligenceButton()V

    .line 329
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 330
    return-void

    .line 181
    :cond_11
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WIDE_TELE_DUAL_MODE:Z

    if-eqz v2, :cond_12

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 187
    :goto_7
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    goto/16 :goto_0

    .line 184
    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto :goto_7

    .line 207
    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_1

    .line 213
    :cond_14
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    goto/16 :goto_2

    .line 218
    :cond_15
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_AUTO_HDR_LITE:Z

    if-eqz v2, :cond_16

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_3

    .line 221
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_3

    .line 227
    :cond_17
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    goto/16 :goto_4

    .line 272
    :cond_18
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideBeautyMenuButton()V

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultBackBeautyLevel()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    .line 274
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isEffectEditEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 275
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto/16 :goto_5

    .line 293
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 294
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowFaceDetection:Z

    if-eqz v2, :cond_19

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyHideFaceDetection:Z

    if-nez v2, :cond_19

    .line 295
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerFaceDetectionIndicator()V

    .line 297
    :cond_19
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v2

    const/16 v3, 0x2710

    if-eq v2, v3, :cond_b

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v2

    const/16 v3, 0x232d

    if-ne v2, v3, :cond_1a

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showRandomStickerButton()V

    .line 301
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v2

    const/16 v3, 0x232d

    if-ne v2, v3, :cond_1b

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v1

    .line 302
    .local v1, "stickerId":I
    :goto_8
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 303
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showStickerSoundMuteButton()V

    .line 307
    :goto_9
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->prepareStickerGuideText(I)V

    goto/16 :goto_6

    .line 301
    .end local v1    # "stickerId":I
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    goto :goto_8

    .line 305
    .restart local v1    # "stickerId":I
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto :goto_9

    .line 312
    .end local v1    # "stickerId":I
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 313
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    goto/16 :goto_6

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 182
    :array_0
    .array-data 4
        0x3
        0xb1
        0xc
    .end array-data

    .line 184
    :array_1
    .array-data 4
        0x3
        0xc
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 336
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRButton()V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBeautySavingProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 351
    const-string v0, "Auto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeautySavingProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-nez p1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public onBurstCaptureCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string v0, "Auto"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showOneHandZoomGuide()V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 371
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 373
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showBeautyMenuButton()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showVisionIntelligenceButton()V

    .line 377
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerShortcutButton()V

    .line 379
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startQRCodeDetection()V

    .line 382
    :cond_1
    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 386
    const-string v0, "Auto"

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

    .line 387
    if-nez p1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 391
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 2

    .prologue
    .line 395
    const-string v0, "Auto"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideOneHandZoomGuide()V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideTouchEVSlider()V

    .line 403
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 405
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideBeautyMenuButton()V

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideVisionIntelligenceButton()V

    .line 408
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideShortcutStickerButton()V

    .line 410
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopQRCodeDetection()V

    .line 412
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRButton()V

    .line 414
    :cond_1
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 1
    .param p1, "lastImageNum"    # I

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 423
    const-string v0, "Auto"

    const-string v1, "onBurstCaptureThumbnailTaken"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 425
    return-void
.end method

.method public onBurstStringProgress([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/16 v4, 0x232d

    const/4 v3, 0x0

    .line 434
    sparse-switch p1, :sswitch_data_0

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 437
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultBeautyLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    goto :goto_0

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    goto :goto_0

    .line 446
    :sswitch_1
    if-nez p2, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showBeautyMenuButton()V

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    .line 451
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showVisionIntelligenceButton()V

    goto :goto_0

    .line 455
    :sswitch_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowStickerToast:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerToast()V

    .line 458
    :cond_3
    if-ne p2, v4, :cond_5

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showRandomStickerButton()V

    .line 463
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 465
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 466
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 467
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showBeautyMenuButton()V

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    .line 470
    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowStickerToast:Z

    .line 471
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideStickerFaceDetectionIndicator()V

    .line 472
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    .line 473
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto/16 :goto_0

    .line 461
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideRandomStickerButton()V

    goto :goto_1

    .line 476
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 477
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v0

    .line 480
    .local v0, "stickerId":I
    :goto_2
    const/16 v1, 0x2710

    if-eq v0, v1, :cond_0

    .line 481
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 482
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showStickerSoundMuteButton()V

    .line 486
    :goto_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->prepareStickerGuideText(I)V

    goto/16 :goto_0

    .line 479
    .end local v0    # "stickerId":I
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v0

    goto :goto_2

    .line 484
    .restart local v0    # "stickerId":I
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto :goto_3

    .line 491
    .end local v0    # "stickerId":I
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 492
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultBeautyLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    .line 493
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideStickerFaceDetectionIndicator()V

    .line 494
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->setStickerDefaultPosition(II)V

    goto/16 :goto_0

    .line 434
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xbe -> :sswitch_2
        0x137 -> :sswitch_1
    .end sparse-switch

    .line 463
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
    const/16 v5, 0x1f40

    const/4 v4, 0x0

    const/16 v2, 0x7530

    const/4 v3, 0x1

    .line 508
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 510
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I

    move-result-object v0

    .line 511
    .local v0, "effectPreviewFPSRange":[I
    aget v1, v0, v4

    aget v2, v0, v3

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 512
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 513
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v1, :cond_1

    .line 514
    const-string v1, "phase-af"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DYNAMIC_RANGE_CONTROL:Z

    if-eqz v1, :cond_2

    .line 517
    const-string v1, "dynamic-range-control"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v0    # "effectPreviewFPSRange":[I
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeValueForISPset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 545
    return-void

    .line 520
    :cond_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_AUTO_LLS_LITE:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 522
    const/16 v1, 0x2710

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 534
    :goto_1
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 536
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v1, :cond_4

    .line 537
    const-string v1, "phase-af"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_4
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DYNAMIC_RANGE_CONTROL:Z

    if-eqz v1, :cond_2

    .line 540
    const-string v1, "dynamic-range-control"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_5
    invoke-virtual {p1, v5, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    .line 528
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 529
    const/16 v1, 0x3a98

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    .line 531
    :cond_7
    invoke-virtual {p1, v5, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 549
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 550
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isQRCodeDetectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    .line 554
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 560
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    .line 561
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    if-eqz v0, :cond_1

    .line 562
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Auto;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/Auto;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

    const v4, 0x7f02019f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p3, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_8

    .line 572
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_POS_X:I

    int-to-float v2, v1

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_POS_Y_FOR_STICKER_BUTTON:I

    int-to-float v3, v1

    :goto_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020007

    const v7, 0x7f020008

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    .line 578
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f09008e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 584
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 589
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Auto$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Auto$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.visionintelligence"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 607
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsVisionIntelligenceSupported:Z

    .line 609
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_b

    .line 611
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f02028a

    const v7, 0x7f02028b

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    .line 617
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090282

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Auto$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Auto$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 654
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 655
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsStickerShortcutSupported:Z

    .line 656
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsStickerShortcutSupported:Z

    if-eqz v0, :cond_4

    .line 657
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_SHORTCUT_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_SHORTCUT_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f020018

    const v7, 0x7f020019

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090168

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x2331

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Auto$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Auto$3;-><init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 677
    :cond_4
    return-void

    .line 552
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 560
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 572
    :cond_7
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    goto/16 :goto_2

    .line 575
    :cond_8
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020007

    const v7, 0x7f020008

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_3

    .line 587
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBeautyLevelSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 607
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 614
    :cond_b
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f02028a

    const v7, 0x7f02028b

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_6

    .line 655
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_7
.end method

.method public onEngineStateChanged(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .prologue
    const/4 v1, 0x0

    .line 681
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne p1, v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 684
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    goto :goto_0

    .line 688
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    goto :goto_0

    .line 682
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

    .line 699
    const/4 v1, 0x0

    .line 700
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

    .line 702
    .local v0, "faceCount":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    if-lez v0, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowStickerGuideText:Z

    if-nez v3, :cond_2

    .line 707
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerGuideText()V

    .line 710
    :cond_2
    if-lez v0, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowFaceDetection:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyHideFaceDetection:Z

    if-nez v3, :cond_4

    .line 711
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideStickerFaceDetectionIndicator()V

    .line 712
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyHideFaceDetection:Z

    .line 718
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 719
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowFaceDetection:Z

    .line 720
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v5, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(I[B)V

    goto :goto_0

    .line 713
    :cond_4
    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowFaceDetection:Z

    if-nez v3, :cond_3

    .line 714
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerFaceDetectionIndicator()V

    .line 715
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowFaceDetection:Z

    goto :goto_1
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 5
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    const/16 v2, 0x232d

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 726
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 728
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 729
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowFaceDetection:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyHideFaceDetection:Z

    if-nez v1, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerFaceDetectionIndicator()V

    goto :goto_0

    .line 735
    :sswitch_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    const/16 v2, 0x400

    if-eq v1, v2, :cond_1

    .line 737
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->stopAutoFilter()V

    .line 739
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->stopThumbnailPreviewCallback()V

    .line 741
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showBeautyMenuButton()V

    goto :goto_0

    .line 744
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideBeautyMenuButton()V

    .line 745
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isEffectEditEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 746
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 750
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 751
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    goto :goto_0

    .line 748
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_1

    .line 757
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 758
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showBeautyMenuButton()V

    .line 760
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showVisionIntelligenceButton()V

    .line 761
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerShortcutButton()V

    goto :goto_0

    .line 764
    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 765
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showBeautyMenuButton()V

    .line 779
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showVisionIntelligenceButton()V

    .line 780
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerShortcutButton()V

    goto/16 :goto_0

    .line 767
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isEffectEditEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 768
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_2

    .line 770
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 771
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showRandomStickerButton()V

    .line 773
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v0

    .line 774
    .local v0, "stickerId":I
    :goto_3
    const/16 v1, 0x2710

    if-eq v0, v1, :cond_6

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 775
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showStickerSoundMuteButton()V

    goto :goto_2

    .line 773
    .end local v0    # "stickerId":I
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v0

    goto :goto_3

    .line 726
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x12 -> :sswitch_3
        0x71 -> :sswitch_2
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 8

    .prologue
    const/16 v7, 0x71

    const/16 v6, 0x12

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 794
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 796
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 798
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    .line 801
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideVisionIntelligenceButton()V

    .line 802
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideVisionIntelligenceEffect()V

    .line 804
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    if-eqz v1, :cond_1

    .line 805
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->stopQRCodeDetection()V

    .line 806
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRButton()V

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setQRCodeDetectEventListener(Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;)V

    .line 810
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_3

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x7f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x7f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 814
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x232f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 815
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x232f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 819
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x8

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 820
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x137

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 821
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    .line 823
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    if-eqz v1, :cond_5

    .line 824
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultBackBeautyLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->setBeautyLevel(I)V

    .line 825
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 826
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 828
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setBeautyListener(Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;)V

    .line 830
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 831
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    .line 832
    .local v0, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 833
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 836
    .end local v0    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideBeautyMenuButton()V

    .line 838
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v1, :cond_7

    .line 839
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideShortcutStickerButton()V

    .line 840
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 841
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    .line 842
    .restart local v0    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 843
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 846
    .end local v0    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    .line 847
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    .line 848
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 849
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setStickerEventListener(Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;)V

    .line 850
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideStickerToast()V

    .line 851
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    .line 852
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideRandomStickerButton()V

    .line 853
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    .line 854
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->removeStickerGuideText()V

    .line 855
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->removeStickerFaceDetection()V

    .line 856
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0xbe

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 859
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRErrorToast()V

    .line 862
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    .line 864
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 866
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    .line 868
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 870
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 874
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 879
    packed-switch p1, :pswitch_data_0

    .line 887
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 881
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 882
    const/4 v0, 0x1

    goto :goto_0

    .line 879
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuCreated(ILcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 892
    sparse-switch p1, :sswitch_data_0

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 894
    :sswitch_0
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 895
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    .line 898
    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    .line 899
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    .line 903
    :sswitch_2
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    goto :goto_0

    .line 906
    :sswitch_3
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    .line 909
    :sswitch_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    .line 910
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 911
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    .line 892
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x12 -> :sswitch_4
        0x71 -> :sswitch_3
        0x7f -> :sswitch_1
        0x232f -> :sswitch_2
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 926
    const-string v0, "Z028"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 928
    const-string v0, "Z068"

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    const-string v0, "Z069"

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    const-string v0, "Z030"

    const-string v1, "Photo"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAASManagerAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 937
    const-string v0, "G016"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAASBrightnessValue()J

    move-result-wide v2

    invoke-static {v0, v4, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_3
    return-void
.end method

.method public onQrCodeDetection([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 4
    .param p1, "uri"    # [B
    .param p2, "camera"    # Lcom/samsung/android/camera/core/SemCamera;

    .prologue
    const/4 v3, 0x0

    .line 943
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->checkQRDetectCondition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 944
    const-string v1, "Auto"

    const-string v2, "onQrCodeDetection can\'t display QR button"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideQRButton()V

    .line 969
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->stopQRCodeDetection()V

    .line 950
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->showQRButton(Z)V

    .line 951
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setQRCodeDetectEventListener(Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;)V

    .line 952
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsQRCodeDetectionEnabled:Z

    goto :goto_0

    .line 955
    :cond_1
    const-string v1, "Auto"

    const-string v2, "onQrCodeDetection"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideTouchEVSlider()V

    .line 959
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 961
    .local v0, "URL":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.app.qragent"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 962
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isSupportQRCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 963
    const/4 v1, -0x3

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->onQRErrorToast(I)V

    goto :goto_0

    .line 967
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->setUri(Ljava/lang/String;)V

    .line 968
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->showQRButton(Z)V

    goto :goto_0
.end method

.method public onQrCodeDetectionError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 973
    const-string v0, "Auto"

    const-string v1, "onQrCodeDetectionError"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mQRCodeReader:Lcom/sec/android/app/camera/widget/gl/QRCodeReader;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/QRCodeReader;->isVisible()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 975
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Auto;->onQRErrorToast(I)V

    .line 977
    :cond_0
    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 987
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 997
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 999
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1000
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowFaceDetection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyHideFaceDetection:Z

    if-nez v0, :cond_0

    .line 1001
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideStickerFaceDetectionIndicator()V

    goto :goto_0

    .line 1006
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideBeautyMenuButton()V

    goto :goto_0

    .line 1009
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideBeautyMenuButton()V

    .line 1010
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideVisionIntelligenceButton()V

    .line 1011
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideVisionIntelligenceEffect()V

    .line 1012
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideShortcutStickerButton()V

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 1014
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideRandomStickerButton()V

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto :goto_0

    .line 997
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x12 -> :sswitch_2
        0x232f -> :sswitch_1
    .end sparse-switch
.end method

.method public onShutterKeyLongPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1024
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isBurstCaptureAvailableFPS()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isLowLightDetected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1026
    const-string v0, "startBurstCapture"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 1028
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 1029
    const/4 v0, 0x1

    .line 1035
    :cond_0
    :goto_0
    return v0

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f090121

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 1040
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

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
    .locals 1
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 1045
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 1049
    :cond_0
    const/4 v0, 0x1

    .line 1053
    :goto_0
    return v0

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 1053
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 1058
    packed-switch p1, :pswitch_data_0

    .line 1088
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1060
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideBeautyMenuButton()V

    .line 1062
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideVisionIntelligenceButton()V

    .line 1063
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideShortcutStickerButton()V

    goto :goto_0

    .line 1067
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1070
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1071
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showBeautyMenuButton()V

    .line 1074
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showVisionIntelligenceButton()V

    .line 1075
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerShortcutButton()V

    goto :goto_0

    .line 1079
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showBeautyMenuButton()V

    .line 1083
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showVisionIntelligenceButton()V

    .line 1084
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerShortcutButton()V

    goto :goto_0

    .line 1058
    nop

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

    .line 1092
    const-string v0, "Auto"

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

    .line 1093
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 1099
    :cond_1
    if-nez p1, :cond_3

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1101
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1115
    :cond_3
    :goto_0
    return-void

    .line 1106
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 1109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    .line 1110
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideBeautyMenuButton()V

    .line 1111
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideVisionIntelligenceButton()V

    .line 1112
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->hideShortcutStickerButton()V

    goto :goto_0
.end method

.method public onVisionIntelligenceEffectAnimationComplete()V
    .locals 2

    .prologue
    .line 1119
    const-string v0, "Auto"

    const-string v1, "onVisionIntelligenceEffectAnimationComplete()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showVisionIntelligenceButtonWithAnimation()V

    .line 1121
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Auto;->showVisionIntelligencePopup()V

    .line 1122
    return-void
.end method
