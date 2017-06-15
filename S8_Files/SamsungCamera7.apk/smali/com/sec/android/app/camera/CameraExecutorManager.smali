.class public Lcom/sec/android/app/camera/CameraExecutorManager;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;,
        Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;
    }
.end annotation


# static fields
.field private static final COMMAND_BY_BIXBY:I = 0x1

.field private static final COMMAND_BY_BIXBY_RESTART_LAST_STATE:I = 0x2

.field private static final INVALID_PARAM:I = -0x7d0

.field private static final NO_PARAM:I = -0x3e8

.field private static final RETRY_LAST_STATE_DURATION:I = 0x3e8

.field public static final SETTING_CONTACTUS:I = 0x9

.field public static final SETTING_LAUNCH_FRONT_PICTURESIZE_MENU:I = 0x4

.field public static final SETTING_LAUNCH_FRONT_TIMER_MENU:I = 0x2

.field public static final SETTING_LAUNCH_FRONT_VIDEOSIZE_MENU:I = 0x6

.field public static final SETTING_LAUNCH_QUICK_LAUNCH_MENU:I = 0xa

.field public static final SETTING_LAUNCH_REAR_PICTURESIZE_MENU:I = 0x3

.field public static final SETTING_LAUNCH_REAR_TIMER_MENU:I = 0x1

.field public static final SETTING_LAUNCH_REAR_VIDEOSIZE_MENU:I = 0x5

.field public static final SETTING_LAUNCH_WAY_TO_TAKE_PICTURE_MENU:I = 0x7

.field public static final SETTING_REFRESH_COMMON_MENU:I = 0x66

.field public static final SETTING_REFRESH_FRONT_MENU:I = 0x65

.field public static final SETTING_REFRESH_REAR_MENU:I = 0x64

.field public static final SETTING_REFRESH_RESOLUTION_MENU:I = 0x68

.field public static final SETTING_REFRESH_TIMER_MENU:I = 0x67

.field public static final SETTING_RESET:I = 0x8

.field private static final TAG:Ljava/lang/String; = "CameraExecutorManager"

.field private static final WAIT_HIDE_SHOOTING_MODE_MENU_DURATION:I = 0x12c


# instance fields
.field private mAppList:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackCameraId:I

.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommonTimerCameraId:I

.field private mContext:Landroid/content/Context;

.field private mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

.field mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

.field private mFrontCameraId:I

.field private mInitBixbyApiThread:Ljava/lang/Thread;

.field private mIsCameraActivity:Z

.field private mIsSwitchedCameraForced:Z

.field private mIsWaitCommandResult:Z

.field private mLastLandingState:Ljava/lang/String;

.field private mLastNlgErrorType:I

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

.field private mMenuDimController:Lcom/sec/android/app/camera/DimController;

.field private mResultParam:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/DimController;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .param p3, "dimController"    # Lcom/sec/android/app/camera/DimController;
    .param p4, "backCameraId"    # I
    .param p5, "frontCameraId"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .line 109
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 116
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    .line 117
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/State;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    .line 119
    iput v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 120
    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    .line 121
    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    .line 122
    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 123
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    .line 125
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    .line 128
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$1;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 167
    iput-object p3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 170
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    .line 172
    iput p4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    .line 173
    iput p5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5
    .param p1, "context"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "settings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    .line 114
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    .line 115
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 116
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    .line 117
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/State;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    .line 119
    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 120
    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    .line 121
    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    .line 122
    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    .line 125
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    .line 128
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$1;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 154
    iput-object p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDimController()Lcom/sec/android/app/camera/DimController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    .line 158
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    .line 160
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    .line 161
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/CameraExecutorManager;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # Landroid/media/AudioManager;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->registerInterimStateListener()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/CameraExecutorManager;ZILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CameraExecutorManager;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processState(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/CameraExecutorManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/DimController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/CameraExecutorManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/CameraExecutorManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeChangeSettingBySingleValue(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/CameraExecutorManager;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeChangeSettingByMultiValue(IIZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/CameraExecutorManager;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeShowMenu(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CameraExecutorManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/CameraExecutorManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeLaunchToOtherApp(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/CameraExecutorManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeActionCapture(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/CameraExecutorManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/CameraExecutorManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/CameraExecutorManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # Lcom/samsung/android/sdk/bixby/BixbyApi;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/CameraExecutorManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getCameraExecutorManager()Lcom/sec/android/app/camera/CameraExecutorManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    return-void
.end method

.method private addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_1
    return-void
.end method

.method private clearInterimStateListener()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    .line 357
    :cond_0
    return-void
.end method

.method private getCameraExecutorManager()Lcom/sec/android/app/camera/CameraExecutorManager;
    .locals 0

    .prologue
    .line 360
    return-object p0
.end method

