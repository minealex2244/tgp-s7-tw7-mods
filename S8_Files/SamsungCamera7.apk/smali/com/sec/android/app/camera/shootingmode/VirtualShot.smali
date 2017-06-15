.class public Lcom/sec/android/app/camera/shootingmode/VirtualShot;
.super Ljava/lang/Object;
.source "VirtualShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$StartVirtualShotListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;,
        Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_FADE_INOUT_TIMER:I = 0x226

.field private static final ANIMATION_NEXT_TIMER:I = 0x64

.field private static final CAPTURED_OBJ_ALPHA_VALUE:F = 0.4f

.field private static final CAPTURE_DIRECTION_TO_DOWN:I = 0x2

.field private static final CAPTURE_DIRECTION_TO_LEFT:I = 0x4

.field private static final CAPTURE_DIRECTION_TO_RIGHT:I = 0x3

.field private static final CAPTURE_DIRECTION_TO_UP:I = 0x1

.field private static final CAPTURE_DIRECTION_UNKNOWN:I = 0x0

.field private static final CAPTURE_WARN_NOT_ENOUGH_FRAMES:I = 0x3

.field private static final CAPTURE_WARN_NO_ERROR:I = 0x0

.field private static final CAPTURE_WARN_OUT_OF_RANGE:I = 0x2

.field private static final CAPTURE_WARN_WRONG_DIRECTION:I = 0x1

.field private static final NUM_OF_ANIMATION:I = 0x5

.field private static final NUM_OF_DIRECTION:I = 0x6

.field private static final SAVE_RESTRICTION_FRAME_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VirtualShot"

.field private static final VIRTUALSHOT_CAPTURE_EXPIRED:I = 0x7

.field private static final VIRTUALSHOT_CAPTURE_EXPIRED_TIMER:I = 0x1b58

.field private static final VIRTUALSHOT_DEVICE_GUIDE_ANI_FADEIN:I = 0x2

.field private static final VIRTUALSHOT_DEVICE_GUIDE_ANI_FADEOUT:I = 0x3

.field private static final VIRTUALSHOT_DEVICE_GUIDE_ANI_NEXT:I = 0x1

.field private static final VIRTUALSHOT_SHOW_UI:I = 0x6

.field private static final VIRTUALSHOT_SHOW_UI_RESTART_TIMER:I = 0xa

.field private static final VIRTUALSHOT_STATUS_CAPTURING:I = 0x3

.field private static final VIRTUALSHOT_STATUS_IDLE:I = 0x0

.field private static final VIRTUALSHOT_STATUS_SAVING:I = 0x4

.field private static final VIRTUALSHOT_STATUS_START:I = 0x2

.field private static final VIRTUALSHOT_STATUS_STARTING:I = 0x1

