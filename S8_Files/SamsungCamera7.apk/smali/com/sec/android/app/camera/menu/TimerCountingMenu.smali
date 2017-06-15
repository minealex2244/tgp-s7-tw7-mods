.class public Lcom/sec/android/app/camera/menu/TimerCountingMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "TimerCountingMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerMenuHandler;,
        Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;
    }
.end annotation


# static fields
.field private static final INTERVAL_UPDATE_PROGRESS_WHEEL_TIMER:J = 0xaL

.field protected static final TAG:Ljava/lang/String; = "TimerCountingMenu"

.field private static final UPDATE_PROGRESS_WHEEL_TIMER_MSG:I = 0x1

.field private static mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

.field private static mTimerIntervalCountArray1:[I

.field private static mTimerIntervalCountArray2:[I


# instance fields
.field private final PROGRESS_TIMER_WIDTH:I

.field private final TIMER_INTERVAL_COUNT_GAP:I

.field private final TIMER_INTERVAL_COUNT_POS_X:I

.field private final TIMER_INTERVAL_COUNT_POS_Y:[I

.field private final TIMER_INTERVAL_COUNT_WIDTH:I

.field private final TIMER_NUMBER_POS_X:I

.field private final TIMER_NUMBER_POS_Y:I

.field private final TIMER_PROGRESS_WHEEL_POS_X:I

.field private final TIMER_PROGRESS_WHEEL_POS_Y:I

.field private mCurrentAnimationTime:I

.field private mIntervalCount:I

.field private mIs2SecSoundPlaying:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgressDegree:I

.field private mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

.field private mTimerCancelListener:Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;

.field private final mTimerMenuHandler:Landroid/os/Handler;

.field private mTimerNumber:Lcom/samsung/android/glview/GLImage;

.field private mTimerNumberArray:[I

.field private mTimerValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    .line 58
    new-array v0, v1, [Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    return-void

    .line 54
    :array_0
    .array-data 4
        0x7f0201e0
        0x7f0201e2
        0x7f0201e4
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x7f0201e1
        0x7f0201e3
        0x7f0201e5
    .end array-data
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;)V
    .locals 11
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .prologue
    .line 110
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 59
    const v0, 0x7f0a03d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_X:I

    .line 60
    const v0, 0x7f0a03d5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_Y:I

    .line 61
    const v0, 0x7f0a03d6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_X:I

    .line 62
    const v0, 0x7f0a03d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_Y:I

    .line 63
    const v0, 0x7f0a03d8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    .line 64
    const v0, 0x7f0a03d2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_X:I

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0a03ce

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0a03cf

    .line 66
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0a03d0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_Y:[I

    .line 67
    const v0, 0x7f0a03d3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_WIDTH:I

    .line 68
    const v0, 0x7f0a03d1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_GAP:I

    .line 69
    new-instance v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerMenuHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerMenuHandler;-><init>(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    .line 70
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    .line 82
    new-instance v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;-><init>(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeTimerNumber()V

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeProgressWheelTimer()V

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeTimerIntervalCount()V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 116
    return-void

    .line 70
    nop

    :array_0
    .array-data 4
        0x7f0201e6
        0x7f0201e8
        0x7f0201e9
        0x7f0201ea
        0x7f0201eb
        0x7f0201ec
        0x7f0201ed
        0x7f0201ee
        0x7f0201ef
        0x7f0201e7
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->resetIntervalCaptureCount()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/TimerCountingMenu;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/TimerCountingMenu;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerCancelListener:Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/TimerCountingMenu;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateProgressWheelTime(I)V

    return-void
.end method

.method private cancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    const-string v0, "TimerCountingMenu"

    const-string v1, "cancelTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    if-lez v0, :cond_2

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK_2SEC:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    .line 297
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    .line 307
    :cond_3
    iput v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    .line 308
    iput v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    .line 309
    iput v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    .line 310
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setPreviewTouchEnabled(Z)V

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->hideMenu()V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerCancelListener:Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;

    if-eqz v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerCancelListener:Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;->onTimerCanceled()V

    .line 318
    :cond_4
    return-void
.end method

.method private makeProgressWheelTimer()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->clear()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v7

    .line 328
    .local v7, "screenWidth":I
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    int-to-float v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_Y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->moveBaseLayoutAbsolute(FF)V

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 339
    return-void

    .line 332
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_PROGRESS_WHEEL_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->PROGRESS_TIMER_WIDTH:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setRotatable(Z)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setCenterPivot(Z)V

    goto :goto_0
.end method

.method private makeTimerIntervalCount()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 343
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 344
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 345
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 346
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 342
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_GAP:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 353
    .local v1, "leftMargin":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_3

    .line 354
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getLeft()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_WIDTH:I

    iget v7, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_GAP:I

    add-int/2addr v6, v7

    mul-int/2addr v6, v0

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_X:I

    iget v7, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_X:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    aget v7, v7, v0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v2, v0

    .line 356
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 357
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    .end local v1    # "leftMargin":I
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_3

    .line 361
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    new-instance v3, Lcom/samsung/android/glview/GLImage;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_X:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_INTERVAL_COUNT_POS_Y:[I

    aget v6, v6, v0

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    aget v7, v7, v0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v3, v2, v0

    .line 362
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 363
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v9}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 364
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {v2, v10}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 366
    sget-object v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 369
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->resetIntervalCaptureCount()V

    .line 370
    return-void
.end method

.method private makeTimerNumber()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v0

    .line 380
    .local v0, "screenWidth":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    aget v3, v3, v7

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/glview/GLImage;->moveBaseLayoutAbsolute(FF)V

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-static {v2, v6, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 391
    return-void

    .line 384
    :cond_1
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_X:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->TIMER_NUMBER_POS_Y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    aget v5, v5, v7

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    goto :goto_0
.end method

.method private resetIntervalCaptureCount()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 394
    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 395
    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 396
    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray1:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 397
    return-void
.end method

.method private setIntervalCountVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 402
    if-eqz p1, :cond_0

    .line 403
    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 401
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_1

    .line 408
    :cond_1
    return-void
.end method

.method private updateIntervalCaptureCount()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    .line 412
    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 413
    iput v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    .line 416
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIntervalCount:I

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 418
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 421
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 424
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCount:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerIntervalCountArray2:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProgressWheelTime(I)V
    .locals 8
    .param p1, "totalDuration"    # I

    .prologue
    const-wide/16 v6, 0xa

    const/4 v4, 0x1

    .line 433
    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    mul-int/lit16 v1, v1, 0x168

    div-int/2addr v1, p1

    iput v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    .line 434
    const-string v1, "TimerCountingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressWheelTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 438
    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    int-to-long v2, v1

    add-long/2addr v2, v6

    long-to-int v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCurrentAnimationTime:I

    .line 440
    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressDegree:I

    const/16 v2, 0x168

    if-ne v1, v2, :cond_0

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-static {v1, v4, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getProgressWheelTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 442
    .local v0, "hideAnim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;-><init>(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setAnimation(Landroid/view/animation/Animation;)V

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->startAnimation()V

    .line 467
    .end local v0    # "hideAnim":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 124
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 125
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public onHide()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    const-string v0, "TimerCountingMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isProgressWheelTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerMenuHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 141
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setIntervalCountVisibility(Z)V

    .line 146
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    .line 147
    return-void

    .line 143
    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setIntervalCountVisibility(Z)V

    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->resetIntervalCaptureCount()V

    goto :goto_0
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 248
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 253
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 151
    sparse-switch p1, :sswitch_data_0

    .line 160
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 158
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 165
    sparse-switch p1, :sswitch_data_0

    .line 178
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 167
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->cancelTimer()V

    goto :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutChanged(III)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->cancelTimer()V

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 189
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeTimerNumber()V

    .line 190
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeProgressWheelTimer()V

    .line 191
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->makeTimerIntervalCount()V

    .line 193
    :cond_2
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    const-string v1, "TimerCountingMenu"

    const-string v2, "onShow"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/16 v2, 0x2c0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 265
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setPreviewTouchEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateIntervalCaptureCount()V

    .line 269
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setIntervalCountVisibility(Z)V

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isProgressWheelTimer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-static {v2, v3, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getProgressWheelTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->startAnimation()V

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mProgressWheelTimer:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 279
    :cond_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setIntervalCountVisibility(Z)V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 284
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 289
    return-void
.end method

.method public setTimerCancelListener(Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerCancelListener:Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;

    .line 197
    return-void
.end method

.method public updateTime(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 200
    const-string v1, "TimerCountingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isProgressWheelTimer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateProgressWheelTime(I)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    .line 206
    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    if-nez v1, :cond_2

    .line 207
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->hideMenu()V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    array-length v1, v1

    if-le p1, v1, :cond_3

    .line 212
    const-string v1, "TimerCountingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer index is wrong - NUM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumberArray:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerNumber:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 219
    const/4 v0, 0x1

    .line 220
    .local v0, "bPlayShutter":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    if-nez v1, :cond_5

    .line 221
    :cond_4
    const/4 v0, 0x0

    .line 224
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mTimerValue:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_7

    .line 225
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    if-nez v1, :cond_0

    .line 226
    if-eqz v0, :cond_6

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK_2SEC:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 229
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mIs2SecSoundPlaying:Z

    goto :goto_0

    .line 232
    :cond_7
    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->TIMER_TICK:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    goto :goto_0
.end method