.method private getEffectIdByEffectName(Ljava/lang/String;I)I
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectCategory"    # I

    .prologue
    .line 365
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 366
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 367
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    .line 368
    .local v0, "item":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v3, "Filter"

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 370
    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v2

    .line 381
    .end local v0    # "item":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    :goto_0
    return v2

    .line 375
    :cond_1
    const-string v2, "Auto"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v3, "Filter"

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090114

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 377
    const/16 v2, 0x400

    goto :goto_0

    .line 380
    :cond_2
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v3, "Filter"

    invoke-direct {v2, v3, p1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 381
    const/16 v2, -0x7d0

    goto :goto_0
.end method

.method private getShootingModeNameByModeId(I)Ljava/lang/String;
    .locals 3
    .param p1, "modeId"    # I

    .prologue
    .line 385
    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShootingModeNameByModeId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sparse-switch p1, :sswitch_data_0

    .line 451
    const-string v0, "Auto"

    :goto_0
    return-object v0

    .line 388
    :sswitch_0
    const-string v0, "Animated GIF"

    goto :goto_0

    .line 390
    :sswitch_1
    const-string v0, "Anti-fog"

    goto :goto_0

    .line 392
    :sswitch_2
    const-string v0, "Aqua"

    goto :goto_0

    .line 394
    :sswitch_3
    const-string v0, "Auto"

    goto :goto_0

    .line 396
    :sswitch_4
    const-string v0, "Beauty face"

    goto :goto_0

    .line 399
    :sswitch_5
    const-string v0, "Panorama"

    goto :goto_0

    .line 402
    :sswitch_6
    const-string v0, "Continuous shot"

    goto :goto_0

    .line 404
    :sswitch_7
    const-string v0, "Dual Camera"

    goto :goto_0

    .line 406
    :sswitch_8
    const-string v0, "Tag shot"

    goto :goto_0

    .line 408
    :sswitch_9
    const-string v0, "Fast motion"

    goto :goto_0

    .line 410
    :sswitch_a
    const-string v0, "Food"

    goto :goto_0

    .line 412
    :sswitch_b
    const-string v0, "Hyperlapse"

    goto :goto_0

    .line 414
    :sswitch_c
    const-string v0, "Night"

    goto :goto_0

    .line 417
    :sswitch_d
    const-string v0, "Pro"

    goto :goto_0

    .line 419
    :sswitch_e
    const-string v0, "Rear-cam selfie"

    goto :goto_0

    .line 421
    :sswitch_f
    const-string v0, "HDR (Rich tone)"

    goto :goto_0

    .line 423
    :sswitch_10
    const-string v0, "Selective focus"

    goto :goto_0

    .line 425
    :sswitch_11
    const-string v0, "Selfie"

    goto :goto_0

    .line 427
    :sswitch_12
    const-string v0, "Slow motion"

    goto :goto_0

    .line 429
    :sswitch_13
    const-string v0, "Sound & shot"

    goto :goto_0

    .line 431
    :sswitch_14
    const-string v0, "Sports"

    goto :goto_0

    .line 433
    :sswitch_15
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "Front Video Collage"

    goto :goto_0

    .line 436
    :cond_0
    const-string v0, "Rear Video Collage"

    goto :goto_0

    .line 439
    :sswitch_16
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    const-string v0, "Front Virtual shot"

    goto :goto_0

    .line 442
    :cond_1
    const-string v0, "Rear Virtual shot"

    goto :goto_0

    .line 447
    :sswitch_17
    const-string v0, "Wide selfie"

    goto :goto_0

    .line 449
    :sswitch_18
    const-string v0, "Wechat video"

    goto :goto_0

    .line 386
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x7 -> :sswitch_4
        0xe -> :sswitch_f
        0x11 -> :sswitch_6
        0x17 -> :sswitch_c
        0x23 -> :sswitch_13
        0x28 -> :sswitch_14
        0x2a -> :sswitch_2
        0x2d -> :sswitch_10
        0x2f -> :sswitch_7
        0x31 -> :sswitch_1
        0x34 -> :sswitch_17
        0x37 -> :sswitch_11
        0x38 -> :sswitch_e
        0x3a -> :sswitch_0
        0x3b -> :sswitch_d
        0x3e -> :sswitch_16
        0x3f -> :sswitch_12
        0x40 -> :sswitch_9
        0x43 -> :sswitch_8
        0x44 -> :sswitch_a
        0x45 -> :sswitch_15
        0x48 -> :sswitch_5
        0x4a -> :sswitch_b
        0x4b -> :sswitch_d
        0x4d -> :sswitch_17
        0x4e -> :sswitch_17
        0x4f -> :sswitch_18
    .end sparse-switch
.end method

.method private getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 456
    const-string v3, "CameraExecutorManager"

    const-string v4, "getSupportedModeSetInCurrentState"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 459
    .local v1, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v3, :cond_1

    .line 460
    invoke-static {v5}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 462
    .local v2, "supportedSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 463
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 497
    :cond_0
    :goto_0
    const-string v3, "CameraExecutorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debug stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-object v1

    .line 465
    .end local v2    # "supportedSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v0

    .line 466
    .local v0, "currentSubFragment":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 467
    packed-switch v0, :pswitch_data_0

    .line 492
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v3, 0x4d

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getSupportedSettingSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 494
    .restart local v2    # "supportedSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 495
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 470
    .end local v2    # "supportedSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :pswitch_1
    const/16 v3, 0x47

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 473
    :pswitch_2
    const/16 v3, 0xb0

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 476
    :pswitch_3
    const/16 v3, 0x30

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    :pswitch_4
    const/16 v3, 0x29

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 482
    :pswitch_5
    const/16 v3, 0x32

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 485
    :pswitch_6
    const/16 v3, 0x2b

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 488
    :pswitch_7
    const/16 v3, 0x61

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleExecutorCommand(I)V
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;->onExecutorCommand(I)V

    .line 504
    :cond_0
    return-void
.end method

.method private hideColorTuneEditMenu()V
    .locals 2

    .prologue
    .line 507
    const/16 v0, 0x77

    .line 508
    .local v0, "commandId":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 509
    return-void
.end method

.method private hideEffectMenuActive()V
    .locals 2

    .prologue
    .line 512
    const/16 v0, 0x7f

    .line 513
    .local v0, "commandId":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 514
    return-void
.end method

.method private hideShootingModeMenu()V
    .locals 2

    .prologue
    .line 518
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const/16 v0, 0x64

    .line 523
    .local v0, "commandId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 524
    return-void

    .line 521
    .end local v0    # "commandId":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "commandId":I
    goto :goto_0
.end method

.method private initLastLandingState()V
    .locals 3

    .prologue
    .line 527
    const-string v0, "CameraExecutorManager"

    const-string v1, "initLastLandingState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLastLandingState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingLandingState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingLandingState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    goto :goto_0
.end method

.method private isAvailableChangeShootingMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isColorTuneEditMenuActive()Z
    .locals 2

    .prologue
    .line 549
    const/16 v0, 0x77

    .line 550
    .local v0, "commandId":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    const/4 v1, 0x1

    .line 552
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEffectMenuActive()Z
    .locals 2

    .prologue
    .line 556
    const/16 v0, 0x7f

    .line 557
    .local v0, "commandId":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    const/4 v1, 0x1

    .line 559
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedToModeDownloadPage(I)Z
    .locals 2
    .param p1, "commandId"    # I

    .prologue
    .line 563
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getModesMap(I)Ljava/util/Map;

    move-result-object v0

    .line 564
    .local v0, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    const/4 v1, 0x0

    .line 567
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNeedToSendAlreadySetNlg(III)Z
    .locals 4
    .param p1, "processState"    # I
    .param p2, "curValue"    # I
    .param p3, "newValue"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 571
    if-ne p2, p3, :cond_1

    .line 572
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNlgLandingStateID(I)I

    move-result v0

    .line 573
    .local v0, "landingStateId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 574
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 579
    .end local v0    # "landingStateId":I
    :goto_0
    return v1

    .line 576
    .restart local v0    # "landingStateId":I
    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 579
    .end local v0    # "landingStateId":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShootingModeMenuActive()Z
    .locals 2

    .prologue
    .line 584
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const/16 v0, 0x64

    .line 589
    .local v0, "commandId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    const/4 v1, 0x1

    .line 591
    :goto_1
    return v1

    .line 587
    .end local v0    # "commandId":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "commandId":I
    goto :goto_0

    .line 591
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 595
    const/4 v1, 0x0

    .line 596
    .local v1, "isSupportFrontCameraType":Z
    const/4 v0, 0x0

    .line 597
    .local v0, "isSupportAllCameraType":Z
    const-string v2, "Video Collage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Virtual shot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Animated GIF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Wechat video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    :cond_0
    const/4 v0, 0x1

    .line 606
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 607
    const/4 v2, 0x1

    .line 612
    :goto_1
    return v2

    .line 599
    :cond_2
    const-string v2, "Selective focus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 600
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v2, :cond_1

    .line 601
    const/4 v0, 0x1

    goto :goto_0

    .line 603
    :cond_3
    const-string v2, "Selfie"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Wide selfie"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Front"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 609
    :cond_5
    if-eqz v1, :cond_6

    .line 610
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    goto :goto_1

    .line 612
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    goto :goto_1
.end method

.method private isSupportModeInCurrentState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 619
    .local v0, "currentSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 620
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 621
    .local v1, "stateId":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    const/4 v2, 0x1

    .line 625
    .end local v1    # "stateId":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSupportedModeForRequestedShootingMode(ILjava/lang/String;I)Z
    .locals 4
    .param p1, "stateId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "shootingModeId"    # I

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-nez v2, :cond_0

    .line 630
    const-string v2, "CameraExecutorManager"

    const-string v3, "isSupportedModeForRequestedShootingMode mIsCameraActivity is set"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return v1

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isAvailableChangeShootingMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 635
    if-eqz p3, :cond_1

    sget v2, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_FRONT_SHOOTINGMODE:I

    if-eq p3, v2, :cond_1

    .line 636
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_0

    .line 641
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-static {p3, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 642
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 643
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 644
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 645
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 646
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto :goto_0

    .line 649
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 650
    const/4 v1, 0x1

    goto :goto_0

    .line 652
    :cond_3
    const/4 v2, 0x6

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_0
.end method

.method private isUsingFlashAvailable()Z
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getLowBatteryStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToUseFlash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureLowToUseFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    :cond_0
    const/4 v0, 0x0

    .line 661
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWaitHideMenu()Z
    .locals 2

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "isWaitHideMenu":Z
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideEffectMenuActive()V

    .line 668
    const/4 v0, 0x1

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideShootingModeMenu()V

    .line 672
    const/4 v0, 0x1

    .line 674
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isColorTuneEditMenuActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideColorTuneEditMenu()V

    .line 676
    const/4 v0, 0x1

    .line 678
    :cond_2
    if-eqz v0, :cond_3

    .line 679
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 681
    :cond_3
    return v0
.end method

.method private launchShootingModeMenu()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 686
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    const/16 v1, 0x64

    .line 692
    .local v1, "commandId":I
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isAvailableChangeShootingMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 693
    const/4 v2, 0x0

    .line 704
    :cond_0
    :goto_1
    return v2

    .line 689
    .end local v1    # "commandId":I
    :cond_1
    const/4 v1, 0x2

    .restart local v1    # "commandId":I
    goto :goto_0

    .line 695
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 696
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 697
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 698
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    const v3, 0x7f0b000c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 699
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 700
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 701
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v3

    const/16 v4, 0x1d4c

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->onPageSelected(I)V

    .line 702
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "G012"

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processState(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 32
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v26

    .line 709
    .local v26, "stateIdName":Ljava/lang/String;
    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "processState, stateId : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v15

    .line 716
    .local v15, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/camera/executor/RulePathState;->getStateIDbyName(Ljava/lang/String;)I

    move-result v25

    .line 717
    .local v25, "stateId":I
    const/16 v28, -0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 718
    const-string v28, "CameraExecutorManager"

    const-string v29, "Can\'t process unknown processId"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 723
    const-string v28, "CameraExecutorManager"

    const-string v29, "Can\'t process during capture"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 727
    :cond_2
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/executor/RulePathState;->checkGroupTypeStateByStateId(I)I

    move-result v18

    .line 729
    .local v18, "requestGroupType":I
    const/4 v10, 0x0

    .line 730
    .local v10, "isParameterAvailable":Z
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 731
    .local v12, "msg":Landroid/os/Message;
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->what:I

    .line 732
    move-object/from16 v0, p1

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 733
    move/from16 v0, v25

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 734
    const/16 v28, -0x3e8

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 735
    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dump State : RuleID :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " StateId : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " isLandingState : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " isLastState : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " isExecuted : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isExecuted()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_4

    .line 737
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v14

    .line 738
    .local v14, "paramName":Ljava/lang/String;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v22

    .line 739
    .local v22, "slotValue":Ljava/lang/String;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValueType()Ljava/lang/String;

    move-result-object v24

    .line 740
    .local v24, "slotValueType":Ljava/lang/String;
    const-string v23, ""

    .line 741
    .local v23, "slotValue2":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 742
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v23

    .line 744
    :cond_3
    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dump State : paramName :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " slotValue : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " slotValueType : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 746
    const-string v28, "CameraExecutorManager"

    const-string v29, "slotValue is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    .end local v14    # "paramName":Ljava/lang/String;
    .end local v22    # "slotValue":Ljava/lang/String;
    .end local v23    # "slotValue2":Ljava/lang/String;
    .end local v24    # "slotValueType":Ljava/lang/String;
    :cond_4
    :goto_1
    packed-switch v18, :pswitch_data_0

    .line 1048
    :pswitch_0
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 748
    .restart local v14    # "paramName":Ljava/lang/String;
    .restart local v22    # "slotValue":Ljava/lang/String;
    .restart local v23    # "slotValue2":Ljava/lang/String;
    .restart local v24    # "slotValueType":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x1

    .line 749
    invoke-static {v14}, Lcom/sec/android/app/camera/executor/RulePathParam;->checkGroupTypeParameterByParamName(Ljava/lang/String;)I

    move-result v27

    .line 750
    .local v27, "type":I
    packed-switch v27, :pswitch_data_1

    goto :goto_1

    .line 944
    :pswitch_1
    const-string v28, "int"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 945
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 752
    :pswitch_2
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 753
    move-object/from16 v11, v22

    .line 754
    .local v11, "modeName":Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/app/camera/executor/RulePathParam;->getShootingModeNameFromModeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 755
    .local v13, "newModeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeIdByModeName(Ljava/lang/String;)I

    move-result v20

    .line 756
    .local v20, "shootingModeId":I
    const-string v28, "Auto"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    if-nez v20, :cond_6

    .line 757
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "Mode"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 758
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 759
    const/16 v28, 0x0

    const/16 v29, 0xd

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    .line 761
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto/16 :goto_0

    .line 764
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "Mode"

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 765
    const-string v28, "_unsupported"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 766
    const/16 v28, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 767
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v28

    if-nez v28, :cond_0

    .line 768
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 771
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isWaitHideMenu()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 775
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 778
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 779
    const/16 v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 780
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportedModeForRequestedShootingMode(ILjava/lang/String;I)Z

    move-result v28

    if-nez v28, :cond_a

    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v28

    if-nez v28, :cond_0

    .line 782
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 785
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    .line 786
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 787
    const/16 v28, 0xa

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 788
    const/16 v28, 0x1

    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 789
    :cond_b
    const/16 v28, 0xb

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 790
    const/16 v28, 0x37

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 791
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v28

    if-eqz v28, :cond_c

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideEffectMenuActive()V

    .line 795
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v28

    packed-switch v28, :pswitch_data_2

    .line 811
    :goto_2
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    goto/16 :goto_0

    .line 797
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0x3

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    .line 800
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0x2

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    .line 803
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0x5

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    .line 806
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0xa

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    .line 814
    :cond_d
    const/16 v28, 0x1

    const/16 v29, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 817
    :cond_e
    const/16 v28, 0x1

    const/16 v29, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 820
    :cond_f
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 824
    :cond_10
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToModeDownloadPage(I)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 825
    const/16 v28, 0x74

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 826
    const/16 v28, 0x0

    const/16 v29, 0xd

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 827
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto/16 :goto_0

    .line 832
    :cond_11
    const/16 v28, 0x4

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 833
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 834
    const/16 v28, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    goto/16 :goto_0

    .line 840
    .end local v11    # "modeName":Ljava/lang/String;
    .end local v13    # "newModeName":Ljava/lang/String;
    .end local v20    # "shootingModeId":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isWaitHideMenu()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 844
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 847
    :cond_13
    const-string v28, "int"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 849
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 850
    .local v6, "cameraId":I
    iput v6, v12, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 851
    .end local v6    # "cameraId":I
    :catch_0
    move-exception v8

    .line 852
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 853
    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unsupported param type : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 858
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :pswitch_8
    const-string v28, "int"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 860
    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 861
    :catch_1
    move-exception v8

    .line 862
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getCommandId(Ljava/lang/String;)I

    move-result v7

    .line 863
    .local v7, "commandId":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_14

    .line 864
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 865
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 866
    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unsupported param type : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 868
    :cond_14
    const/16 v28, 0x1db0

    move/from16 v0, v28

    if-le v7, v0, :cond_15

    const/16 v28, 0x1dbb

    move/from16 v0, v28

    if-ge v7, v0, :cond_15

    .line 869
    iput v7, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 871
    :cond_15
    invoke-static {v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 876
    .end local v7    # "commandId":I
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_16
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 877
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getCommandId(Ljava/lang/String;)I

    move-result v7

    .line 878
    .restart local v7    # "commandId":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_17

    .line 879
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 880
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    goto/16 :goto_1

    .line 882
    :cond_17
    const/16 v28, 0x1db0

    move/from16 v0, v28

    if-le v7, v0, :cond_18

    const/16 v28, 0x1dbb

    move/from16 v0, v28

    if-ge v7, v0, :cond_18

    .line 883
    iput v7, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 885
    :cond_18
    invoke-static {v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 891
    .end local v7    # "commandId":I
    :pswitch_9
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 893
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1b

    .line 894
    const/4 v9, 0x1

    .line 895
    .local v9, "isFrontPictureSize":Z
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v17

    .line 896
    .local v17, "ratio":Ljava/lang/String;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v16

    .line 897
    .local v16, "pixel":Ljava/lang/String;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x28

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 898
    const/4 v9, 0x0

    .line 899
    :cond_19
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 900
    const/16 v28, -0x3e8

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 903
    :cond_1a
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1, v9}, Lcom/sec/android/app/camera/executor/RulePathParam;->getResolutionFromResolutionParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 904
    .local v21, "size":Ljava/lang/String;
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "PictureSize"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 905
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 906
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 910
    .end local v9    # "isFrontPictureSize":Z
    .end local v16    # "pixel":Ljava/lang/String;
    .end local v17    # "ratio":Ljava/lang/String;
    .end local v21    # "size":Ljava/lang/String;
    :cond_1b
    move-object/from16 v21, v22

    .line 911
    .restart local v21    # "size":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v19

    .line 912
    .local v19, "resolutionId":I
    const/16 v28, -0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    .line 913
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "PictureSize"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 914
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "VideoSize"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 922
    .end local v19    # "resolutionId":I
    :cond_1c
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 923
    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "size : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " id : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 916
    .restart local v19    # "resolutionId":I
    :cond_1d
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "PictureSize"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 917
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "VideoSize"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 918
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 927
    .end local v19    # "resolutionId":I
    .end local v21    # "size":Ljava/lang/String;
    :pswitch_a
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 928
    const/16 v28, 0x44

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    .line 929
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 930
    :cond_1e
    const/16 v28, 0x45

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1f

    .line 931
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 933
    :cond_1f
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 934
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x7d0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 935
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 941
    :pswitch_b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->setAppList(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 946
    :cond_20
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 947
    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "slotValue is unknown"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 956
    .end local v14    # "paramName":Ljava/lang/String;
    .end local v22    # "slotValue":Ljava/lang/String;
    .end local v23    # "slotValue2":Ljava/lang/String;
    .end local v24    # "slotValueType":Ljava/lang/String;
    .end local v27    # "type":I
    :pswitch_c
    const/16 v28, 0x37

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isWaitHideMenu()Z

    move-result v28

    if-eqz v28, :cond_22

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 961
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 964
    :cond_22
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x3e8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_23

    .line 965
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    .line 966
    const/16 v28, 0x1

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 970
    :cond_23
    const/16 v28, 0x24

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 994
    :cond_24
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 1052
    :cond_25
    :goto_3
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 972
    :cond_26
    if-nez v10, :cond_24

    .line 973
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportModeInCurrentState(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2a

    .line 974
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_29

    .line 975
    const/16 v28, 0xa

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_28

    .line 976
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v28

    if-eqz v28, :cond_27

    .line 977
    const/16 v28, 0x1

    const/16 v29, 0xd

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 978
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto/16 :goto_0

    .line 980
    :cond_27
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 983
    :cond_28
    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 986
    :cond_29
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 989
    :cond_2a
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 997
    :pswitch_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    .line 998
    const/16 v28, 0x78

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingLandingState(Ljava/lang/String;)V

    .line 1005
    const/16 v28, 0x78

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingLandingState(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1001
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingLandingState(Ljava/lang/String;)V

    .line 1002
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1012
    :pswitch_f
    const/16 v28, 0x43

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 1013
    const/16 v28, 0x7f

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1014
    :cond_2c
    const/16 v28, 0x95

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v28

    if-eqz v28, :cond_2d

    .line 1016
    const/16 v28, 0x81

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1018
    :cond_2d
    const/16 v28, 0x71

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1020
    :cond_2e
    const/16 v28, 0x92

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2f

    .line 1021
    const/16 v28, 0x80

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1022
    :cond_2f
    const/16 v28, 0xa9

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_30

    .line 1023
    const/16 v28, 0x75

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1024
    :cond_30
    const/16 v28, 0x47

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25

    .line 1025
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x3e8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_31

    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x7d0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    .line 1026
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    check-cast v28, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_32

    .line 1027
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1028
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    check-cast v28, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_33

    .line 1029
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1031
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1037
    :pswitch_10
    const/16 v28, 0x51

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_34

    .line 1038
    const/16 v28, 0x74

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1039
    :cond_34
    const/16 v28, 0x53

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25

    .line 1040
    const/16 v28, 0x232a

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1044
    :pswitch_11
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_3

    .line 954
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 750
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 795
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private processStateByBuildCommand(I)Z
    .locals 4
    .param p1, "processParam"    # I

    .prologue
    const/4 v1, 0x0

    .line 1056
    const-string v2, "CameraExecutorManager"

    const-string v3, "processStateByBuildCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1059
    .local v0, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1060
    const-string v2, "CameraExecutorManager"

    const-string v3, "Execute Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    :goto_0
    return v1

    .line 1063
    .restart local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processStateTypeActionCapture(I)V
    .locals 6
    .param p1, "processState"    # I

    .prologue
    const/16 v5, 0x82

    const/16 v4, 0x1b

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1071
    const-string v0, "CameraExecutorManager"

    const-string v1, "processStateTypeActionCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    sparse-switch p1, :sswitch_data_0

    .line 1097
    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default: id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :goto_0
    return-void

    .line 1075
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_0

    .line 1078
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideEffectMenuActive()V

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1083
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    goto :goto_0

    .line 1087
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->isRecordingAvailable(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1088
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1092
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 1093
    const/16 v0, 0x36

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1072
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x36 -> :sswitch_1
    .end sparse-switch
.end method

.method private processStateTypeChangeSettingByMultiValue(IIZ)V
    .locals 22
    .param p1, "processState"    # I
    .param p2, "processParam"    # I
    .param p3, "isLastState"    # Z

    .prologue
    .line 1103
    const-string v18, "CameraExecutorManager"

    const-string v19, "processStateTypeChangeSettingByMultiValue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    sparse-switch p1, :sswitch_data_0

    .line 1665
    const-string v18, "CameraExecutorManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "default: id : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_0
    :goto_0
    return-void

    .line 1108
    :sswitch_0
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1109
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "TimerSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const/4 v15, 0x6

    .line 1126
    .local v15, "requestNlgId":I
    :goto_1
    const/16 v18, 0x47

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 1127
    if-eqz p3, :cond_5

    .line 1128
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1111
    .end local v15    # "requestNlgId":I
    :cond_1
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1112
    const/4 v15, 0x1

    .restart local v15    # "requestNlgId":I
    goto :goto_1

    .line 1114
    .end local v15    # "requestNlgId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "TimerSetting"

    const/16 v20, 0x6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 1118
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 1119
    const/4 v15, 0x2

    .restart local v15    # "requestNlgId":I
    goto :goto_1

    .line 1121
    .end local v15    # "requestNlgId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(II)V

    .line 1122
    const/16 v15, 0x64

    .line 1123
    .restart local v15    # "requestNlgId":I
    const/16 v18, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_1

    .line 1130
    :cond_5
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v15, v0, :cond_6

    .line 1131
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1133
    :cond_6
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1138
    .end local v15    # "requestNlgId":I
    :sswitch_1
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1139
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "GridlinesSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1141
    :cond_7
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1142
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    .line 1144
    const/16 v18, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1146
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "GridlinesSetting"

    const/16 v20, 0x13

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    .line 1149
    const/16 v18, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1150
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1155
    :sswitch_2
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1156
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "VolumekeyFunctionSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const/16 v18, 0x1

    const/16 v19, 0x7e

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1167
    :cond_9
    :goto_2
    const/16 v18, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1158
    :cond_a
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1159
    const/16 v18, 0x1

    const/16 v19, 0x7e

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_2

    .line 1161
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "VolumekeyFunctionSetting"

    const/16 v20, 0x49

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_9

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    .line 1164
    const/16 v18, 0x1

    const/16 v19, 0x7e

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_2

    .line 1170
    :sswitch_3
    const/16 v18, 0x30

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1172
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1175
    :cond_c
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1176
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1185
    :cond_d
    :goto_3
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1177
    :cond_e
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v18

    if-nez v18, :cond_f

    .line 1178
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_3

    .line 1180
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_d

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(II)V

    .line 1182
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_3

    .line 1188
    :sswitch_4
    const/16 v18, 0x29

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1190
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1193
    :cond_10
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 1194
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1203
    :cond_11
    :goto_4
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1195
    :cond_12
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v18

    if-nez v18, :cond_13

    .line 1196
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_4

    .line 1198
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_11

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(II)V

    .line 1200
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_4

    .line 1206
    :sswitch_5
    const/16 v18, 0x32

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1208
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1211
    :cond_14
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 1212
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1221
    :cond_15
    :goto_5
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1213
    :cond_16
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v18

    if-nez v18, :cond_17

    .line 1214
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_5

    .line 1216
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_15

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(II)V

    .line 1218
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_5

    .line 1224
    :sswitch_6
    const/16 v18, 0x2b

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_18

    .line 1226
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1229
    :cond_18
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 1230
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1239
    :cond_19
    :goto_6
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1231
    :cond_1a
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v18

    if-nez v18, :cond_1b

    .line 1232
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_6

    .line 1234
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_19

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(II)V

    .line 1236
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_6

    .line 1242
    :sswitch_7
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1243
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1248
    :sswitch_8
    const/16 v8, 0x2713

    .line 1249
    .local v8, "commandId":I
    const/16 v18, 0x4f

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    .line 1250
    sget-boolean v18, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-nez v18, :cond_1c

    .line 1251
    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1254
    :cond_1c
    const/16 v8, 0x2711

    .line 1256
    :cond_1d
    const/16 v18, 0xae

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 1257
    sget-boolean v18, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WATERMARK:Z

    if-nez v18, :cond_1e

    .line 1258
    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1261
    :cond_1e
    const/16 v8, 0x2712

    .line 1263
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x7f

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 1265
    .local v10, "effectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    if-eqz v10, :cond_20

    .line 1266
    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    .line 1268
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 1269
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1272
    .end local v8    # "commandId":I
    .end local v10    # "effectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    const/16 v19, 0x1e78

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    .line 1273
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    .line 1274
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1283
    :cond_21
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x7f

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 1284
    .local v5, "basicEffectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    if-eqz v5, :cond_0

    .line 1285
    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    .line 1286
    const/16 v18, 0x1e78

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    goto/16 :goto_0

    .line 1275
    .end local v5    # "basicEffectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    :cond_22
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_23

    .line 1276
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_7

    .line 1278
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_21

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    .line 1280
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_7

    .line 1290
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    const/16 v19, 0x1e79

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    .line 1291
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_25

    .line 1292
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1301
    :cond_24
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x7f

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 1302
    .local v6, "beautyEffectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    if-eqz v6, :cond_0

    .line 1303
    invoke-virtual {v6}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    .line 1304
    const/16 v18, 0x1e79

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    goto/16 :goto_0

    .line 1293
    .end local v6    # "beautyEffectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    :cond_25
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    .line 1294
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_8

    .line 1296
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_24

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    .line 1298
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_8

    .line 1308
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_27

    .line 1309
    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1312
    :cond_27
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_29

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v18

    if-nez v18, :cond_28

    .line 1314
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 1315
    const/16 v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1316
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1317
    const/16 v18, 0x7f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    goto/16 :goto_0

    .line 1320
    :cond_28
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1322
    :cond_29
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2a

    .line 1323
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1325
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v9

    .line 1327
    .local v9, "currentEffectMode":I
    if-nez v9, :cond_2b

    if-nez p2, :cond_2c

    :cond_2b
    if-eqz v9, :cond_2d

    if-nez p2, :cond_2d

    .line 1329
    :cond_2c
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_0

    .line 1331
    :cond_2d
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1336
    .end local v9    # "currentEffectMode":I
    :sswitch_c
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e

    .line 1337
    const/16 v18, 0x96

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 1338
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1339
    :cond_2e
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2f

    .line 1340
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "HyperLapseSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const/16 v18, 0x96

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 1342
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1344
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "HyperLapseSetting"

    const/16 v20, 0x170d

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRecordingMotionSpeed()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRecordingMotionSpeed(I)V

    .line 1347
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1352
    :sswitch_d
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_30

    .line 1353
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1354
    :cond_30
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_31

    .line 1355
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1358
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0xb

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraExposureMeter()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraExposureMeter(I)V

    .line 1361
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1366
    :sswitch_e
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_32

    .line 1367
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1368
    :cond_32
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_33

    .line 1369
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1372
    :cond_33
    new-instance v18, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v20, v0

    const/16 v21, 0x91

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    .line 1375
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1380
    :sswitch_f
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    .line 1381
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_34

    .line 1382
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result p2

    .line 1397
    :goto_9
    new-instance v14, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_ISO"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1398
    .local v14, "isoIntent":Landroid/content/Intent;
    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1400
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1386
    .end local v14    # "isoIntent":Landroid/content/Intent;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0xa

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_35

    .line 1388
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_9

    .line 1390
    :cond_35
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_9

    .line 1394
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result p2

    .line 1395
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_9

    .line 1403
    :sswitch_10
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_39

    .line 1404
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_37

    .line 1405
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p2

    .line 1420
    :goto_a
    new-instance v16, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_SHUTTER_SPEED"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1421
    .local v16, "shutterSpeedIntent":Landroid/content/Intent;
    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1423
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1409
    .end local v16    # "shutterSpeedIntent":Landroid/content/Intent;
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0x1f

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_38

    .line 1411
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_a

    .line 1413
    :cond_38
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_a

    .line 1417
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p2

    .line 1418
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_a

    .line 1426
    :sswitch_11
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_3c

    .line 1427
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3a

    .line 1428
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p2

    .line 1443
    :goto_b
    new-instance v17, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_WHITEBALANCE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v17, "wbIntent":Landroid/content/Intent;
    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1446
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1432
    .end local v17    # "wbIntent":Landroid/content/Intent;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0x9

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_3b

    .line 1434
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_b

    .line 1436
    :cond_3b
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_b

    .line 1440
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p2

    .line 1441
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_b

    .line 1449
    :sswitch_12
    const/4 v13, -0x1

    .line 1450
    .local v13, "focusLength":I
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_42

    .line 1451
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3e

    .line 1452
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v13

    .line 1476
    :cond_3d
    :goto_c
    new-instance v12, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_FOCUS_MODE"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v12, "focusIntent":Landroid/content/Intent;
    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1479
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1456
    .end local v12    # "focusIntent":Landroid/content/Intent;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0x5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1457
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_40

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3f

    .line 1459
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_c

    .line 1461
    :cond_3f
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_c

    .line 1463
    :cond_40
    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3d

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_41

    .line 1465
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_c

    .line 1467
    :cond_41
    const/4 v13, 0x0

    .line 1468
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_c

    .line 1473
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v13

    .line 1474
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_c

    .line 1482
    .end local v13    # "focusLength":I
    :sswitch_13
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_46

    .line 1483
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_43

    const/16 v18, 0x14

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_43

    const/16 v18, -0x14

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_44

    .line 1484
    :cond_43
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result p2

    .line 1499
    :goto_d
    new-instance v11, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_EXPOSURE"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v11, "evIntent":Landroid/content/Intent;
    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1502
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1488
    .end local v11    # "evIntent":Landroid/content/Intent;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0x7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_45

    .line 1490
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_d

    .line 1492
    :cond_45
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_d

    .line 1496
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result p2

    .line 1497
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_d

    .line 1505
    :sswitch_14
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_49

    .line 1506
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_47

    .line 1507
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const/4 v15, 0x6

    .line 1509
    .restart local v15    # "requestNlgId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result p2

    .line 1522
    :goto_e
    new-instance v7, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_COLORTUNE"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v7, "colorTuneIntent":Landroid/content/Intent;
    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1525
    if-eqz p3, :cond_4a

    .line 1526
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1511
    .end local v7    # "colorTuneIntent":Landroid/content/Intent;
    .end local v15    # "requestNlgId":I
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0xe

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_48

    .line 1513
    const/4 v15, 0x2

    .restart local v15    # "requestNlgId":I
    goto :goto_e

    .line 1515
    .end local v15    # "requestNlgId":I
    :cond_48
    const/16 v15, 0x64

    .restart local v15    # "requestNlgId":I
    goto :goto_e

    .line 1519
    .end local v15    # "requestNlgId":I
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result p2

    .line 1520
    const/4 v15, 0x1

    .restart local v15    # "requestNlgId":I
    goto :goto_e

    .line 1528
    .restart local v7    # "colorTuneIntent":Landroid/content/Intent;
    :cond_4a
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 1529
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v15, v0, :cond_4b

    .line 1530
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1531
    :cond_4b
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_4d

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v18

    if-nez v18, :cond_4c

    .line 1533
    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1535
    :cond_4c
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1538
    :cond_4d
    if-nez p2, :cond_4e

    .line 1539
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1541
    :cond_4e
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1551
    .end local v7    # "colorTuneIntent":Landroid/content/Intent;
    .end local v15    # "requestNlgId":I
    :sswitch_15
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_58

    .line 1552
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_57

    .line 1553
    const/16 v18, 0x98

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_52

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "BeautySetting"

    const/16 v20, 0x77

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1566
    :goto_f
    const/16 v18, 0x8

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_4f

    if-gez p2, :cond_50

    .line 1567
    :cond_4f
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1568
    const/16 p2, -0x7d0

    .line 1573
    :cond_50
    :goto_10
    const/16 v18, 0x9a

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_59

    .line 1574
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_51

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_51

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    .line 1576
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1578
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1965

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1579
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1556
    :cond_52
    const/16 v18, 0x1db1

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_53

    const/16 v18, 0x1db7

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_53

    const/16 v18, 0x1db3

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_53

    const/16 v18, 0x1db5

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_55

    .line 1557
    :cond_53
    const/16 p2, 0x0

    .line 1561
    :cond_54
    :goto_11
    new-instance v18, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v19, "BeautySetting"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    goto/16 :goto_f

    .line 1558
    :cond_55
    const/16 v18, 0x1db2

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_56

    const/16 v18, 0x1db8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_56

    const/16 v18, 0x1db4

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_56

    const/16 v18, 0x1db6

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_54

    .line 1559
    :cond_56
    const/16 p2, 0x8

    goto :goto_11

    .line 1564
    :cond_57
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "BeautySetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1571
    :cond_58
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_10

    .line 1580
    :cond_59
    const/16 v18, 0x99

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5b

    .line 1581
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5a

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_5a

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    .line 1583
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1585
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1966

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1586
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1587
    :cond_5b
    const/16 v18, 0x98

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5d

    .line 1588
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5c

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightPosition()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_5c

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightPosition(I)V

    .line 1590
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1592
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1968

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1593
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1594
    :cond_5d
    const/16 v18, 0x97

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5f

    .line 1595
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5e

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_5e

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightLevel(I)V

    .line 1597
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1599
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1968

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1600
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1601
    :cond_5f
    const/16 v18, 0x96

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v18

    if-eqz v18, :cond_61

    .line 1603
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_60

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_60

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 1605
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1607
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1964

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1608
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1610
    :cond_61
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_62

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_62

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackBeautyLevel(I)V

    .line 1612
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1614
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x71

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x71

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_0

    .line 1620
    :sswitch_16
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_67

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-eqz v18, :cond_63

    .line 1622
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1623
    :cond_63
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_64

    .line 1624
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "AntiFogSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1627
    :cond_64
    const/16 v18, 0x1db9

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_66

    .line 1628
    const/16 p2, 0x0

    .line 1632
    :cond_65
    :goto_12
    new-instance v18, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v19, "AntiFogSetting"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    .line 1634
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateAntiFogUI()V

    .line 1635
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1629
    :cond_66
    const/16 v18, 0x1dba

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_65

    .line 1630
    const/16 p2, 0x9

    goto :goto_12

    .line 1638
    :cond_67
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1642
    :sswitch_17
    sget-boolean v18, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-eqz v18, :cond_6c

    sget-boolean v18, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v18, :cond_6c

    .line 1643
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_69

    .line 1644
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "QuickLaunchSelectSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1659
    :cond_68
    :goto_13
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1646
    :cond_69
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_6a

    .line 1647
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_13

    .line 1649
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "QuickLaunchSelectSetting"

    const/16 v20, 0x1a

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_68

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_6b

    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_6b

    .line 1652
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1655
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "double_tab_launch"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1656
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_13

    .line 1661
    :cond_6c
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1105
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_b
        0x44 -> :sswitch_9
        0x45 -> :sswitch_a
        0x46 -> :sswitch_8
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4f -> :sswitch_8
        0x55 -> :sswitch_3
        0x58 -> :sswitch_5
        0x5d -> :sswitch_4
        0x5e -> :sswitch_6
        0x6a -> :sswitch_1
        0x71 -> :sswitch_2
        0x72 -> :sswitch_7
        0x81 -> :sswitch_c
        0x82 -> :sswitch_d
        0x83 -> :sswitch_e
        0x85 -> :sswitch_f
        0x87 -> :sswitch_10
        0x89 -> :sswitch_13
        0x8a -> :sswitch_14
        0x8f -> :sswitch_11
        0x91 -> :sswitch_12
        0x96 -> :sswitch_15
        0x97 -> :sswitch_15
        0x98 -> :sswitch_15
        0x99 -> :sswitch_15
        0x9a -> :sswitch_15
        0xaa -> :sswitch_16
        0xae -> :sswitch_8
        0xaf -> :sswitch_17
    .end sparse-switch
.end method

.method private processStateTypeChangeSettingBySingleValue(I)V
    .locals 9
    .param p1, "processState"    # I

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x66

    const/4 v4, 0x0

    const/16 v6, 0x64

    const/4 v5, 0x1

    .line 1671
    const-string v2, "CameraExecutorManager"

    const-string v3, "processStateTypeChangeSettingBySingleValue"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    packed-switch p1, :pswitch_data_0

    .line 2109
    :pswitch_0
    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default: id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 1674
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1675
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->setMotionPhotoComposerEnable(Landroid/content/Context;Z)V

    .line 1676
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    .line 1677
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1678
    const/16 v2, 0x24

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1682
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1683
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->setMotionPhotoComposerEnable(Landroid/content/Context;Z)V

    .line 1684
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    .line 1685
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1686
    const/16 v2, 0x24

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1690
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1691
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1692
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1693
    const/16 v2, 0x7b

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1697
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1698
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1699
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1700
    const/16 v2, 0x7b

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1704
    :pswitch_5
    const/16 v2, 0x47

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 1705
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1706
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 1708
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1709
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1711
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1712
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    .line 1713
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1714
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1719
    :pswitch_6
    const/16 v2, 0x47

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 1720
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1721
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 1723
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 1724
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1726
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1727
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    .line 1728
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1729
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1734
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1735
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    .line 1736
    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1737
    const/16 v2, 0x30

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1739
    :cond_5
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1742
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1743
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    .line 1744
    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1745
    const/16 v2, 0x30

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1747
    :cond_6
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1750
    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTapToTakePictures()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1751
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    .line 1752
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1754
    :cond_7
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1757
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTapToTakePictures()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1758
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    .line 1759
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1761
    :cond_8
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1764
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1765
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    .line 1766
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1768
    :cond_9
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1771
    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1772
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    .line 1773
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1775
    :cond_a
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1778
    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1779
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    .line 1780
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1782
    :cond_b
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1785
    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1786
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    .line 1787
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1789
    :cond_c
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1792
    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1793
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    .line 1794
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1795
    const/16 v2, 0x26

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1799
    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1800
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    .line 1801
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1802
    const/16 v2, 0x26

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1806
    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRearLensDistortionCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1807
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    .line 1808
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1809
    const/16 v2, 0x27

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1813
    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRearLensDistortionCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1814
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    .line 1815
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1816
    const/16 v2, 0x27

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1820
    :pswitch_13
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1821
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 1822
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1823
    const/16 v2, 0x23

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1827
    :pswitch_14
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1828
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 1829
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1830
    const/16 v2, 0x23

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1834
    :pswitch_15
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1835
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    .line 1836
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1837
    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1841
    :pswitch_16
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1842
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    .line 1843
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1844
    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1848
    :pswitch_17
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1849
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    .line 1850
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1851
    const/16 v2, 0x2e

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1855
    :pswitch_18
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1856
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    .line 1857
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1858
    const/16 v2, 0x2e

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1862
    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-eq v2, v8, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1863
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1865
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v1

    .line 1866
    .local v1, "quickLaunchValue":I
    if-nez v1, :cond_f

    .line 1867
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1875
    :cond_e
    :goto_1
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1876
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1868
    :cond_f
    if-ne v1, v8, :cond_e

    .line 1869
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1870
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1873
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1880
    .end local v1    # "quickLaunchValue":I
    :pswitch_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v1

    .line 1881
    .restart local v1    # "quickLaunchValue":I
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-eq v2, v8, :cond_11

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-nez v2, :cond_12

    .line 1882
    :cond_11
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1884
    :cond_12
    if-ne v1, v5, :cond_14

    .line 1885
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1889
    :cond_13
    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1890
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1886
    :cond_14
    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    .line 1887
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1894
    .end local v1    # "quickLaunchValue":I
    :pswitch_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1895
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 1896
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1897
    const/16 v2, 0x7c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1901
    :pswitch_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1902
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 1903
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1904
    const/16 v2, 0x7c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1908
    :pswitch_1d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFloatingCameraButton()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1909
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    .line 1910
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1911
    const/16 v2, 0x34

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1915
    :pswitch_1e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFloatingCameraButton()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1916
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    .line 1917
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1918
    const/16 v2, 0x34

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1922
    :pswitch_1f
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1923
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    .line 1924
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1925
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1929
    :pswitch_20
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1930
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    .line 1931
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1932
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1936
    :pswitch_21
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1937
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1939
    :cond_15
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1940
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    .line 1941
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1942
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1947
    :pswitch_22
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1948
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1950
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1951
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    .line 1952
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1953
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1958
    :pswitch_23
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1959
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1960
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 1961
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1964
    :cond_17
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1965
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 1966
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1971
    :pswitch_24
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isUsingFlashAvailable()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1972
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1975
    :cond_18
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1976
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1977
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 1978
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1981
    :cond_19
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1982
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 1983
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1988
    :pswitch_25
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isUsingFlashAvailable()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1989
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1992
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1993
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1994
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 1995
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1998
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1999
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 2000
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2005
    :pswitch_26
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2006
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    .line 2007
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2011
    :pswitch_27
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2012
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    .line 2013
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2017
    :pswitch_28
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2018
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    .line 2019
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2023
    :pswitch_29
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2024
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPanoramaMode(I)V

    .line 2025
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2029
    :pswitch_2a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2030
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPanoramaMode(I)V

    .line 2031
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2035
    :pswitch_2b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2036
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    .line 2037
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2041
    :pswitch_2c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2042
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    .line 2043
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2047
    :pswitch_2d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionWideSelfieMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2048
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionWideSelfieMode(I)V

    .line 2049
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2053
    :pswitch_2e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionWideSelfieMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2054
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionWideSelfieMode(I)V

    .line 2055
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2059
    :pswitch_2f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "camera.action.ACTION_SELECT_COLORTUNE_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2060
    .local v0, "colorTuneResetIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2061
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 2064
    .end local v0    # "colorTuneResetIntent":Landroid/content/Intent;
    :pswitch_30
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2065
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    const/16 v3, 0x1967

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 2066
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    .line 2067
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2071
    :pswitch_31
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2072
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    const/16 v3, 0x1967

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 2073
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    .line 2074
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2078
    :pswitch_32
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQRCodeDetection()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2079
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    .line 2080
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2081
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2085
    :pswitch_33
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQRCodeDetection()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2086
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    .line 2087
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2088
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2092
    :pswitch_34
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2093
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    .line 2094
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2095
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2099
    :pswitch_35
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 2100
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 2102
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2103
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(II)V

    .line 2104
    const/16 v2, 0x47

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 2105
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1672
    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_35
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_31
        :pswitch_2d
        :pswitch_2e
        :pswitch_1d
        :pswitch_1e
        :pswitch_21
        :pswitch_22
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method

.method private processStateTypeLaunchToOtherApp(II)V
    .locals 5
    .param p1, "processState"    # I
    .param p2, "processParam"    # I

    .prologue
    const/4 v4, 0x7

    const/16 v3, 0x64

    const/4 v2, 0x1

    .line 2115
    const-string v0, "CameraExecutorManager"

    const-string v1, "processStateTypeLaunchToOtherApp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    sparse-switch p1, :sswitch_data_0

    .line 2158
    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default: id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :goto_0
    return-void

    .line 2119
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 2120
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2123
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "quickview"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2124
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2126
    :cond_0
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2130
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.voc"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSamsungManagerVersionSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2131
    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2133
    :cond_2
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2134
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2138
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2139
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2140
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->startShareViaAnimation()V

    .line 2144
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2142
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->startShareActivity(Landroid/net/Uri;)V

    goto :goto_1

    .line 2146
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 2150
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.helphub"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.helphub"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2151
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->showHelpHub(Landroid/content/Context;)V

    .line 2152
    const/16 v0, 0xa5

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2154
    :cond_5
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2116
    nop

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_1
        0x4e -> :sswitch_3
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x73 -> :sswitch_2
        0xa5 -> :sswitch_4
    .end sparse-switch
.end method

.method private processStateTypeShowMenu(IIZ)V
    .locals 9
    .param p1, "processState"    # I
    .param p2, "processParam"    # I
    .param p3, "isLastState"    # Z

    .prologue
    const/16 v8, 0x54

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/16 v6, 0x64

    const/4 v5, 0x1

    .line 2164
    const-string v2, "CameraExecutorManager"

    const-string v3, "processStateTypeShowMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    sparse-switch p1, :sswitch_data_0

    .line 2310
    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default: id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_0
    :goto_0
    return-void

    .line 2168
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 2169
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2172
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2173
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 2174
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2177
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2178
    invoke-static {v5}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {p0, v4, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2181
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2182
    :cond_2
    if-eqz p3, :cond_3

    .line 2183
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2184
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2186
    :cond_3
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2189
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2190
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 2192
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v7, v4, v5}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2196
    :sswitch_3
    if-ne p2, v5, :cond_7

    .line 2197
    iput v5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 2198
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v2

    if-eq v2, v7, :cond_6

    .line 2199
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2207
    :cond_6
    :goto_1
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2202
    :cond_7
    iput v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 2203
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v2

    if-eq v2, v5, :cond_6

    .line 2204
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto :goto_1

    .line 2214
    :sswitch_4
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 2218
    :sswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2219
    const/16 v2, 0x232f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 2220
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2223
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2224
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 2225
    .local v1, "frontCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager$3;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    .line 2232
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2233
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeShortcutMenu()V

    .line 2234
    invoke-static {v8}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v8, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2238
    .end local v1    # "frontCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 2239
    .local v0, "backCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$4;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager$4;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    .line 2246
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2247
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeShortcutMenu()V

    .line 2248
    invoke-static {v8}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v8, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2252
    .end local v0    # "backCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2253
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 2256
    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2257
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 2258
    .restart local v1    # "frontCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$5;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager$5;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    .line 2270
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2271
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeInfoMenu()V

    .line 2272
    const/16 v2, 0x7a

    const/16 v3, 0x7a

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v2, v3, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2276
    .end local v1    # "frontCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 2277
    .restart local v0    # "backCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$6;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager$6;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    .line 2290
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2291
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeInfoMenu()V

    .line 2292
    const/16 v2, 0x7a

    const/16 v3, 0x7a

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v2, v3, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2296
    .end local v0    # "backCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2297
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 2300
    :sswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2301
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "camera.action.ACTION_SELECT_COLORTUNE_EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2302
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2305
    :sswitch_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2306
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "camera.action.ACTION_SELECT_COLORTUNE_EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2307
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2165
    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_4
        0x2b -> :sswitch_4
        0x30 -> :sswitch_4
        0x32 -> :sswitch_4
        0x43 -> :sswitch_2
        0x47 -> :sswitch_3
        0x54 -> :sswitch_6
        0x78 -> :sswitch_5
        0x79 -> :sswitch_5
        0x7a -> :sswitch_7
        0x8b -> :sswitch_8
        0x8d -> :sswitch_9
        0x92 -> :sswitch_1
        0x95 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xb0 -> :sswitch_4
    .end sparse-switch
.end method

.method private registerInterimStateListener()V
    .locals 2

    .prologue
    .line 2316
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$7;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    .line 2345
    .local v0, "cameraInterimStateListener":Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    .line 2346
    return-void
.end method

.method private replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "findName"    # Ljava/lang/String;
    .param p2, "replaceName"    # Ljava/lang/String;

    .prologue
    .line 2349
    const-string v2, ""

    .line 2350
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2351
    .local v0, "isFind":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2352
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    .line 2353
    .local v1, "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    iget-object v4, v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2354
    iget-object v2, v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    .line 2355
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2356
    const/4 v0, 0x1

    .line 2361
    .end local v1    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    :cond_1
    if-eqz v0, :cond_2

    .line 2362
    new-instance v3, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    invoke-direct {v3, p2, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 2364
    :cond_2
    return-void
.end method

.method private requestNLG(II)V
    .locals 12
    .param p1, "requestId"    # I
    .param p2, "type"    # I

    .prologue
    .line 2367
    const-string v8, "CameraExecutorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestNLG, requestId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mLastLandingState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iput p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 2370
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {v2, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 2372
    .local v2, "info":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2374
    .local v6, "paramSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;>;"
    sparse-switch p2, :sswitch_data_0

    .line 2384
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->checkGroupTypeStateByStateId(I)I

    move-result v3

    .line 2385
    .local v3, "nlgType":I
    packed-switch v3, :pswitch_data_0

    .line 2582
    const-string v8, "CameraExecutorManager"

    const-string v9, "return. unknown nlg type"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :goto_1
    return-void

    .line 2377
    .end local v3    # "nlgType":I
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    goto :goto_0

    .line 2387
    .restart local v3    # "nlgType":I
    :pswitch_0
    const/4 v8, 0x2

    if-ne p2, v8, :cond_2

    .line 2388
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2389
    const/16 v8, 0x23

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2390
    const/16 v8, 0x25

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2587
    :cond_0
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2588
    .local v1, "debugScreenParam":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 2589
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    .line 2591
    .local v4, "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->paramName:Ljava/lang/String;

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrName:Ljava/lang/String;

    iget-object v11, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrValue:Ljava/lang/String;

    invoke-virtual {v2, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 2592
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->getRequestStateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->paramName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2392
    .end local v1    # "debugScreenParam":Ljava/lang/StringBuilder;
    .end local v4    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    :cond_1
    const/16 v8, 0x24

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2393
    const/16 v8, 0x28

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2395
    :cond_2
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2396
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2397
    const/16 v8, 0x23

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2398
    const/16 v8, 0x26

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2400
    :cond_3
    const/16 v8, 0x24

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    const/16 v8, 0x27

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2406
    :pswitch_1
    const/16 v8, 0x8

    if-ne p2, v8, :cond_4

    .line 2407
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2408
    :cond_4
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2409
    const/16 v8, 0xc

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2413
    :pswitch_2
    const/4 v8, 0x4

    if-ne p2, v8, :cond_6

    .line 2414
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2415
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2416
    const/16 v8, 0xb

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2418
    :cond_5
    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2419
    const/16 v8, 0xa

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2421
    :cond_6
    const/4 v8, 0x1

    if-ne p2, v8, :cond_8

    .line 2422
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2423
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2425
    :cond_7
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2427
    :cond_8
    const/4 v8, 0x3

    if-ne p2, v8, :cond_9

    .line 2428
    const/4 v8, 0x5

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2429
    :cond_9
    const/4 v8, 0x5

    if-ne p2, v8, :cond_a

    .line 2430
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2431
    :cond_a
    const/4 v8, 0x6

    if-ne p2, v8, :cond_b

    .line 2432
    const/16 v8, 0xd

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2433
    :cond_b
    const/4 v8, 0x2

    if-ne p2, v8, :cond_11

    .line 2434
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    if-eqz v8, :cond_10

    .line 2435
    const/16 v8, 0xa

    if-ne v8, p1, :cond_d

    .line 2436
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2437
    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2438
    const/16 v8, 0xb

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2440
    :cond_c
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    const/16 v8, 0xa

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2444
    :cond_d
    const/16 v8, 0xb

    if-ne v8, p1, :cond_f

    .line 2445
    const/16 v8, 0x37

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v9

    if-ne v8, v9, :cond_e

    .line 2446
    const/16 v8, 0x30

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2448
    :cond_e
    const/16 v8, 0x31

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2451
    :cond_f
    const/16 v8, 0xc

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2455
    :cond_10
    const/4 v8, 0x6

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2457
    :cond_11
    const/16 v8, 0x8

    if-ne p2, v8, :cond_12

    .line 2458
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2459
    :cond_12
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2460
    const/16 v8, 0xa

    if-ne v8, p1, :cond_14

    .line 2461
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2462
    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2463
    const/16 v8, 0xb

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2465
    :cond_13
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2466
    const/16 v8, 0xa

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2469
    :cond_14
    const/16 v8, 0xb

    if-ne v8, p1, :cond_16

    .line 2470
    const/16 v8, 0x37

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v9

    if-ne v8, v9, :cond_15

    .line 2471
    const/16 v8, 0x30

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2473
    :cond_15
    const/16 v8, 0x31

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2476
    :cond_16
    const/16 v8, 0xc

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2482
    :pswitch_3
    const/4 v8, 0x3

    if-ne p2, v8, :cond_17

    .line 2483
    const/16 v8, 0x29

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2485
    :cond_17
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgScreenParamByParamName(Ljava/lang/String;I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v4

    .line 2486
    .restart local v4    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    if-eqz v4, :cond_0

    .line 2487
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2492
    .end local v4    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    :pswitch_4
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgScreenParamByParamName(Ljava/lang/String;I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v5

    .line 2493
    .local v5, "paramByStateName":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    if-eqz v5, :cond_0

    .line 2494
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2498
    .end local v5    # "paramByStateName":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    :pswitch_5
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgScreenParamWithSetting(II)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v7

    .line 2499
    .local v7, "paramWithSetting":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    if-eqz v7, :cond_0

    .line 2500
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2504
    .end local v7    # "paramWithSetting":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    :pswitch_6
    const/4 v8, 0x7

    if-ne p2, v8, :cond_18

    .line 2505
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2506
    :cond_18
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2507
    const/16 v8, 0xe

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2511
    :pswitch_7
    const/4 v8, 0x1

    if-ne p2, v8, :cond_19

    .line 2512
    const/16 v8, 0x12

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2513
    :cond_19
    const/4 v8, 0x6

    if-ne p2, v8, :cond_1a

    .line 2514
    const/16 v8, 0x13

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2515
    :cond_1a
    const/4 v8, 0x2

    if-ne p2, v8, :cond_1b

    .line 2516
    const/16 v8, 0x14

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2517
    :cond_1b
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2518
    const/16 v8, 0x15

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2522
    :pswitch_8
    const/4 v8, 0x7

    if-ne p2, v8, :cond_1c

    .line 2523
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2524
    :cond_1c
    const/4 v8, 0x6

    if-ne p2, v8, :cond_1d

    .line 2525
    const/16 v8, 0x13

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2526
    :cond_1d
    const/16 v8, 0x9

    if-ne p2, v8, :cond_1e

    .line 2527
    const/16 v8, 0x16

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2528
    :cond_1e
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2529
    const/16 v8, 0x17

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2533
    :pswitch_9
    const/4 v8, 0x1

    if-ne p2, v8, :cond_1f

    .line 2534
    const/16 v8, 0x2a

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2535
    :cond_1f
    const/4 v8, 0x6

    if-ne p2, v8, :cond_20

    .line 2536
    const/16 v8, 0x2b

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2537
    :cond_20
    const/4 v8, 0x2

    if-ne p2, v8, :cond_21

    .line 2538
    const/16 v8, 0x2c

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2539
    :cond_21
    const/16 v8, 0xa

    if-ne p2, v8, :cond_22

    .line 2540
    const/16 v8, 0x2e

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2541
    :cond_22
    const/16 v8, 0xb

    if-ne p2, v8, :cond_23

    .line 2542
    const/16 v8, 0x19

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2543
    :cond_23
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2544
    const/16 v8, 0x8a

    if-ne p1, v8, :cond_24

    .line 2545
    const/16 v8, 0x2d

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2547
    :cond_24
    const/16 v8, 0x18

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2552
    :pswitch_a
    const/4 v8, 0x1

    if-ne p2, v8, :cond_25

    .line 2553
    const/16 v8, 0x1a

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2554
    :cond_25
    const/4 v8, 0x6

    if-ne p2, v8, :cond_26

    .line 2555
    const/16 v8, 0x1b

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2556
    :cond_26
    const/4 v8, 0x2

    if-ne p2, v8, :cond_27

    .line 2557
    const/16 v8, 0x1c

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2558
    :cond_27
    const/16 v8, 0x8

    if-ne p2, v8, :cond_28

    .line 2559
    const/16 v8, 0x1e

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2560
    :cond_28
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2561
    const/16 v8, 0x1d

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2565
    :pswitch_b
    const/4 v8, 0x1

    if-ne p2, v8, :cond_29

    .line 2566
    const/16 v8, 0x1f

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2567
    :cond_29
    const/4 v8, 0x6

    if-ne p2, v8, :cond_2a

    .line 2568
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2569
    :cond_2a
    const/4 v8, 0x2

    if-ne p2, v8, :cond_2b

    .line 2570
    const/16 v8, 0x21

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2571
    :cond_2b
    const/16 v8, 0x8

    if-ne p2, v8, :cond_2c

    .line 2572
    const/16 v8, 0x2f

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2573
    :cond_2c
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2574
    const/16 v8, 0x22

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2578
    :pswitch_c
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 2579
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_1

    .line 2595
    .restart local v1    # "debugScreenParam":Ljava/lang/StringBuilder;
    :cond_2d
    const-string v8, "CameraExecutorManager"

    const-string v9, "return. paramSet is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_1

    .line 2600
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2601
    .local v0, "debugResultParam":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_32

    .line 2602
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2f
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    .line 2604
    .local v4, "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    if-eqz v9, :cond_2f

    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 2605
    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 2606
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->getRequestStateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2609
    .end local v4    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    :cond_30
    const-string v8, "CameraExecutorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG  ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , ResultParam : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v8, :cond_31

    .line 2615
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 2618
    :cond_31
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_1

    .line 2611
    :cond_32
    const-string v8, "CameraExecutorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG  ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2374
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 2385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_c
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized sendResult(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 2622
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraExecutorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manager.sendResult, success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v1, :cond_2

    .line 2626
    if-eqz p1, :cond_3

    .line 2627
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2628
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 2630
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 2635
    .local v0, "result":Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 2636
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    .line 2637
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 2638
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2639
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    .line 2640
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2642
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2643
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    .line 2644
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 2645
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2648
    .end local v0    # "result":Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    :cond_2
    monitor-exit p0

    return-void

    .line 2632
    :cond_3
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "result":Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    goto :goto_0

    .line 2622
    .end local v0    # "result":Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private sendResultWithNLG(ZILjava/lang/String;I)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "requestNlgState"    # I
    .param p3, "lastLandingState"    # Ljava/lang/String;
    .param p4, "nlgId"    # I

    .prologue
    .line 2651
    iput-object p3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 2652
    invoke-direct {p0, p2, p4}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 2653
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    .line 2654
    return-void
.end method

.method private setBixbyTouchable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2657
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    .line 2658
    const-string v0, "CameraExecutorManager"

    const-string v1, "setBixbyTouchable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setAppVisible(Z)V

    .line 2660
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setAppTouchable(Z)V

    .line 2662
    :cond_0
    return-void
.end method

.method private updateAntiFogUI()V
    .locals 2

    .prologue
    .line 2665
    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.ACTION_ANTI_FOG_UI_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v0, "antifogIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2667
    return-void
.end method

.method private updateBeautyUI()V
    .locals 2

    .prologue
    .line 2670
    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.ACTION_BEAUTY_UI_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2671
    .local v0, "beautyIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2672
    return-void
.end method


# virtual methods
.method public getAppList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 177
    const-string v1, "CameraExecutorManager"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v1, :cond_0

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "camera.action.AUDIOFOCUS_GAIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 184
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$2;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    const-string v2, "mInitBixbyApiThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 200
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRuleRunning()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 8
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    sparse-switch p1, :sswitch_data_0

    .line 258
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    if-eqz v2, :cond_0

    .line 259
    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraSettingChanged others: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 228
    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    if-eqz v2, :cond_2

    .line 229
    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraSettingChanged  mLastNlgErrorType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 231
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathParam;->checkGroupTypeParameterByParamName(Ljava/lang/String;)I

    move-result v1

    .line 233
    .local v1, "type":I
    if-ne v1, v6, :cond_0

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportModeInCurrentState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 240
    .end local v1    # "type":I
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportModeInCurrentState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v7}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v7}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x24 -> :sswitch_0
        0x84 -> :sswitch_0
    .end sparse-switch
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 268
    const-string v0, "CameraExecutorManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 273
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 281
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->clearInterimStateListener()V

    .line 282
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 283
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .line 284
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 286
    :cond_2
    return-void

    .line 277
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendResult(ZLjava/lang/String;)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "stateId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 289
    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResult, success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stateId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    if-eqz v2, :cond_1

    .line 293
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 300
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 301
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathParam;->checkGroupTypeParameterByParamName(Ljava/lang/String;)I

    move-result v1

    .line 303
    .local v1, "type":I
    if-ne v1, v6, :cond_1

    .line 304
    const-string v3, "String"

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValueType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    .line 307
    iput v5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 308
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 309
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessage(I)Z

    .line 333
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    .end local v1    # "type":I
    :cond_1
    :goto_1
    return-void

    .line 315
    :cond_2
    if-eqz p2, :cond_4

    .line 316
    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current Request state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_1

    .line 320
    :cond_3
    const-string v2, "CameraExecutorManager"

    const-string v3, "ignore senResult"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 323
    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    if-nez v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getStateIDbyName(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_1

    .line 327
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_1

    .line 296
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public setAppList(Ljava/lang/String;)V
    .locals 0
    .param p1, "appList"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setExecutorCommandListener(Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .line 337
    return-void
.end method

.method public setIsWaitCommandResult(Z)V
    .locals 3
    .param p1, "wait"    # Z

    .prologue
    .line 340
    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsWaitCommandResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 342
    return-void
.end method