.field private static final sVirtualShotStatus:[Ljava/lang/String;


# instance fields
.field private final BASEMENU_GROUP_WIDTH:F

.field private final BASE_MENU_WEIGHT_VALUE:F

.field private final CENTER_OBJECT_FRONT_X:F

.field private final CENTER_OBJECT_FRONT_Y:F

.field private final CENTER_OBJECT_REAR_X:F

.field private final CENTER_OBJECT_REAR_Y:F

.field private final NORMAL_RATIO_PREVIEW_LEFT:F

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final PROGRESS_FRONT_X:F

.field private final PROGRESS_FRONT_Y:F

.field private final PROGRESS_REAR_X:F

.field private final PROGRESS_REAR_Y:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final STOP_BUTTON_DIAMETER:I

.field private final STOP_BUTTON_POS_X:I

.field private final STOP_BUTTON_POS_Y:I

.field private final VIRTUALSHOT_GUIDE_H:F

.field private final VIRTUALSHOT_GUIDE_W:F

.field private final VIRTUALSHOT_GUIDE_X:[F

.field private final VIRTUALSHOT_GUIDE_Y:[F

.field private mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

.field private mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

.field private mArrowAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

.field private mCaptureDirection:I

.field private mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

.field private mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCenterObjBG:Lcom/samsung/android/glview/GLImage;

.field private mCurrentFadeInAni:I

.field private mCurrentFadeOutAni:I

.field private mCurrentGuideAni:I

.field private mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFrames:I

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mNotSupportOrientation:Z

.field private mProgress:I

.field private mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

.field private mTempFileName:Ljava/lang/String;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

.field private mVirtualShotStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "VIRTUALSHOT_STATUS_IDLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "VIRTUALSHOT_STATUS_STARTING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "VIRTUALSHOT_STATUS_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "VIRTUALSHOT_STATUS_CAPTURING"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "VIRTUALSHOT_STATUS_SAVING"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->sVirtualShotStatus:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const v0, 0x7f0a0232

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_W:F

    .line 113
    const v0, 0x7f0a0231

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_H:F

    .line 114
    const v0, 0x7f0a022f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_X:F

    .line 115
    const v0, 0x7f0a0230

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_Y:F

    .line 116
    const v0, 0x7f0a022d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_X:F

    .line 117
    const v0, 0x7f0a022e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_Y:F

    .line 118
    const v0, 0x7f0a0235

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    .line 119
    const v0, 0x7f0a0236

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    .line 120
    const v0, 0x7f0a0233

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    .line 121
    const v0, 0x7f0a0234

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f0a005f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a0060

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a0061

    .line 123
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    const v1, 0x7f0a0062

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [F

    const v1, 0x7f0a0063

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0a0064

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a0065

    .line 125
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    const v1, 0x7f0a0066

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    .line 128
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->BASEMENU_GROUP_WIDTH:F

    .line 129
    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 130
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 131
    const v0, 0x7f0a000c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->NORMAL_RATIO_PREVIEW_LEFT:F

    .line 134
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_WIDTH:I

    .line 135
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_HEIGHT:I

    .line 136
    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_WIDTH:F

    .line 137
    const v0, 0x7f0a0393

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 138
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->BASEMENU_GROUP_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->BASE_MENU_WEIGHT_VALUE:F

    .line 139
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->BASE_MENU_WEIGHT_VALUE:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_X:I

    .line 140
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_Y:I

    .line 141
    const v0, 0x7f0a02a3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_DIAMETER:I

    .line 143
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 144
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 145
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 146
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 147
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 148
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 149
    const-string v0, ".virtualshot.temp"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    .line 150
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    .line 151
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    .line 152
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    .line 153
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    .line 154
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    .line 155
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    .line 161
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    .line 162
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    .line 163
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 164
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    .line 165
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 166
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 167
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotStatus:I

    .line 170
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mNotSupportOrientation:Z

    .line 173
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$1;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    const-string v0, "VirtualShot"

    const-string v1, "VirtualShot() - create"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 211
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setHRMSensor(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startGuideDeviceNextAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->virtualShotGuideDeviceAnimation(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideVirtualShotGuideDeviceAnimation(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->unregisterCameraOrientationListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->clearMessageHandler()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    return-void
.end method

.method private cancelHandlerMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x6

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    .line 829
    :cond_1
    return-void
.end method

.method private cancelVirtualShot()V
    .locals 2

    .prologue
    .line 835
    const-string v0, "VirtualShot"

    const-string v1, "cancelVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v0, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 844
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideStopButton()V

    .line 846
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 847
    const-string v0, "VirtualShot"

    const-string v1, "cancelVirtualShot : cancelCaptureForVirtualShot"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelTakePicture()V

    .line 850
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStopVirtualShot()V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFlashMode(Ljava/lang/String;)V

    .line 856
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->removeTempFile()V

    .line 858
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    goto :goto_0
.end method

.method private clearMessageHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->access$1100(Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;)V

    .line 869
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->access$1000(Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;)V

    .line 872
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    .line 873
    return-void
.end method

.method private getCaptureDirection()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    return v0
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method private getVirtualShotStatus()I
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotStatus:I

    return v0
.end method

.method private hideStopButton()V
    .locals 2

    .prologue
    .line 906
    const-string v0, "VirtualShot"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->requestFocus(I)V

    .line 909
    return-void
.end method

.method private hideVirtualShotGuideDeviceAnimation(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 913
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideVirtualShotGuideDeviceAnimation: mAnimationGuideDevice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be invisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->cancelAnimation()V

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 917
    :cond_0
    return-void
.end method

.method private initDeviceAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 920
    const-string v0, "VirtualShot"

    const-string v1, "initDeviceAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    .line 922
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    .line 923
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    .line 924
    return-void
.end method

.method private isVirtualShotSavingAllowed()Z
    .locals 2

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeTempFile()V
    .locals 6

    .prologue
    .line 940
    const-string v3, "VirtualShot"

    const-string v4, "removeTempFile"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "directory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 945
    const-string v3, "VirtualShot"

    const-string v4, "removeTempFile - failed to delete"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v1

    .line 948
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "VirtualShot"

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 957
    const-string v0, "VirtualShot"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    .line 959
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    .line 960
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    .line 961
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    .line 962
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopAnimationTimer()V

    .line 963
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->initDeviceAnimation()V

    .line 964
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelHandlerMessages()V

    .line 965
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->resetProgressView()V

    .line 966
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->resetCaptureGuideRect()V

    .line 967
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 973
    :cond_0
    return-void
.end method

.method private resetCaptureGuideRect()V
    .locals 5

    .prologue
    const v4, 0x7f0200e3

    const v3, 0x7f0200ce

    const/4 v2, 0x0

    .line 976
    const-string v0, "VirtualShot"

    const-string v1, "resetCaptureGuideRect"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 987
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 990
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method private resetProgressView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 993
    const-string v1, "VirtualShot"

    const-string v2, "resetProgressView"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    .line 996
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 998
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1002
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1004
    :cond_1
    return-void
.end method

.method private setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "bAnimate"    # Z

    .prologue
    .line 1008
    if-eqz p2, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1010
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1012
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1016
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 1020
    :goto_0
    return-void

    .line 1018
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->cancelAnimation()V

    goto :goto_0
.end method

.method private setCapturingVirtualShot()V
    .locals 2

    .prologue
    .line 1026
    const-string v0, "VirtualShot"

    const-string v1, "setCapturingShot"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 1029
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopAnimationTimer()V

    .line 1030
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->initDeviceAnimation()V

    .line 1031
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->updateCaptureLayout(I)V

    .line 1032
    return-void
.end method

.method private setFrontMode(Z)V
    .locals 9
    .param p1, "bIsFront"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1035
    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontMode: bIsFront-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    .line 1038
    if-eqz p1, :cond_3

    .line 1039
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1040
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1041
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200d1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1043
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1044
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1045
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1046
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1051
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200d0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1052
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200d1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1053
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200d2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1054
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200d3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1055
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1056
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_FRONT_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1059
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1082
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 1061
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200e2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1062
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1063
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200e6

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1065
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->CENTER_OBJECT_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1066
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1067
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1068
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1069
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 1070
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1069
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1072
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200e4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1073
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200e5

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1074
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200e6

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1075
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200e7

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1076
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1077
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 1078
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->PROGRESS_REAR_Y:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 1077
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private setHRMSensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1085
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 1090
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setOutputFile()V
    .locals 6

    .prologue
    .line 1096
    const-string v3, "VirtualShot"

    const-string v4, "setOutputFile"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1102
    const-string v3, "VirtualShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 1108
    new-instance v0, Ljava/io/File;

    .end local v0    # "cameraDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1109
    .restart local v0    # "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1110
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1111
    const-string v3, "VirtualShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, -0xa

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 1120
    :goto_0
    return-void

    .line 1117
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStartVirtualShot()V
    .locals 4

    .prologue
    const v3, 0x7f0200f0

    const v2, 0x7f0200db

    .line 1126
    const-string v0, "VirtualShot"

    const-string v1, "setStartVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startCaptureExpireTimer()V

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setFrontMode(Z)V

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 1134
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 1136
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1144
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->updateCaptureLayout(I)V

    .line 1145
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startGuideDeviceNextAnimation()V

    .line 1146
    return-void

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0
.end method

.method private setStopVirtualShot()V
    .locals 2

    .prologue
    .line 1152
    const-string v0, "VirtualShot"

    const-string v1, "setStopVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAfIfNeeded()V

    .line 1156
    return-void
.end method

.method private setVirtualShotStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 898
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVirtualShotStatus - status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->sVirtualShotStatus:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotStatus:I

    goto :goto_0
.end method

.method private showStopButton()V
    .locals 2

    .prologue
    .line 1159
    const-string v0, "VirtualShot"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1163
    return-void
.end method

.method private showVirtualShotGuideGroup(Z)V
    .locals 3
    .param p1, "bShow"    # Z

    .prologue
    const/4 v2, 0x4

    .line 1166
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1167
    if-eqz p1, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1169
    const-string v0, "VirtualShot"

    const-string v1, "showVirtualShotGuideGroup : will be visible"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    const-string v0, "VirtualShot"

    const-string v1, "showVirtualShotGuideGroup : will be invisible"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private startCaptureExpireTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 1182
    const-string v0, "VirtualShot"

    const-string v1, "startCaptureExpireTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->removeMessages(I)V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1189
    :cond_1
    return-void
.end method

.method private startFadeInAnimationTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1192
    const-string v0, "VirtualShot"

    const-string v1, "startFadeInAnimationTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    .line 1198
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    const-wide/16 v2, 0x44c

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1204
    :cond_1
    :goto_0
    return-void

    .line 1201
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startFadeOutAnimationTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1207
    const-string v0, "VirtualShot"

    const-string v1, "startFadeOutAnimationTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1214
    :cond_1
    return-void
.end method

.method private startGuideDeviceNextAnimation()V
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1218
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->virtualShotGuideDeviceAnimation(IZ)V

    .line 1221
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 1222
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentGuideAni:I

    .line 1224
    :cond_1
    return-void
.end method

.method private startNextAnimationTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1227
    const-string v0, "VirtualShot"

    const-string v1, "startNextAnimationTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1234
    :cond_1
    return-void
.end method

.method private stopAnimationTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1237
    const-string v0, "VirtualShot"

    const-string v1, "stopAnimationTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->removeMessages(I)V

    .line 1249
    :cond_2
    return-void
.end method

.method private stopCaptureExpireTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1252
    const-string v0, "VirtualShot"

    const-string v1, "stopCancelTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->removeMessages(I)V

    .line 1256
    :cond_0
    return-void
.end method

.method private stopVirtualShot()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1259
    const-string v0, "VirtualShot"

    const-string v1, "stopVirtualShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVirtualShot()V

    .line 1264
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStopVirtualShot()V

    .line 1265
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 1266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    .line 1270
    :cond_0
    return-void
.end method

.method private unregisterCameraOrientationListener()V
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 1274
    return-void
.end method

.method private updateCaptureLayout(I)V
    .locals 9
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 1277
    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCaptureLayout("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    if-ne p1, v4, :cond_3

    .line 1280
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1281
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 1283
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1284
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1287
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1288
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200db

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1289
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1290
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1291
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1292
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1293
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1294
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200e1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1333
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 1296
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200e9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1297
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200ea

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1298
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200eb

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1299
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200ec

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1300
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200ed

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1301
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200ee

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1302
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_1

    .line 1304
    .end local v0    # "i":I
    :cond_3
    if-ne p1, v6, :cond_7

    .line 1305
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1306
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1307
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v5, :cond_5

    .line 1308
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1309
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1307
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1312
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1313
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1314
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1315
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1316
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1317
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200d8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1318
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200d9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1319
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1321
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f0200f0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1322
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v7

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1323
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    const v2, 0x7f0200f2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1324
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1325
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v6

    const v2, 0x7f0200f4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1326
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v4

    const v2, 0x7f0200f5

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 1327
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v5

    const v2, 0x7f0200f6

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1330
    .end local v0    # "i":I
    :cond_7
    const-string v1, "VirtualShot"

    const-string v2, "unknown direction - apply default direction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private virtualShotGuideDeviceAnimation(IZ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "bShow"    # Z

    .prologue
    const-wide/16 v6, 0x226

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1336
    const-string v0, "VirtualShot"

    const-string v1, "startGuideDeviceAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 1339
    if-eqz p2, :cond_3

    .line 1340
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualShotGuideDeviceAnimation: mAnimationGuideDevice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be start fade-in animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1342
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1346
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1347
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1348
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1349
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeInAni:I

    .line 1351
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startFadeInAnimationTimer()V

    .line 1366
    :cond_2
    :goto_0
    return-void

    .line 1353
    :cond_3
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualShotGuideDeviceAnimation: mAnimationGuideDevice["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be start fade-out animation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 1355
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1357
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1359
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1360
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 1361
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCurrentFadeOutAni:I

    .line 1362
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startFadeOutAnimationTimer()V

    .line 1363
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->startNextAnimationTimer()V

    goto :goto_0
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 236
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v3, [I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 240
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    .line 241
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setHRMSensor(Z)V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVirtualShotListener(Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setStartVirtualShotListener(Lcom/sec/android/app/camera/interfaces/Engine$StartVirtualShotListener;)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    .line 259
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setFrontMode(Z)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    const/4 v2, 0x6

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 280
    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 281
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mNotSupportOrientation:Z

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mNotSupportOrientation:Z

    goto :goto_0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v2, 0x7530

    .line 292
    const-string v0, "picture-size"

    const-string v1, "1280x720"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1, v2, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 294
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 298
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 299
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 301
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->NORMAL_RATIO_PREVIEW_LEFT:F

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v3, 0x0

    aget v3, v1, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_W:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_H:F

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 305
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200e2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    .line 306
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200e3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    .line 307
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200e3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 309
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0200e6

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f1

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f2

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f3

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f5

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x5

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200f6

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 317
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x6

    if-ge v8, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 317
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e5

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e6

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e7

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0200e8

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v0, v1

    .line 326
    const/4 v8, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge v8, v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 326
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCenterObjBG:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureAniGuideArrow:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureGuideDevice:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 334
    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x6

    if-ge v8, v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 334
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 337
    :cond_2
    const/4 v8, 0x0

    :goto_3
    const/4 v0, 0x5

    if-ge v8, v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationGuideDevice:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 337
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->NORMAL_RATIO_PREVIEW_LEFT:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->NORMAL_RATIO_PREVIEW_LEFT:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_X:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->NORMAL_RATIO_PREVIEW_LEFT:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->VIRTUALSHOT_GUIDE_Y:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 348
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_X:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v1

    const v4, 0x7f020101

    const v5, 0x7f020103

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$2;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->STOP_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p3, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 382
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 387
    const-string v0, "sef_file_type"

    const/16 v1, 0x8d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v0, "height"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v0, "width"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public onHRMShutterDetected()V
    .locals 2

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    .line 405
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    .line 403
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setHRMSensor(Z)V

    .line 424
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setVirtualShotListener(Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setStartVirtualShotListener(Lcom/sec/android/app/camera/interfaces/Engine$StartVirtualShotListener;)V

    .line 431
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->unregisterCameraOrientationListener()V

    .line 433
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    .line 434
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    .line 436
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mArrowAnimation:Landroid/view/animation/AlphaAnimation;

    .line 437
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 438
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mDeviceFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 439
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopAnimationTimer()V

    .line 440
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->initDeviceAnimation()V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->access$1000(Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;)V

    .line 444
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    if-eqz v0, :cond_4

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;->access$1100(Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;)V

    .line 449
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mAnimationHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$AnimationHandler;

    .line 452
    :cond_4
    return-void
.end method

.method public onInteractiveCaptureProgressed(II)V
    .locals 7
    .param p1, "progress"    # I
    .param p2, "frame_count"    # I

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 456
    const-string v2, "VirtualShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteractiveCaptureProgressed - progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 459
    const-string v2, "VirtualShot"

    const-string v3, "onInteractiveCaptureProgressed - wrong state, callback is returned."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    .line 464
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    .line 466
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-nez v2, :cond_2

    .line 467
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showStopButton()V

    .line 470
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getCaptureDirection()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 473
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x10

    if-gt v2, v3, :cond_5

    .line 474
    const/4 v1, 0x0

    .line 487
    .local v1, "progressLevel":I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    .line 488
    const-string v2, "VirtualShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteractiveCaptureProgressed - mProgressGuideFG["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] will be VISIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 490
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V

    .line 492
    if-lez v1, :cond_a

    .line 493
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V

    .line 494
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_a

    .line 497
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 498
    const-string v2, "VirtualShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteractiveCaptureProgressed - mProgressGuideFG["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] will be VISIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 496
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 475
    .end local v0    # "i":I
    .end local v1    # "progressLevel":I
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x21

    if-gt v2, v3, :cond_6

    .line 476
    const/4 v1, 0x1

    .restart local v1    # "progressLevel":I
    goto/16 :goto_1

    .line 477
    .end local v1    # "progressLevel":I
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x32

    if-gt v2, v3, :cond_7

    .line 478
    const/4 v1, 0x2

    .restart local v1    # "progressLevel":I
    goto/16 :goto_1

    .line 479
    .end local v1    # "progressLevel":I
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x43

    if-gt v2, v3, :cond_8

    .line 480
    const/4 v1, 0x3

    .restart local v1    # "progressLevel":I
    goto/16 :goto_1

    .line 481
    .end local v1    # "progressLevel":I
    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    const/16 v3, 0x54

    if-gt v2, v3, :cond_9

    .line 482
    const/4 v1, 0x4

    .restart local v1    # "progressLevel":I
    goto/16 :goto_1

    .line 484
    .end local v1    # "progressLevel":I
    :cond_9
    const/4 v1, 0x5

    .restart local v1    # "progressLevel":I
    goto/16 :goto_1

    .line 505
    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-ne v2, v6, :cond_b

    .line 506
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgressGuideFG:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setAlphaArrow(Lcom/samsung/android/glview/GLView;Z)V

    .line 510
    .end local v1    # "progressLevel":I
    :cond_b
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mProgress:I

    if-ne v2, v6, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto/16 :goto_0
.end method

.method public onInteractiveDirectionChanged(II)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "value"    # I

    .prologue
    .line 517
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveDirectionChanged - direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 534
    :goto_0
    return-void

    .line 522
    :pswitch_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCaptureDirection:I

    .line 523
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V

    .line 524
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setCapturingVirtualShot()V

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInteractiveDirectionWarning(I)V
    .locals 3
    .param p1, "warn_state"    # I

    .prologue
    .line 538
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveDirectionWarning - warn_state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;-><init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 562
    return-void
.end method

.method public onInteractiveProcessCompleted()V
    .locals 7

    .prologue
    .line 566
    const-string v4, "VirtualShot"

    const-string v5, "onInteractiveProcessCompleted"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v4, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 573
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 575
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->hideStopButton()V

    .line 578
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getTempFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "outputFileName":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 580
    const-string v4, "VirtualShot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interactive file name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()Landroid/util/Size;

    move-result-object v3

    .line 583
    .local v3, "thumbnailSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 584
    .local v2, "thumbnailBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 585
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 591
    .end local v0    # "orientation":I
    .end local v2    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "thumbnailSize":Landroid/util/Size;
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 592
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 595
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 596
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 597
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 599
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAfIfNeeded()V

    .line 601
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V

    .line 602
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v5, 0x200

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 603
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 605
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 607
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v4

    if-nez v4, :cond_4

    .line 608
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    .line 611
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 612
    const-string v4, "421"

    invoke-static {v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    :cond_5
    const-string v4, "VirtualShot"

    const-string v5, "interactive output file error"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 614
    :cond_6
    const-string v4, "261"

    invoke-static {v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onInteractiveProcessProgressed(II)V
    .locals 3
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 620
    const-string v0, "VirtualShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveProcessProgressed - current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    if-nez p1, :cond_0

    .line 623
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 632
    sparse-switch p1, :sswitch_data_0

    .line 652
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 636
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isVirtualShotSavingAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    const-string v1, "VirtualShot"

    const-string v2, "onKeyDown : Ignore - VirtualShot can be saved (too short)"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown : ignore - status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/4 v0, 0x1

    .line 657
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 708
    :goto_1
    return v0

    .line 659
    :sswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v2, v3, :cond_1

    .line 660
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto :goto_1

    .line 661
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_1

    .line 670
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isVirtualShotSavingAllowed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 672
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 673
    :cond_2
    const-string v0, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp - invalid status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 674
    goto :goto_1

    .line 676
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v0, v3, :cond_4

    .line 677
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : stop Virtual shot"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto :goto_0

    .line 680
    :cond_4
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : cancel Virtual shot"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    .line 685
    :cond_5
    const-string v1, "VirtualShot"

    const-string v2, "onKeyUp : Ignore - Virtual Shot can be saved (too short)"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 691
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 692
    const-string v1, "VirtualShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : ignore - status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 695
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 696
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mFrames:I

    if-lt v0, v3, :cond_7

    .line 697
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : stop Virtual shot"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopVirtualShot()V

    goto/16 :goto_0

    .line 700
    :cond_7
    const-string v0, "VirtualShot"

    const-string v2, "onKeyUp : cancel Virtual shot"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto/16 :goto_0

    .line 657
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 7
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 745
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    const-string v1, "VirtualShot"

    const-string v2, "Return, isCapturing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_0
    return v0

    .line 750
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mNotSupportOrientation:Z

    if-eqz v2, :cond_1

    .line 751
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901db

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 755
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 756
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->stopFaceDetection()V

    .line 758
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 759
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 762
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    .line 764
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 765
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setOutputFile()V

    .line 766
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setVirtualShotStatus(I)V

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVirtualShot()V

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_3

    .line 770
    const-string v0, "1008"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 774
    goto :goto_0

    .line 772
    :cond_3
    const-string v0, "4002"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 779
    const-string v0, "VirtualShot"

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

    .line 780
    packed-switch p1, :pswitch_data_0

    .line 787
    :goto_0
    return-void

    .line 782
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartingVirtualShotCompleted()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStartVirtualShot()V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    const-string v0, "422"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 799
    :goto_0
    return-void

    .line 797
    :cond_1
    const-string v0, "262"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 803
    const-string v0, "VirtualShot"

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

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 810
    :cond_1
    if-nez p1, :cond_2

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->setStartVirtualShot()V

    .line 816
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 818
    :cond_2
    return-void

    .line 814
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V

    goto :goto_0
.end method
