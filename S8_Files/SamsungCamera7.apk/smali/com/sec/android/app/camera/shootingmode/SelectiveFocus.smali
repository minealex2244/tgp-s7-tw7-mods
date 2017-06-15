.class public Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;
.super Ljava/lang/Object;
.source "SelectiveFocus.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;


# static fields
.field private static final MAX_IMAGE_COUNT:I = 0x2

.field private static final SELECTIVE_FOCUS_ERR_AF:I = -0x1

.field private static final SELECTIVE_FOCUS_ERR_INF:I = -0x2

.field private static final SELECTIVE_FOCUS_ERR_NONE:I = 0x0

.field private static final SELECTIVE_FOCUS_ERR_SAVE_DATA:I = -0x4

.field private static final SELECTIVE_FOCUS_ERR_SEGMENTATION:I = -0x3

.field private static final TAG:Ljava/lang/String; = "SelectiveFocus"


# instance fields
.field private final CAPTURE_GUIDE_TEXT_HEIGHT:F

.field private final CAPTURE_GUIDE_TEXT_HEIGHT_VERITCAL:F

.field private final CAPTURE_GUIDE_TEXT_POS_X:F

.field private final CAPTURE_GUIDE_TEXT_POS_Y:F

.field private final CAPTURE_GUIDE_TEXT_SET_SHADOW:Z

.field private final CAPTURE_GUIDE_TEXT_SIDE_MARGIN:F

.field private final CAPTURE_GUIDE_TEXT_SIZE:F

.field private final CAPTURE_GUIDE_TEXT_STROKE_WIDTH:I

.field private final CAPTURE_GUIDE_TEXT_WIDTH:F

.field private final CAPTURE_GUIDE_TEXT_WIDTH_VERITCAL:F

.field private final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

.field private final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

.field private final CAPTURE_PROGRESSBAR_STEP_GAP:I

.field private final CAPTURE_PROGRESSBAR_STEP_HEIGHT:I

.field private final CAPTURE_PROGRESSBAR_STEP_WIDTH:I

.field private final INDICATOR_TEXT_STROKE_COLOR:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

.field private mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureGuideText:Lcom/samsung/android/glview/GLText;

.field private mCaptureMaxCount:I

.field private mCaptureMethod:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

.field private mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsImageProgressing:Z

.field private mIsProgressStepOn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mProgressBarHeight:I

.field private mProgressBarWidth:I

.field private mProgressStep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLNinePatch;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectiveFocusToast:Landroid/widget/Toast;

.field private mTempFileName:Ljava/lang/String;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    .line 88
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    .line 91
    const v2, 0x7f0a01c7

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    .line 92
    const v2, 0x7f0a01c8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    .line 93
    const v2, 0x7f0a01cb

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    .line 94
    const v2, 0x7f0a01ca

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_HEIGHT:I

    .line 95
    const v2, 0x7f0a01c9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    .line 97
    const v2, 0x7f0a01c5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_WIDTH:F

    .line 98
    const v2, 0x7f0a01c6

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_WIDTH_VERITCAL:F

    .line 99
    const v2, 0x7f0a01c3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_HEIGHT:F

    .line 100
    const v2, 0x7f0a01c4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_HEIGHT_VERITCAL:F

    .line 101
    const v2, 0x7f0a0053

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_SIDE_MARGIN:F

    .line 102
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_X:F

    .line 103
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_Y:F

    .line 104
    const v2, 0x7f0a02ad

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_SIZE:F

    .line 105
    const v2, 0x7f0b0025

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_STROKE_WIDTH:I

    .line 106
    const v2, 0x7f0b002e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_SET_SHADOW:Z

    .line 107
    const v0, 0x7f0b0031

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    .line 108
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 110
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    .line 116
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureCount:I

    .line 117
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureMaxCount:I

    .line 120
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    .line 121
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    .line 123
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 124
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 125
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 126
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    .line 127
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 128
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 129
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 130
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsImageProgressing:Z

    .line 131
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;

    .line 133
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$1;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 169
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 170
    return-void

    :cond_0
    move v0, v1

    .line 106
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setHRMSensor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private hideCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 584
    const-string v0, "SelectiveFocus"

    const-string v1, "hideCaptureLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 587
    return-void
.end method

.method private removeTempFile()V
    .locals 6

    .prologue
    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.SelectiveFocus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "directory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "SelectiveFocus"

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

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 600
    const-string v0, "SelectiveFocus"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureCount:I

    .line 602
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->hideCaptureLayout()V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 606
    return-void
.end method

.method private setCaptureProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 609
    const-string v1, "SelectiveFocus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCaptureCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureMaxCount:I

    if-le p1, v1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureCount:I

    .line 617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 618
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 619
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLNinePatch;

    const v2, 0x7f02019c

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 620
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(IZ)V

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 622
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureCount:I

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLNinePatch;

    const v2, 0x7f02019b

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(IZ)V

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 629
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 630
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x200

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 631
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, -0x181

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 633
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 635
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->showCaptureLayout()V

    goto/16 :goto_0
.end method

.method private setCaptureProgressMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 641
    return-void
.end method

.method private setGestureControl(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 644
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto :goto_0
.end method

.method private setHRMSensor(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 652
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setOutputFile()V
    .locals 5

    .prologue
    .line 660
    const-string v3, "SelectiveFocus"

    const-string v4, "setOutputFile"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.SelectiveFocus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 665
    const-string v3, "SelectiveFocus"

    const-string v4, "output directory created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method private showCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 674
    const-string v0, "SelectiveFocus"

    const-string v1, "showCaptureLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 681
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method private startAutoFocus()V
    .locals 2

    .prologue
    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setHalfShutter(Z)V

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "SelectiveFocus"

    const-string v1, "START_AUTO_FOCUS is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private storeImage(ZI)V
    .locals 30
    .param p1, "isSEFFormat"    # Z
    .param p2, "orientation"    # I

    .prologue
    .line 707
    const-string v26, "SelectiveFocus"

    const-string v27, "storeImage"

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v10

    .line 710
    .local v10, "directory":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/.SelectiveFocus"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mTempFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 713
    .local v22, "tempFilePath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 714
    .local v17, "fromPix":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 715
    .local v14, "fileSize":J
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_1

    .line 716
    const-string v26, "SelectiveFocus"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mTempFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not exist.."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v8

    .line 723
    .local v8, "dateTaken":J
    invoke-static {v8, v9}, Lcom/sec/android/app/camera/util/ImageUtils;->createName(J)Ljava/lang/String;

    move-result-object v19

    .line 725
    .local v19, "name":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".jpg"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 726
    .local v12, "fileName":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 728
    .local v13, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentTitle(Ljava/lang/String;)V

    .line 730
    const/4 v6, 0x0

    .line 731
    .local v6, "bMove":Z
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 732
    .local v11, "file":Ljava/io/File;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v8, v9, v11}, Lcom/sec/android/app/camera/interfaces/Engine;->insertUTCToSEF(JLjava/io/File;)V

    .line 736
    if-eqz v6, :cond_0

    .line 737
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 738
    .local v25, "values":Landroid/content/ContentValues;
    const-string v26, "title"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v26, "_display_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v26, "datetaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 745
    const-string v26, "mime_type"

    const-string v27, "image/jpeg"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v26, "orientation"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    const-string v26, "_data"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v26, "height"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    const-string v26, "width"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    const-string v26, "_size"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 752
    const-string v26, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v26, "addr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getAddressValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v18

    .line 756
    .local v18, "loc":Landroid/location/Location;
    if-eqz v18, :cond_2

    .line 757
    const-string v26, "latitude"

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLatitude()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 758
    const-string v26, "longitude"

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 760
    :cond_2
    const-string v26, "date_modified"

    const-wide/16 v28, 0x3e8

    div-long v28, v8, v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 761
    if-eqz p1, :cond_3

    .line 762
    const-string v26, "sef_file_type"

    const/16 v27, 0x840

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    :cond_3
    const/16 v16, 0x0

    .line 766
    .local v16, "fileUri":Landroid/net/Uri;
    :try_start_0
    const-string v26, "SelectiveFocus"

    const-string v27, "db insert E"

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    sget-object v27, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 768
    const-string v26, "SelectiveFocus"

    const-string v27, "db insert X"

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getAddressValue()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_4

    if-eqz v16, :cond_4

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getImageIDListHaveAddress()Ljava/util/ArrayList;

    move-result-object v26

    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_4
    if-eqz v16, :cond_6

    .line 776
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 777
    const-string v26, "GATE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "<GATE-M>PICTURE_TAKEN : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " </GATE-M>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentUri(Landroid/net/Uri;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentFilePath(Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setContentVideoType(Z)V

    .line 785
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v7, "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v26, "Z001"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    const-string v26, "G001"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureMethod:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getCaptureMethodString(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/content/ContentValues;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->broadcastMultipleGeneralEventForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    .end local v7    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()Landroid/util/Size;

    move-result-object v24

    .line 797
    .local v24, "thumbnailSize":Landroid/util/Size;
    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getWidth()I

    move-result v26

    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getHeight()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v13, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 798
    .local v23, "thumbnailBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    move/from16 v20, v0

    .line 802
    .local v20, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperWideResolution(I)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 803
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getNavigatorHeightPixels()I

    move-result v26

    add-int v20, v20, v26

    .line 806
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    move/from16 v27, v0

    move/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v13, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v29, v0

    .line 807
    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v29

    .line 806
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, p2

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V

    .line 810
    .end local v20    # "screenWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 814
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    goto/16 :goto_0

    .line 791
    .end local v23    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "thumbnailSize":Landroid/util/Size;
    :catch_0
    move-exception v21

    .line 792
    .local v21, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v26, "SelectiveFocus"

    const-string v27, "Not enough space in database"

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v26, v0

    const v27, 0x7f0901c8

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method private updateCaptureLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 819
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 821
    .local v0, "ratio_margin":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 823
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 825
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_X:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_Y:F

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 826
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_X:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_Y:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 828
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLText;->updateLayout(Z)V

    .line 830
    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsImageProgressing:Z

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 189
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 190
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v4, [I

    const/16 v3, 0xc

    aput v3, v2, v5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSelectiveFocusListener(Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;)V

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    .line 204
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->hideCaptureLayout()V

    .line 205
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->updateCaptureLayout()V

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setHRMSensor(Z)V

    .line 215
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setGestureControl(Z)V

    .line 217
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 226
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 230
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 231
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 233
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureMaxCount:I

    .line 234
    const-string v0, "selective_focus_temp.jpg"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mTempFileName:Ljava/lang/String;

    .line 236
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float v9, v0, v1

    .line 238
    .local v9, "ratio_margin":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    .line 239
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    .line 241
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v9

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v2, v9

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 254
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureMaxCount:I

    if-ge v8, v0, :cond_0

    .line 255
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v8

    int-to-float v2, v1

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f02019b

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_HEIGHT:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 262
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f09019e

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setShadowOffset(FF)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_X:F

    sub-float/2addr v2, v9

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_Y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_X:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v9

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_POS_Y:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_HEIGHT_VERITCAL:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_SIDE_MARGIN:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_SIDE_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_GUIDE_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 280
    return-void
.end method

.method public onHRMShutterDetected()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "SelectiveFocus"

    const-string v1, "HRM detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    .line 288
    :cond_0
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 297
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsImageProgressing:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 299
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsImageProgressing:Z

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setHRMSensor(Z)V

    .line 308
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setGestureControl(Z)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setSelectiveFocusListener(Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;)V

    .line 313
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    .line 318
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->reset()V

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->removeTempFile()V

    .line 320
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 324
    const-string v0, "SelectiveFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sparse-switch p1, :sswitch_data_0

    .line 330
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 328
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 344
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectiveFocusCaptureProgress(II)V
    .locals 6
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 370
    const-string v0, "SelectiveFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectiveFocusCaptureProgress - current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-nez p1, :cond_2

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 379
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setCaptureProgressMax(I)V

    .line 381
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setCaptureProgress(I)V

    .line 382
    return-void
.end method

.method public onSelectiveFocusComplete(I)V
    .locals 8
    .param p1, "result"    # I

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 386
    const-string v1, "SelectiveFocus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectiveFocusComplete("

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

    .line 388
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsImageProgressing:Z

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_1

    .line 390
    const-string v1, "SelectiveFocus"

    const-string v2, "mCameraContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-nez v1, :cond_2

    .line 395
    const-string v1, "SelectiveFocus"

    const-string v2, "engine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v7, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 406
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "isSEFFormat":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;

    .line 411
    packed-switch p1, :pswitch_data_0

    .line 449
    const/4 v0, 0x1

    .line 453
    :goto_1
    const/4 v1, -0x4

    if-eq p1, v1, :cond_5

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->storeImage(ZI)V

    .line 456
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->reset()V

    .line 457
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v1

    if-eq v1, v5, :cond_6

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSendCompletedMessageToBixby()V

    .line 460
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 463
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    .line 467
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAfIfNeeded()V

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->captureCompleted()V

    .line 469
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setGestureControl(Z)V

    goto/16 :goto_0

    .line 413
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 422
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$3;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 431
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$4;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 440
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$5;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 411
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSelectiveFocusProcessProgress(II)V
    .locals 3
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 477
    const-string v0, "SelectiveFocus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectiveFocusProcessProgress - current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-nez v0, :cond_1

    .line 480
    const-string v0, "SelectiveFocus"

    const-string v1, "ignore front camera SelectiveFocus progress"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-nez p1, :cond_0

    .line 482
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->hideCaptureLayout()V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    if-nez p1, :cond_2

    .line 488
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->hideCaptureLayout()V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsImageProgressing:Z

    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAfState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->restartTouchAF()V

    .line 517
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 519
    :goto_1
    return v0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->startAutoFocus()V

    goto :goto_0

    .line 519
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 3
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    const/4 v0, 0x1

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 548
    :goto_0
    return v0

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    const-string v1, "SelectiveFocus"

    const-string v2, "Return, isCapturing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v0, :cond_3

    .line 533
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setOutputFile()V

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;

    if-eqz v0, :cond_4

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;

    .line 541
    :cond_4
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureMethod:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 544
    const-string v0, "1008"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByTimerMode(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 546
    :cond_5
    const-string v0, "4002"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByTimerMode(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSingleCaptureEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 553
    packed-switch p1, :pswitch_data_0

    .line 561
    :goto_0
    return-void

    .line 556
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFSMax(I)V

    goto :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 565
    const-string v0, "SelectiveFocus"

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

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 572
    :cond_1
    if-nez p1, :cond_2

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 581
    :cond_2
    :goto_0
    return-void

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method
