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

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .line 108
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    .line 114
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    .line 116
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/State;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    .line 118
    iput v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 119
    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    .line 120
    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    .line 121
    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 122
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    .line 127
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$1;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 166
    iput-object p3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 169
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    .line 171
    iput p4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    .line 172
    iput p5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    .line 173
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

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .line 108
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    .line 113
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    .line 114
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 115
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    .line 116
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/State;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    .line 118
    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 119
    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    .line 120
    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    .line 121
    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 122
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    .line 124
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    .line 127
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$1;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 153
    iput-object p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDimController()Lcom/sec/android/app/camera/DimController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    .line 157
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    .line 159
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    .line 160
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/CameraExecutorManager;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # Landroid/media/AudioManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
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
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CameraExecutorManager;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processState(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/CameraExecutorManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/DimController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/CameraExecutorManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/CameraExecutorManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I

    .prologue
    .line 72
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
    .line 72
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
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeShowMenu(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CameraExecutorManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/CameraExecutorManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeLaunchToOtherApp(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/CameraExecutorManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeActionCapture(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/CameraExecutorManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/CameraExecutorManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/CameraExecutorManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;
    .param p1, "x1"    # Lcom/samsung/android/sdk/bixby/BixbyApi;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/CameraExecutorManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getCameraExecutorManager()Lcom/sec/android/app/camera/CameraExecutorManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraExecutorManager;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    return-void
.end method

.method private addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
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

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_1
    return-void
.end method

.method private clearInterimStateListener()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    .line 356
    :cond_0
    return-void
.end method

.method private getCameraExecutorManager()Lcom/sec/android/app/camera/CameraExecutorManager;
    .locals 0

    .prologue
    .line 359
    return-object p0
.end method

.method private getEffectIdByEffectName(Ljava/lang/String;I)I
    .locals 6
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "effectCategory"    # I

    .prologue
    .line 364
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 365
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 366
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    .line 367
    .local v0, "item":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 368
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v3, "Filter"

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 369
    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v2

    .line 380
    .end local v0    # "item":Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;
    :goto_0
    return v2

    .line 374
    :cond_1
    const-string v2, "Auto"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
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

    .line 376
    const/16 v2, 0x400

    goto :goto_0

    .line 379
    :cond_2
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v3, "Filter"

    invoke-direct {v2, v3, p1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 380
    const/16 v2, -0x7d0

    goto :goto_0
.end method

.method private getShootingModeNameByModeId(I)Ljava/lang/String;
    .locals 3
    .param p1, "modeId"    # I

    .prologue
    .line 384
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

    .line 385
    sparse-switch p1, :sswitch_data_0

    .line 450
    const-string v0, "Auto"

    :goto_0
    return-object v0

    .line 387
    :sswitch_0
    const-string v0, "Animated GIF"

    goto :goto_0

    .line 389
    :sswitch_1
    const-string v0, "Anti-fog"

    goto :goto_0

    .line 391
    :sswitch_2
    const-string v0, "Aqua"

    goto :goto_0

    .line 393
    :sswitch_3
    const-string v0, "Auto"

    goto :goto_0

    .line 395
    :sswitch_4
    const-string v0, "Beauty face"

    goto :goto_0

    .line 398
    :sswitch_5
    const-string v0, "Panorama"

    goto :goto_0

    .line 401
    :sswitch_6
    const-string v0, "Continuous shot"

    goto :goto_0

    .line 403
    :sswitch_7
    const-string v0, "Dual Camera"

    goto :goto_0

    .line 405
    :sswitch_8
    const-string v0, "Tag shot"

    goto :goto_0

    .line 407
    :sswitch_9
    const-string v0, "Fast motion"

    goto :goto_0

    .line 409
    :sswitch_a
    const-string v0, "Food"

    goto :goto_0

    .line 411
    :sswitch_b
    const-string v0, "Hyperlapse"

    goto :goto_0

    .line 413
    :sswitch_c
    const-string v0, "Night"

    goto :goto_0

    .line 416
    :sswitch_d
    const-string v0, "Pro"

    goto :goto_0

    .line 418
    :sswitch_e
    const-string v0, "Rear-cam selfie"

    goto :goto_0

    .line 420
    :sswitch_f
    const-string v0, "HDR (Rich tone)"

    goto :goto_0

    .line 422
    :sswitch_10
    const-string v0, "Selective focus"

    goto :goto_0

    .line 424
    :sswitch_11
    const-string v0, "Selfie"

    goto :goto_0

    .line 426
    :sswitch_12
    const-string v0, "Slow motion"

    goto :goto_0

    .line 428
    :sswitch_13
    const-string v0, "Sound & shot"

    goto :goto_0

    .line 430
    :sswitch_14
    const-string v0, "Sports"

    goto :goto_0

    .line 432
    :sswitch_15
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const-string v0, "Front Video Collage"

    goto :goto_0

    .line 435
    :cond_0
    const-string v0, "Rear Video Collage"

    goto :goto_0

    .line 438
    :sswitch_16
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const-string v0, "Front Virtual shot"

    goto :goto_0

    .line 441
    :cond_1
    const-string v0, "Rear Virtual shot"

    goto :goto_0

    .line 446
    :sswitch_17
    const-string v0, "Wide selfie"

    goto :goto_0

    .line 448
    :sswitch_18
    const-string v0, "Wechat video"

    goto :goto_0

    .line 385
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

    .line 455
    const-string v3, "CameraExecutorManager"

    const-string v4, "getSupportedModeSetInCurrentState"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 458
    .local v1, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v3, :cond_1

    .line 459
    invoke-static {v5}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 461
    .local v2, "supportedSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 462
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 496
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

    .line 497
    return-object v1

    .line 464
    .end local v2    # "supportedSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v0

    .line 465
    .local v0, "currentSubFragment":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 466
    packed-switch v0, :pswitch_data_0

    .line 491
    :cond_2
    :goto_1
    :pswitch_0
    const/16 v3, 0xbc

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getSupportedSettingSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 493
    .restart local v2    # "supportedSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 469
    .end local v2    # "supportedSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :pswitch_1
    const/16 v3, 0xb6

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    :pswitch_2
    const/16 v3, 0xb4

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    :pswitch_3
    const/16 v3, 0x30

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 478
    :pswitch_4
    const/16 v3, 0x29

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 481
    :pswitch_5
    const/16 v3, 0x32

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 484
    :pswitch_6
    const/16 v3, 0x2b

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 487
    :pswitch_7
    const/16 v3, 0x61

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 466
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
    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;->onExecutorCommand(I)V

    .line 503
    :cond_0
    return-void
.end method

.method private hideEffectMenuActive()V
    .locals 2

    .prologue
    .line 506
    const/16 v0, 0x7f

    .line 507
    .local v0, "commandId":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 508
    return-void
.end method

.method private hideShootingModeMenu()V
    .locals 2

    .prologue
    .line 512
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    const/16 v0, 0x64

    .line 517
    .local v0, "commandId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 518
    return-void

    .line 515
    .end local v0    # "commandId":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "commandId":I
    goto :goto_0
.end method

.method private initLastLandingState()V
    .locals 3

    .prologue
    .line 521
    const-string v0, "CameraExecutorManager"

    const-string v1, "initLastLandingState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 528
    :goto_0
    return-void

    .line 525
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

    .line 526
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

    .line 531
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

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 535
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

    .line 539
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEffectMenuActive()Z
    .locals 2

    .prologue
    .line 543
    const/16 v0, 0x7f

    .line 544
    .local v0, "commandId":I
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    const/4 v1, 0x1

    .line 546
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
    .line 550
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getModesMap(I)Ljava/util/Map;

    move-result-object v0

    .line 551
    .local v0, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 554
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

    .line 558
    if-ne p2, p3, :cond_1

    .line 559
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNlgLandingStateID(I)I

    move-result v0

    .line 560
    .local v0, "landingStateId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 566
    .end local v0    # "landingStateId":I
    :goto_0
    return v1

    .line 563
    .restart local v0    # "landingStateId":I
    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 566
    .end local v0    # "landingStateId":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShootingModeMenuActive()Z
    .locals 2

    .prologue
    .line 571
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    const/16 v0, 0x64

    .line 576
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

    .line 577
    const/4 v1, 0x1

    .line 578
    :goto_1
    return v1

    .line 574
    .end local v0    # "commandId":I
    :cond_0
    const/4 v0, 0x2

    .restart local v0    # "commandId":I
    goto :goto_0

    .line 578
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 583
    .local v1, "isSupportFrontCameraType":Z
    const/4 v0, 0x0

    .line 584
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

    .line 585
    :cond_0
    const/4 v0, 0x1

    .line 593
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 594
    const/4 v2, 0x1

    .line 599
    :goto_1
    return v2

    .line 586
    :cond_2
    const-string v2, "Selective focus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 587
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v2, :cond_1

    .line 588
    const/4 v0, 0x1

    goto :goto_0

    .line 590
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

    .line 591
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 596
    :cond_5
    if-eqz v1, :cond_6

    .line 597
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    goto :goto_1

    .line 599
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
    .line 605
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 606
    .local v0, "currentSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 607
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

    .line 608
    .local v1, "stateId":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    const/4 v2, 0x1

    .line 612
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

    .line 616
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-nez v2, :cond_0

    .line 617
    const-string v2, "CameraExecutorManager"

    const-string v3, "isSupportedModeForRequestedShootingMode mIsCameraActivity is set"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_0
    return v1

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isAvailableChangeShootingMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 622
    if-eqz p3, :cond_1

    sget v2, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_FRONT_SHOOTINGMODE:I

    if-eq p3, v2, :cond_1

    .line 623
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_0

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-static {p3, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 629
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 630
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 631
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 632
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 633
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto :goto_0

    .line 636
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 637
    const/4 v1, 0x1

    goto :goto_0

    .line 639
    :cond_3
    const/4 v2, 0x6

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_0
.end method

.method private isUsingFlashAvailable()Z
    .locals 1

    .prologue
    .line 645
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

    .line 646
    :cond_0
    const/4 v0, 0x0

    .line 648
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWaitHideMenu()Z
    .locals 2

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "isWaitHideMenu":Z
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideEffectMenuActive()V

    .line 655
    const/4 v0, 0x1

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideShootingModeMenu()V

    .line 659
    const/4 v0, 0x1

    .line 661
    :cond_1
    if-eqz v0, :cond_2

    .line 662
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 664
    :cond_2
    return v0
.end method

.method private launchShootingModeMenu()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 669
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    const/16 v1, 0x64

    .line 675
    .local v1, "commandId":I
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isAvailableChangeShootingMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 676
    const/4 v2, 0x0

    .line 687
    :cond_0
    :goto_1
    return v2

    .line 672
    .end local v1    # "commandId":I
    :cond_1
    const/4 v1, 0x2

    .restart local v1    # "commandId":I
    goto :goto_0

    .line 678
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 679
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 680
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 681
    .local v0, "backgroundAnimation":Landroid/view/animation/Animation;
    const v3, 0x7f0b000c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 682
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 683
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 684
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v3

    const/16 v4, 0x1d4c

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->onPageSelected(I)V

    .line 685
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
    .line 691
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v26

    .line 692
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

    .line 694
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v15

    .line 699
    .local v15, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/camera/executor/RulePathState;->getStateIDbyName(Ljava/lang/String;)I

    move-result v25

    .line 700
    .local v25, "stateId":I
    const/16 v28, -0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 701
    const-string v28, "CameraExecutorManager"

    const-string v29, "Can\'t process unknown processId"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/executor/RulePathState;->checkGroupTypeStateByStateId(I)I

    move-result v18

    .line 707
    .local v18, "requestGroupType":I
    const/4 v10, 0x0

    .line 708
    .local v10, "isParameterAvailable":Z
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 709
    .local v12, "msg":Landroid/os/Message;
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->what:I

    .line 710
    move-object/from16 v0, p1

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 711
    move/from16 v0, v25

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 712
    const/16 v28, -0x3e8

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 713
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

    .line 714
    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_4

    .line 715
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v14

    .line 716
    .local v14, "paramName":Ljava/lang/String;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v22

    .line 717
    .local v22, "slotValue":Ljava/lang/String;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValueType()Ljava/lang/String;

    move-result-object v24

    .line 718
    .local v24, "slotValueType":Ljava/lang/String;
    const-string v23, ""

    .line 719
    .local v23, "slotValue2":Ljava/lang/String;
    const/16 v28, 0xbd

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 720
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->setAppList(Ljava/lang/String;)V

    .line 722
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 723
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v23

    .line 725
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

    .line 726
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

    .line 727
    const-string v28, "CameraExecutorManager"

    const-string v29, "slotValue is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    .end local v14    # "paramName":Ljava/lang/String;
    .end local v22    # "slotValue":Ljava/lang/String;
    .end local v23    # "slotValue2":Ljava/lang/String;
    .end local v24    # "slotValueType":Ljava/lang/String;
    :cond_4
    :goto_1
    packed-switch v18, :pswitch_data_0

    .line 1027
    :pswitch_0
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 729
    .restart local v14    # "paramName":Ljava/lang/String;
    .restart local v22    # "slotValue":Ljava/lang/String;
    .restart local v23    # "slotValue2":Ljava/lang/String;
    .restart local v24    # "slotValueType":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x1

    .line 730
    invoke-static {v14}, Lcom/sec/android/app/camera/executor/RulePathParam;->checkGroupTypeParameterByParamName(Ljava/lang/String;)I

    move-result v27

    .line 731
    .local v27, "type":I
    packed-switch v27, :pswitch_data_1

    goto :goto_1

    .line 919
    :pswitch_1
    const-string v28, "int"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 920
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 733
    :pswitch_2
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 734
    move-object/from16 v11, v22

    .line 735
    .local v11, "modeName":Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/app/camera/executor/RulePathParam;->getShootingModeNameFromModeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 736
    .local v13, "newModeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeIdByModeName(Ljava/lang/String;)I

    move-result v20

    .line 737
    .local v20, "shootingModeId":I
    const-string v28, "Auto"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    if-nez v20, :cond_6

    .line 738
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "Mode"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 740
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

    .line 741
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    .line 742
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto/16 :goto_0

    .line 745
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

    .line 746
    const-string v28, "_unsupported"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 747
    const/16 v28, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 748
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v28

    if-nez v28, :cond_0

    .line 749
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 752
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isWaitHideMenu()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 756
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 759
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 760
    const/16 v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 761
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportedModeForRequestedShootingMode(ILjava/lang/String;I)Z

    move-result v28

    if-nez v28, :cond_a

    .line 762
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v28

    if-nez v28, :cond_0

    .line 763
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 766
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 767
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 768
    const/16 v28, 0xa

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 769
    const/16 v28, 0x1

    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 770
    :cond_b
    const/16 v28, 0xb

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 771
    const/16 v28, 0x37

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 772
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v28

    packed-switch v28, :pswitch_data_2

    .line 789
    :goto_2
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    goto/16 :goto_0

    .line 775
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0x3

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    .line 778
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0x2

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    .line 781
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0x5

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    .line 784
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0xa

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    .line 792
    :cond_c
    const/16 v28, 0x1

    const/16 v29, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 795
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

    .line 798
    :cond_e
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 802
    :cond_f
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToModeDownloadPage(I)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 803
    const/16 v28, 0x74

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 804
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

    .line 805
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto/16 :goto_0

    .line 810
    :cond_10
    const/16 v28, 0x4

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 811
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 812
    const/16 v28, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    goto/16 :goto_0

    .line 818
    .end local v11    # "modeName":Ljava/lang/String;
    .end local v13    # "newModeName":Ljava/lang/String;
    .end local v20    # "shootingModeId":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isWaitHideMenu()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 822
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 825
    :cond_12
    const-string v28, "int"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 827
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 828
    .local v6, "cameraId":I
    iput v6, v12, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 829
    .end local v6    # "cameraId":I
    :catch_0
    move-exception v8

    .line 830
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 831
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

    .line 836
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :pswitch_8
    const-string v28, "int"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 838
    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 839
    :catch_1
    move-exception v8

    .line 840
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getCommandId(Ljava/lang/String;)I

    move-result v7

    .line 841
    .local v7, "commandId":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_13

    .line 842
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 843
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 844
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

    .line 846
    :cond_13
    const/16 v28, 0x1db0

    move/from16 v0, v28

    if-le v7, v0, :cond_14

    const/16 v28, 0x1dbb

    move/from16 v0, v28

    if-ge v7, v0, :cond_14

    .line 847
    iput v7, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 849
    :cond_14
    invoke-static {v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 854
    .end local v7    # "commandId":I
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 855
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getCommandId(Ljava/lang/String;)I

    move-result v7

    .line 856
    .restart local v7    # "commandId":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_16

    .line 857
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 858
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    goto/16 :goto_1

    .line 860
    :cond_16
    const/16 v28, 0x1db0

    move/from16 v0, v28

    if-le v7, v0, :cond_17

    const/16 v28, 0x1dbb

    move/from16 v0, v28

    if-ge v7, v0, :cond_17

    .line 861
    iput v7, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 863
    :cond_17
    invoke-static {v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 869
    .end local v7    # "commandId":I
    :pswitch_9
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 871
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1a

    .line 872
    const/4 v9, 0x1

    .line 873
    .local v9, "isFrontPictureSize":Z
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v17

    .line 874
    .local v17, "ratio":Ljava/lang/String;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v16

    .line 875
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

    if-eqz v28, :cond_18

    .line 876
    const/4 v9, 0x0

    .line 877
    :cond_18
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 878
    const/16 v28, -0x3e8

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 881
    :cond_19
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1, v9}, Lcom/sec/android/app/camera/executor/RulePathParam;->getResolutionFromResolutionParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 882
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

    .line 883
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 884
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 888
    .end local v9    # "isFrontPictureSize":Z
    .end local v16    # "pixel":Ljava/lang/String;
    .end local v17    # "ratio":Ljava/lang/String;
    .end local v21    # "size":Ljava/lang/String;
    :cond_1a
    move-object/from16 v21, v22

    .line 889
    .restart local v21    # "size":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v19

    .line 890
    .local v19, "resolutionId":I
    const/16 v28, -0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    .line 891
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

    .line 892
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

    .line 900
    .end local v19    # "resolutionId":I
    :cond_1b
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 901
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

    .line 894
    .restart local v19    # "resolutionId":I
    :cond_1c
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "PictureSize"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 895
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "VideoSize"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 896
    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 905
    .end local v19    # "resolutionId":I
    .end local v21    # "size":Ljava/lang/String;
    :pswitch_a
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 906
    const/16 v28, 0x4c

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 907
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 908
    :cond_1d
    const/16 v28, 0x4d

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    .line 909
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 911
    :cond_1e
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 912
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x7d0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 913
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 921
    :cond_1f
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 922
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

    .line 931
    .end local v14    # "paramName":Ljava/lang/String;
    .end local v22    # "slotValue":Ljava/lang/String;
    .end local v23    # "slotValue2":Ljava/lang/String;
    .end local v24    # "slotValueType":Ljava/lang/String;
    .end local v27    # "type":I
    :pswitch_b
    const/16 v28, 0x37

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isWaitHideMenu()Z

    move-result v28

    if-eqz v28, :cond_21

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 936
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 939
    :cond_21
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x3e8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_22

    .line 940
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 941
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

    .line 945
    :cond_22
    const/16 v28, 0x24

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 969
    :cond_23
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 1031
    :cond_24
    :goto_3
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 947
    :cond_25
    if-nez v10, :cond_23

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportModeInCurrentState(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29

    .line 949
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_28

    .line 950
    const/16 v28, 0xa

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_27

    .line 951
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v28

    if-eqz v28, :cond_26

    .line 952
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

    .line 953
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto/16 :goto_0

    .line 955
    :cond_26
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 958
    :cond_27
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

    .line 961
    :cond_28
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 964
    :cond_29
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 972
    :pswitch_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v28

    if-eqz v28, :cond_2a

    .line 974
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 977
    :cond_2a
    const/16 v28, 0x78

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingLandingState(Ljava/lang/String;)V

    .line 984
    const/16 v28, 0x78

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingLandingState(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 980
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingLandingState(Ljava/lang/String;)V

    .line 981
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 991
    :pswitch_e
    const/16 v28, 0x4b

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 992
    const/16 v28, 0x7f

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 993
    :cond_2c
    const/16 v28, 0x95

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v28

    if-eqz v28, :cond_2d

    .line 995
    const/16 v28, 0x81

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 997
    :cond_2d
    const/16 v28, 0x71

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 999
    :cond_2e
    const/16 v28, 0x92

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2f

    .line 1000
    const/16 v28, 0x80

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1001
    :cond_2f
    const/16 v28, 0xad

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_30

    .line 1002
    const/16 v28, 0x75

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1003
    :cond_30
    const/16 v28, 0xb6

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_24

    .line 1004
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

    if-ne v0, v1, :cond_24

    .line 1005
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

    .line 1006
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1007
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

    .line 1008
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1010
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1016
    :pswitch_f
    const/16 v28, 0x51

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_34

    .line 1017
    const/16 v28, 0x74

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1018
    :cond_34
    const/16 v28, 0x53

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_24

    .line 1019
    const/16 v28, 0x232a

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    .line 1023
    :pswitch_10
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_3

    .line 929
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 731
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 773
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

    .line 1035
    const-string v2, "CameraExecutorManager"

    const-string v3, "processStateByBuildCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 1037
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1038
    .local v0, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1039
    const-string v2, "CameraExecutorManager"

    const-string v3, "Execute Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    .end local v0    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_0
    :goto_0
    return v1

    .line 1042
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

    .line 1050
    const-string v0, "CameraExecutorManager"

    const-string v1, "processStateTypeActionCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    sparse-switch p1, :sswitch_data_0

    .line 1073
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

    .line 1076
    :goto_0
    return-void

    .line 1054
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1059
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    goto :goto_0

    .line 1063
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->isRecordingAvailable(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1064
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1068
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 1069
    const/16 v0, 0x36

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1051
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x36 -> :sswitch_1
    .end sparse-switch
.end method

.method private processStateTypeChangeSettingByMultiValue(IIZ)V
    .locals 23
    .param p1, "processState"    # I
    .param p2, "processParam"    # I
    .param p3, "isLastState"    # Z

    .prologue
    .line 1079
    const-string v19, "CameraExecutorManager"

    const-string v20, "processStateTypeChangeSettingByMultiValue"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    sparse-switch p1, :sswitch_data_0

    .line 1662
    const-string v19, "CameraExecutorManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "default: id : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1084
    :sswitch_0
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1085
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "TimerSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const/4 v15, 0x6

    .line 1102
    .local v15, "requestNlgId":I
    :goto_1
    if-eqz p3, :cond_5

    .line 1103
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1087
    .end local v15    # "requestNlgId":I
    :cond_1
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1088
    const/4 v15, 0x1

    .restart local v15    # "requestNlgId":I
    goto :goto_1

    .line 1090
    .end local v15    # "requestNlgId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "TimerSetting"

    const/16 v21, 0x6

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1091
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 1094
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 1095
    const/4 v15, 0x2

    .restart local v15    # "requestNlgId":I
    goto :goto_1

    .line 1097
    .end local v15    # "requestNlgId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(II)V

    .line 1098
    const/16 v15, 0x64

    .line 1099
    .restart local v15    # "requestNlgId":I
    const/16 v19, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_1

    .line 1105
    :cond_5
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ne v15, v0, :cond_6

    .line 1106
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1108
    :cond_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1116
    .end local v15    # "requestNlgId":I
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v17, v0

    .line 1117
    .local v17, "timerCameraId":I
    const/16 v19, 0x42

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v19, 0x4a

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1118
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v17, v0

    .line 1120
    :cond_8
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1121
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "TimerSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const/4 v15, 0x6

    .line 1135
    .restart local v15    # "requestNlgId":I
    :goto_2
    if-eqz p3, :cond_c

    .line 1136
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1123
    .end local v15    # "requestNlgId":I
    :cond_9
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1124
    const/4 v15, 0x1

    .restart local v15    # "requestNlgId":I
    goto :goto_2

    .line 1126
    .end local v15    # "requestNlgId":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "TimerSetting"

    const/16 v21, 0x6

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 1128
    const/4 v15, 0x2

    .restart local v15    # "requestNlgId":I
    goto :goto_2

    .line 1130
    .end local v15    # "requestNlgId":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(II)V

    .line 1131
    const/16 v15, 0x64

    .line 1132
    .restart local v15    # "requestNlgId":I
    const/16 v19, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto :goto_2

    .line 1138
    :cond_c
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ne v15, v0, :cond_d

    .line 1139
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1141
    :cond_d
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1146
    .end local v15    # "requestNlgId":I
    .end local v17    # "timerCameraId":I
    :sswitch_2
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 1147
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "GridlinesSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1149
    :cond_e
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1150
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    .line 1152
    const/16 v19, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1154
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "GridlinesSetting"

    const/16 v21, 0x13

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    .line 1157
    const/16 v19, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1158
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1163
    :sswitch_3
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 1164
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "VolumekeyFunctionSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const/16 v19, 0x1

    const/16 v20, 0xab

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1175
    :cond_10
    :goto_3
    const/16 v19, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1166
    :cond_11
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 1167
    const/16 v19, 0x1

    const/16 v20, 0xab

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_3

    .line 1169
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "VolumekeyFunctionSetting"

    const/16 v21, 0x49

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_10

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    .line 1172
    const/16 v19, 0x1

    const/16 v20, 0xab

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_3

    .line 1178
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1179
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1182
    :cond_13
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 1183
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1192
    :cond_14
    :goto_4
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1184
    :cond_15
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v19

    if-nez v19, :cond_16

    .line 1185
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_4

    .line 1187
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_14

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(II)V

    .line 1189
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_4

    .line 1195
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 1196
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1199
    :cond_17
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 1200
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1209
    :cond_18
    :goto_5
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1201
    :cond_19
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 1202
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_5

    .line 1204
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_18

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(II)V

    .line 1206
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_5

    .line 1212
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 1213
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1216
    :cond_1b
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 1217
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1226
    :cond_1c
    :goto_6
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1218
    :cond_1d
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v19

    if-nez v19, :cond_1e

    .line 1219
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_6

    .line 1221
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_1c

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(II)V

    .line 1223
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_6

    .line 1229
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 1230
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1233
    :cond_1f
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_21

    .line 1234
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1243
    :cond_20
    :goto_7
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1235
    :cond_21
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v19

    if-nez v19, :cond_22

    .line 1236
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_7

    .line 1238
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_20

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(II)V

    .line 1240
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_7

    .line 1246
    :sswitch_8
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1247
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1252
    :sswitch_9
    const/16 v8, 0x2713

    .line 1253
    .local v8, "commandId":I
    const/16 v19, 0x4f

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_24

    .line 1254
    sget-boolean v19, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-nez v19, :cond_23

    .line 1255
    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1258
    :cond_23
    const/16 v8, 0x2711

    .line 1260
    :cond_24
    const/16 v19, 0xb2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    .line 1261
    sget-boolean v19, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WATERMARK:Z

    if-nez v19, :cond_25

    .line 1262
    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1265
    :cond_25
    const/16 v8, 0x2712

    .line 1267
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v19

    const/16 v20, 0x7f

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 1269
    .local v10, "effectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    if-eqz v10, :cond_27

    .line 1270
    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    .line 1272
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 1273
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1276
    .end local v8    # "commandId":I
    .end local v10    # "effectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    const/16 v20, 0x1e78

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    .line 1277
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_29

    .line 1278
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1287
    :cond_28
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v19

    const/16 v20, 0x7f

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 1288
    .local v5, "basicEffectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    if-eqz v5, :cond_0

    .line 1289
    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    .line 1290
    const/16 v19, 0x1e78

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    goto/16 :goto_0

    .line 1279
    .end local v5    # "basicEffectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    :cond_29
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a

    .line 1280
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_8

    .line 1282
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_28

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    .line 1284
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_8

    .line 1294
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    const/16 v20, 0x1e79

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    .line 1295
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_2c

    .line 1296
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1305
    :cond_2b
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v19

    const/16 v20, 0x7f

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .line 1306
    .local v6, "beautyEffectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    if-eqz v6, :cond_0

    .line 1307
    invoke-virtual {v6}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    .line 1308
    const/16 v19, 0x1e79

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    goto/16 :goto_0

    .line 1297
    .end local v6    # "beautyEffectMenu":Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    :cond_2c
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_2d

    .line 1298
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_9

    .line 1300
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_2b

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    .line 1302
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_9

    .line 1312
    :sswitch_c
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v19

    if-nez v19, :cond_2e

    .line 1314
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 1315
    const/16 v19, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1317
    :cond_2e
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1319
    :cond_2f
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_30

    .line 1320
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1322
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v9

    .line 1324
    .local v9, "currentEffectMode":I
    if-nez v9, :cond_31

    if-nez p2, :cond_32

    :cond_31
    if-eqz v9, :cond_33

    if-nez p2, :cond_33

    .line 1326
    :cond_32
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_0

    .line 1328
    :cond_33
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1333
    .end local v9    # "currentEffectMode":I
    :sswitch_d
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_34

    .line 1334
    const/16 v19, 0x96

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 1335
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1336
    :cond_34
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_35

    .line 1337
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "HyperLapseSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const/16 v19, 0x96

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 1339
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1341
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "HyperLapseSetting"

    const/16 v21, 0x170d

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRecordingMotionSpeed()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRecordingMotionSpeed(I)V

    .line 1344
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1349
    :sswitch_e
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_36

    .line 1350
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1351
    :cond_36
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_37

    .line 1352
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1355
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ProSetting"

    const/16 v21, 0xb

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraExposureMeter()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraExposureMeter(I)V

    .line 1358
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1363
    :sswitch_f
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_38

    .line 1364
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1365
    :cond_38
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    .line 1366
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1369
    :cond_39
    new-instance v19, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v20, "ProSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v21, v0

    const/16 v22, 0x91

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    .line 1372
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1377
    :sswitch_10
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_3c

    .line 1378
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_3a

    .line 1379
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result p2

    .line 1394
    :goto_a
    new-instance v14, Landroid/content/Intent;

    const-string v19, "camera.action.ACTION_CHANGE_ISO"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v14, "isoIntent":Landroid/content/Intent;
    const-string v19, "pro_settingvalue"

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1397
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1383
    .end local v14    # "isoIntent":Landroid/content/Intent;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ProSetting"

    const/16 v21, 0xa

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_3b

    .line 1385
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_a

    .line 1387
    :cond_3b
    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_a

    .line 1391
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result p2

    .line 1392
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_a

    .line 1400
    :sswitch_11
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_3f

    .line 1401
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_3d

    .line 1402
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p2

    .line 1417
    :goto_b
    new-instance v16, Landroid/content/Intent;

    const-string v19, "camera.action.ACTION_CHANGE_SHUTTER_SPEED"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1418
    .local v16, "shutterSpeedIntent":Landroid/content/Intent;
    const-string v19, "pro_settingvalue"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1420
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1406
    .end local v16    # "shutterSpeedIntent":Landroid/content/Intent;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ProSetting"

    const/16 v21, 0x1f

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_3e

    .line 1408
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_b

    .line 1410
    :cond_3e
    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_b

    .line 1414
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p2

    .line 1415
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_b

    .line 1423
    :sswitch_12
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_42

    .line 1424
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_40

    .line 1425
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p2

    .line 1440
    :goto_c
    new-instance v18, Landroid/content/Intent;

    const-string v19, "camera.action.ACTION_CHANGE_WHITEBALANCE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v18, "wbIntent":Landroid/content/Intent;
    const-string v19, "pro_settingvalue"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1443
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1429
    .end local v18    # "wbIntent":Landroid/content/Intent;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ProSetting"

    const/16 v21, 0x9

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_41

    .line 1431
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_c

    .line 1433
    :cond_41
    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_c

    .line 1437
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p2

    .line 1438
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_c

    .line 1446
    :sswitch_13
    const/4 v13, -0x1

    .line 1447
    .local v13, "focusLength":I
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_48

    .line 1448
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_44

    .line 1449
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v13

    .line 1473
    :cond_43
    :goto_d
    new-instance v12, Landroid/content/Intent;

    const-string v19, "camera.action.ACTION_CHANGE_FOCUS_MODE"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v12, "focusIntent":Landroid/content/Intent;
    const-string v19, "pro_settingvalue"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1476
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1453
    .end local v12    # "focusIntent":Landroid/content/Intent;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ProSetting"

    const/16 v21, 0x5

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1454
    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_46

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_45

    .line 1456
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_d

    .line 1458
    :cond_45
    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_d

    .line 1460
    :cond_46
    const/16 v19, 0x3

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_43

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_47

    .line 1462
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_d

    .line 1464
    :cond_47
    const/4 v13, 0x0

    .line 1465
    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_d

    .line 1470
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v13

    .line 1471
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_d

    .line 1479
    .end local v13    # "focusLength":I
    :sswitch_14
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_4c

    .line 1480
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_49

    const/16 v19, 0x14

    move/from16 v0, p2

    move/from16 v1, v19

    if-gt v0, v1, :cond_49

    const/16 v19, -0x14

    move/from16 v0, p2

    move/from16 v1, v19

    if-ge v0, v1, :cond_4a

    .line 1481
    :cond_49
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result p2

    .line 1496
    :goto_e
    new-instance v11, Landroid/content/Intent;

    const-string v19, "camera.action.ACTION_CHANGE_EXPOSURE"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v11, "evIntent":Landroid/content/Intent;
    const-string v19, "pro_settingvalue"

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1499
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1485
    .end local v11    # "evIntent":Landroid/content/Intent;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ProSetting"

    const/16 v21, 0x7

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_4b

    .line 1487
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_e

    .line 1489
    :cond_4b
    const/16 v19, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_e

    .line 1493
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result p2

    .line 1494
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_e

    .line 1502
    :sswitch_15
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_4f

    .line 1503
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_4d

    .line 1504
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const/4 v15, 0x6

    .line 1506
    .restart local v15    # "requestNlgId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result p2

    .line 1519
    :goto_f
    new-instance v7, Landroid/content/Intent;

    const-string v19, "camera.action.ACTION_CHANGE_COLORTUNE"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1520
    .local v7, "colorTuneIntent":Landroid/content/Intent;
    const-string v19, "pro_settingvalue"

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1522
    if-eqz p3, :cond_50

    .line 1523
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1508
    .end local v7    # "colorTuneIntent":Landroid/content/Intent;
    .end local v15    # "requestNlgId":I
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ProSetting"

    const/16 v21, 0xe

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_4e

    .line 1510
    const/4 v15, 0x2

    .restart local v15    # "requestNlgId":I
    goto :goto_f

    .line 1512
    .end local v15    # "requestNlgId":I
    :cond_4e
    const/16 v15, 0x64

    .restart local v15    # "requestNlgId":I
    goto :goto_f

    .line 1516
    .end local v15    # "requestNlgId":I
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result p2

    .line 1517
    const/4 v15, 0x1

    .restart local v15    # "requestNlgId":I
    goto :goto_f

    .line 1525
    .restart local v7    # "colorTuneIntent":Landroid/content/Intent;
    :cond_50
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 1526
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ne v15, v0, :cond_51

    .line 1527
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1528
    :cond_51
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_53

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v19

    if-nez v19, :cond_52

    .line 1530
    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1532
    :cond_52
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1535
    :cond_53
    if-nez p2, :cond_54

    .line 1536
    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    .line 1538
    :cond_54
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 1548
    .end local v7    # "colorTuneIntent":Landroid/content/Intent;
    .end local v15    # "requestNlgId":I
    :sswitch_16
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_5e

    .line 1549
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_5d

    .line 1550
    const/16 v19, 0x98

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_58

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "BeautySetting"

    const/16 v21, 0x77

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1563
    :goto_10
    const/16 v19, 0x8

    move/from16 v0, p2

    move/from16 v1, v19

    if-gt v0, v1, :cond_55

    if-gez p2, :cond_56

    .line 1564
    :cond_55
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1565
    const/16 p2, -0x7d0

    .line 1570
    :cond_56
    :goto_11
    const/16 v19, 0x9a

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_5f

    .line 1571
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_57

    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_57

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    .line 1573
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1575
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v19

    const/16 v20, 0x1965

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1576
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1553
    :cond_58
    const/16 v19, 0x1db1

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_59

    const/16 v19, 0x1db7

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_59

    const/16 v19, 0x1db3

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_59

    const/16 v19, 0x1db5

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_5b

    .line 1554
    :cond_59
    const/16 p2, 0x0

    .line 1558
    :cond_5a
    :goto_12
    new-instance v19, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v20, "BeautySetting"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    goto/16 :goto_10

    .line 1555
    :cond_5b
    const/16 v19, 0x1db2

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_5c

    const/16 v19, 0x1db8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_5c

    const/16 v19, 0x1db4

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_5c

    const/16 v19, 0x1db6

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_5a

    .line 1556
    :cond_5c
    const/16 p2, 0x8

    goto :goto_12

    .line 1561
    :cond_5d
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "BeautySetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1568
    :cond_5e
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_11

    .line 1577
    :cond_5f
    const/16 v19, 0x99

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_61

    .line 1578
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_60

    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_60

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    .line 1580
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1582
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v19

    const/16 v20, 0x1966

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1583
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1584
    :cond_61
    const/16 v19, 0x98

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_63

    .line 1585
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_62

    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightPosition()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_62

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightPosition(I)V

    .line 1587
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1589
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v19

    const/16 v20, 0x1968

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1590
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1591
    :cond_63
    const/16 v19, 0x97

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_65

    .line 1592
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_64

    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_64

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightLevel(I)V

    .line 1594
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1596
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v19

    const/16 v20, 0x1968

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1597
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1598
    :cond_65
    const/16 v19, 0x96

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v19

    if-eqz v19, :cond_67

    .line 1600
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_66

    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_66

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 1602
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1604
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v19

    const/16 v20, 0x1964

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 1605
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    .line 1607
    :cond_67
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_68

    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyLevel()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_68

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackBeautyLevel(I)V

    .line 1609
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1611
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v19

    const/16 v20, 0x71

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v19

    const/16 v20, 0x71

    invoke-interface/range {v19 .. v20}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_0

    .line 1617
    :sswitch_17
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_6d

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-eqz v19, :cond_69

    .line 1619
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1620
    :cond_69
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_6a

    .line 1621
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "AntiFogSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1624
    :cond_6a
    const/16 v19, 0x1db9

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_6c

    .line 1625
    const/16 p2, 0x0

    .line 1629
    :cond_6b
    :goto_13
    new-instance v19, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v20, "AntiFogSetting"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    .line 1631
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateAntiFogUI()V

    .line 1632
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1626
    :cond_6c
    const/16 v19, 0x1dba

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_6b

    .line 1627
    const/16 p2, 0x9

    goto :goto_13

    .line 1635
    :cond_6d
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1639
    :sswitch_18
    sget-boolean v19, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-eqz v19, :cond_72

    sget-boolean v19, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v19, :cond_72

    .line 1640
    const/16 v19, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_6f

    .line 1641
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "QuickLaunchSelectSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1656
    :cond_6e
    :goto_14
    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1643
    :cond_6f
    const/16 v19, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_70

    .line 1644
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_14

    .line 1646
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "QuickLaunchSelectSetting"

    const/16 v21, 0x1a

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v19

    if-nez v19, :cond_6e

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_71

    const/16 v19, 0x3

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_71

    .line 1649
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1652
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "double_tab_launch"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1653
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_14

    .line 1658
    :cond_72
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1081
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_c
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x49 -> :sswitch_1
        0x4a -> :sswitch_1
        0x4c -> :sswitch_a
        0x4d -> :sswitch_b
        0x4e -> :sswitch_9
        0x4f -> :sswitch_9
        0x55 -> :sswitch_4
        0x58 -> :sswitch_6
        0x5d -> :sswitch_5
        0x5e -> :sswitch_7
        0x6a -> :sswitch_2
        0x71 -> :sswitch_3
        0x72 -> :sswitch_8
        0x81 -> :sswitch_d
        0x82 -> :sswitch_e
        0x83 -> :sswitch_f
        0x85 -> :sswitch_10
        0x87 -> :sswitch_11
        0x89 -> :sswitch_14
        0x8a -> :sswitch_15
        0x8f -> :sswitch_12
        0x91 -> :sswitch_13
        0x96 -> :sswitch_16
        0x97 -> :sswitch_16
        0x98 -> :sswitch_16
        0x99 -> :sswitch_16
        0x9a -> :sswitch_16
        0xae -> :sswitch_17
        0xb2 -> :sswitch_9
        0xb3 -> :sswitch_18
        0xb7 -> :sswitch_0
        0xb8 -> :sswitch_0
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

    .line 1668
    const-string v2, "CameraExecutorManager"

    const-string v3, "processStateTypeChangeSettingBySingleValue"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    packed-switch p1, :pswitch_data_0

    .line 2144
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

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 1671
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1672
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    .line 1673
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1674
    const/16 v2, 0x24

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1678
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1679
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    .line 1680
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1681
    const/16 v2, 0x24

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1685
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1686
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1687
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1688
    const/16 v2, 0xa8

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1692
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1693
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1694
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1695
    const/16 v2, 0xa8

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 1699
    :pswitch_5
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1700
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 1702
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1703
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1705
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1706
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    .line 1707
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1708
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1713
    :pswitch_6
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1714
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 1716
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 1717
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1719
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1720
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    .line 1721
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1722
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1727
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1728
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    invoke-interface {v2, v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    .line 1729
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1730
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1734
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1735
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    .line 1736
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1737
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1741
    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1742
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    invoke-interface {v2, v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    .line 1743
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1744
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1748
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1749
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    .line 1750
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1751
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1755
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1756
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    .line 1757
    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1758
    const/16 v2, 0x30

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1760
    :cond_5
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1763
    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1764
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    .line 1765
    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1766
    const/16 v2, 0x30

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1768
    :cond_6
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1771
    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTapToTakePictures()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1772
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    .line 1773
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1775
    :cond_7
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1778
    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTapToTakePictures()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1779
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    .line 1780
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1782
    :cond_8
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1785
    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1786
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    .line 1787
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1789
    :cond_9
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1792
    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1793
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    .line 1794
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1796
    :cond_a
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1799
    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1800
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    .line 1801
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1803
    :cond_b
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1806
    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1807
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    .line 1808
    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 1810
    :cond_c
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1813
    :pswitch_13
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1814
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    .line 1815
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1816
    const/16 v2, 0x26

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1820
    :pswitch_14
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1821
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    .line 1822
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1823
    const/16 v2, 0x26

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1827
    :pswitch_15
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRearLensDistortionCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1828
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    .line 1829
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1830
    const/16 v2, 0x27

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1834
    :pswitch_16
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRearLensDistortionCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1835
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    .line 1836
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1837
    const/16 v2, 0x27

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1841
    :pswitch_17
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1842
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 1843
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1844
    const/16 v2, 0x23

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1848
    :pswitch_18
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1849
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    .line 1850
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1851
    const/16 v2, 0x23

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1855
    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1856
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    .line 1857
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1858
    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1862
    :pswitch_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1863
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    .line 1864
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1865
    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1869
    :pswitch_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1870
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    .line 1871
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1872
    const/16 v2, 0x2e

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1876
    :pswitch_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1877
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    .line 1878
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1879
    const/16 v2, 0x2e

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1883
    :pswitch_1d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-eq v2, v8, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1884
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1886
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v1

    .line 1887
    .local v1, "quickLaunchValue":I
    if-nez v1, :cond_f

    .line 1888
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1896
    :cond_e
    :goto_1
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1897
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1889
    :cond_f
    if-ne v1, v8, :cond_e

    .line 1890
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1891
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1894
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1901
    .end local v1    # "quickLaunchValue":I
    :pswitch_1e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v1

    .line 1902
    .restart local v1    # "quickLaunchValue":I
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-eq v2, v8, :cond_11

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-nez v2, :cond_12

    .line 1903
    :cond_11
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1905
    :cond_12
    if-ne v1, v5, :cond_14

    .line 1906
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1910
    :cond_13
    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1911
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1907
    :cond_14
    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    .line 1908
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1915
    .end local v1    # "quickLaunchValue":I
    :pswitch_1f
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1916
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 1917
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1918
    const/16 v2, 0xa9

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1922
    :pswitch_20
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1923
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    .line 1924
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1925
    const/16 v2, 0xa9

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1929
    :pswitch_21
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFloatingCameraButton()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1930
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    .line 1931
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1932
    const/16 v2, 0x34

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1936
    :pswitch_22
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFloatingCameraButton()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1937
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    .line 1938
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1939
    const/16 v2, 0x34

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1943
    :pswitch_23
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1944
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    .line 1945
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1946
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1950
    :pswitch_24
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1951
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    .line 1952
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1953
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1957
    :pswitch_25
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1958
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1960
    :cond_15
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1961
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    .line 1962
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1963
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1968
    :pswitch_26
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1969
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1971
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1972
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    .line 1973
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 1974
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1979
    :pswitch_27
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1980
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1981
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 1982
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1985
    :cond_17
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1986
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 1987
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1992
    :pswitch_28
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isUsingFlashAvailable()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1993
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1996
    :cond_18
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1997
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1998
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 1999
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2002
    :cond_19
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2003
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 2004
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2009
    :pswitch_29
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isUsingFlashAvailable()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2010
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2013
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2014
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2015
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 2016
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2019
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2020
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 2021
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2026
    :pswitch_2a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2027
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    .line 2028
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2032
    :pswitch_2b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2033
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    .line 2034
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2038
    :pswitch_2c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2039
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    .line 2040
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2044
    :pswitch_2d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2045
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(II)V

    .line 2046
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2047
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2051
    :pswitch_2e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2052
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(II)V

    .line 2053
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2054
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2058
    :pswitch_2f
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2059
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPanoramaMode(I)V

    .line 2060
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2064
    :pswitch_30
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2065
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPanoramaMode(I)V

    .line 2066
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2070
    :pswitch_31
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2071
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    .line 2072
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2076
    :pswitch_32
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2077
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    .line 2078
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2082
    :pswitch_33
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionWideSelfieMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2083
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionWideSelfieMode(I)V

    .line 2084
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2088
    :pswitch_34
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionWideSelfieMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2089
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionWideSelfieMode(I)V

    .line 2090
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2094
    :pswitch_35
    new-instance v0, Landroid/content/Intent;

    const-string v2, "camera.action.ACTION_SELECT_COLORTUNE_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2095
    .local v0, "colorTuneResetIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2096
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 2099
    .end local v0    # "colorTuneResetIntent":Landroid/content/Intent;
    :pswitch_36
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2100
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    const/16 v3, 0x1967

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 2101
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    .line 2102
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2106
    :pswitch_37
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2107
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    const/16 v3, 0x1967

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    .line 2108
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    .line 2109
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2113
    :pswitch_38
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQRCodeDetection()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2114
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    .line 2115
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2116
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2120
    :pswitch_39
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQRCodeDetection()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2121
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    .line 2122
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2123
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2127
    :pswitch_3a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2128
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    .line 2129
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2130
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2134
    :pswitch_3b
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    .line 2135
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 2137
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2138
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(II)V

    .line 2139
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    .line 2140
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    .line 1669
    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2f
        :pswitch_30
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
        :pswitch_35
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_36
        :pswitch_37
        :pswitch_33
        :pswitch_34
        :pswitch_21
        :pswitch_22
        :pswitch_25
        :pswitch_26
        :pswitch_23
        :pswitch_24
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
        :pswitch_38
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_5
        :pswitch_6
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

    .line 2150
    const-string v0, "CameraExecutorManager"

    const-string v1, "processStateTypeLaunchToOtherApp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    sparse-switch p1, :sswitch_data_0

    .line 2193
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

    .line 2196
    :goto_0
    return-void

    .line 2154
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 2155
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2158
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "quickview"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2161
    :cond_0
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2165
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

    .line 2166
    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2168
    :cond_2
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2169
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2173
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2174
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2175
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->startShareViaAnimation()V

    .line 2179
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2177
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->startShareActivity(Landroid/net/Uri;)V

    goto :goto_1

    .line 2181
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 2185
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

    .line 2186
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->showHelpHub(Landroid/content/Context;)V

    .line 2187
    const/16 v0, 0xa5

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2189
    :cond_5
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2151
    nop

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_1
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x73 -> :sswitch_2
        0xa5 -> :sswitch_4
        0xbd -> :sswitch_3
    .end sparse-switch
.end method

.method private processStateTypeShowMenu(IIZ)V
    .locals 9
    .param p1, "processState"    # I
    .param p2, "processParam"    # I
    .param p3, "isLastState"    # Z

    .prologue
    const/16 v8, 0x7a

    const/16 v4, 0x54

    const/4 v7, 0x2

    const/16 v6, 0x64

    const/4 v5, 0x1

    .line 2199
    const-string v2, "CameraExecutorManager"

    const-string v3, "processStateTypeShowMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    sparse-switch p1, :sswitch_data_0

    .line 2349
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

    .line 2352
    :cond_0
    :goto_0
    return-void

    .line 2203
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 2204
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2207
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2208
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 2209
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2212
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2213
    :cond_1
    if-eqz p3, :cond_2

    .line 2214
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2215
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    .line 2217
    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2220
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2221
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 2223
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v7, v4, v5}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2227
    :sswitch_3
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2228
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2231
    :sswitch_4
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2232
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2235
    :sswitch_5
    if-ne p2, v5, :cond_6

    .line 2236
    iput v5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 2237
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v2

    if-eq v2, v7, :cond_5

    .line 2238
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    .line 2246
    :cond_5
    :goto_1
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2241
    :cond_6
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    .line 2242
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 2243
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto :goto_1

    .line 2253
    :sswitch_6
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 2257
    :sswitch_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2258
    const/16 v2, 0x232f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    .line 2259
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2262
    :sswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2263
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 2264
    .local v1, "frontCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager$3;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    .line 2271
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2272
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeShortcutMenu()V

    .line 2273
    invoke-static {v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v4, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2277
    .end local v1    # "frontCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 2278
    .local v0, "backCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$4;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager$4;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    .line 2285
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2286
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeShortcutMenu()V

    .line 2287
    invoke-static {v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v4, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2291
    .end local v0    # "backCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2292
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 2295
    :sswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2296
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 2297
    .restart local v1    # "frontCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$5;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager$5;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    .line 2309
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2310
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeInfoMenu()V

    .line 2311
    invoke-static {v8}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v8, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2315
    .end local v1    # "frontCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .line 2316
    .restart local v0    # "backCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$6;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager$6;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    .line 2329
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2330
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeInfoMenu()V

    .line 2331
    invoke-static {v8}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v8, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2335
    .end local v0    # "backCameraMenu":Lcom/sec/android/app/camera/menu/ModeListMenu;
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2336
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    .line 2339
    :sswitch_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2340
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "camera.action.ACTION_SELECT_COLORTUNE_EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2341
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2344
    :sswitch_b
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    .line 2345
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "camera.action.ACTION_SELECT_COLORTUNE_EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2346
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    .line 2200
    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_6
        0x2b -> :sswitch_6
        0x30 -> :sswitch_6
        0x32 -> :sswitch_6
        0x47 -> :sswitch_3
        0x48 -> :sswitch_4
        0x4b -> :sswitch_2
        0x54 -> :sswitch_8
        0x78 -> :sswitch_7
        0x79 -> :sswitch_7
        0x7a -> :sswitch_9
        0x8b -> :sswitch_a
        0x8d -> :sswitch_b
        0x92 -> :sswitch_1
        0x95 -> :sswitch_0
        0xad -> :sswitch_0
        0xb4 -> :sswitch_6
        0xb6 -> :sswitch_5
    .end sparse-switch
.end method

.method private registerInterimStateListener()V
    .locals 2

    .prologue
    .line 2355
    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$7;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    .line 2384
    .local v0, "cameraInterimStateListener":Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    .line 2385
    return-void
.end method

.method private replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "findName"    # Ljava/lang/String;
    .param p2, "replaceName"    # Ljava/lang/String;

    .prologue
    .line 2388
    const-string v2, ""

    .line 2389
    .local v2, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2390
    .local v0, "isFind":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2391
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

    .line 2392
    .local v1, "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    iget-object v4, v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2393
    iget-object v2, v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    .line 2394
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2395
    const/4 v0, 0x1

    .line 2400
    .end local v1    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    :cond_1
    if-eqz v0, :cond_2

    .line 2401
    new-instance v3, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    invoke-direct {v3, p2, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    .line 2403
    :cond_2
    return-void
.end method

.method private requestNLG(II)V
    .locals 12
    .param p1, "requestId"    # I
    .param p2, "type"    # I

    .prologue
    .line 2406
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

    .line 2407
    iput p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 2409
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {v2, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 2411
    .local v2, "info":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2413
    .local v6, "paramSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;>;"
    sparse-switch p2, :sswitch_data_0

    .line 2423
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->checkGroupTypeStateByStateId(I)I

    move-result v3

    .line 2424
    .local v3, "nlgType":I
    packed-switch v3, :pswitch_data_0

    .line 2619
    const-string v8, "CameraExecutorManager"

    const-string v9, "return. unknown nlg type"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    :goto_1
    return-void

    .line 2416
    .end local v3    # "nlgType":I
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    goto :goto_0

    .line 2426
    .restart local v3    # "nlgType":I
    :pswitch_0
    const/4 v8, 0x2

    if-ne p2, v8, :cond_2

    .line 2427
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2428
    const/16 v8, 0x23

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    const/16 v8, 0x25

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2624
    :cond_0
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2625
    .local v1, "debugScreenParam":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2c

    .line 2626
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    .line 2628
    .local v4, "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->paramName:Ljava/lang/String;

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrName:Ljava/lang/String;

    iget-object v11, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrValue:Ljava/lang/String;

    invoke-virtual {v2, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 2629
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

    .line 2431
    .end local v1    # "debugScreenParam":Ljava/lang/StringBuilder;
    .end local v4    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    :cond_1
    const/16 v8, 0x24

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2432
    const/16 v8, 0x28

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2434
    :cond_2
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2435
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2436
    const/16 v8, 0x23

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2437
    const/16 v8, 0x26

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2439
    :cond_3
    const/16 v8, 0x24

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2440
    const/16 v8, 0x27

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2445
    :pswitch_1
    const/16 v8, 0x8

    if-ne p2, v8, :cond_4

    .line 2446
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2447
    :cond_4
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2448
    const/16 v8, 0xc

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2452
    :pswitch_2
    const/4 v8, 0x4

    if-ne p2, v8, :cond_6

    .line 2453
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2454
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2455
    const/16 v8, 0xb

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2457
    :cond_5
    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2458
    const/16 v8, 0xa

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2460
    :cond_6
    const/4 v8, 0x1

    if-ne p2, v8, :cond_8

    .line 2461
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2462
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2464
    :cond_7
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2466
    :cond_8
    const/4 v8, 0x3

    if-ne p2, v8, :cond_9

    .line 2467
    const/4 v8, 0x5

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2468
    :cond_9
    const/4 v8, 0x5

    if-ne p2, v8, :cond_a

    .line 2469
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2470
    :cond_a
    const/4 v8, 0x6

    if-ne p2, v8, :cond_b

    .line 2471
    const/16 v8, 0xd

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2472
    :cond_b
    const/4 v8, 0x2

    if-ne p2, v8, :cond_11

    .line 2473
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    if-eqz v8, :cond_10

    .line 2474
    const/16 v8, 0xa

    if-ne v8, p1, :cond_d

    .line 2475
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2476
    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2477
    const/16 v8, 0xb

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2479
    :cond_c
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2480
    const/16 v8, 0xa

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2483
    :cond_d
    const/16 v8, 0xb

    if-ne v8, p1, :cond_f

    .line 2484
    const/16 v8, 0x37

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v9

    if-ne v8, v9, :cond_e

    .line 2485
    const/16 v8, 0x30

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2487
    :cond_e
    const/16 v8, 0x31

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2490
    :cond_f
    const/16 v8, 0xc

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2494
    :cond_10
    const/4 v8, 0x6

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2496
    :cond_11
    const/16 v8, 0x8

    if-ne p2, v8, :cond_12

    .line 2497
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2498
    :cond_12
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2499
    const/16 v8, 0xa

    if-ne v8, p1, :cond_14

    .line 2500
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2501
    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2502
    const/16 v8, 0xb

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2504
    :cond_13
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2505
    const/16 v8, 0xa

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2508
    :cond_14
    const/16 v8, 0xb

    if-ne v8, p1, :cond_16

    .line 2509
    const/16 v8, 0x37

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v9

    if-ne v8, v9, :cond_15

    .line 2510
    const/16 v8, 0x30

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2512
    :cond_15
    const/16 v8, 0x31

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2515
    :cond_16
    const/16 v8, 0xc

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2521
    :pswitch_3
    const/4 v8, 0x3

    if-ne p2, v8, :cond_17

    .line 2522
    const/16 v8, 0x29

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2524
    :cond_17
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgScreenParamByParamName(Ljava/lang/String;I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v4

    .line 2525
    .restart local v4    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    if-eqz v4, :cond_0

    .line 2526
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2531
    .end local v4    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    :pswitch_4
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgScreenParamByParamName(Ljava/lang/String;I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v5

    .line 2532
    .local v5, "paramByStateName":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    if-eqz v5, :cond_0

    .line 2533
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2537
    .end local v5    # "paramByStateName":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    :pswitch_5
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgScreenParamWithSetting(II)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v7

    .line 2538
    .local v7, "paramWithSetting":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    if-eqz v7, :cond_0

    .line 2539
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2543
    .end local v7    # "paramWithSetting":Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;
    :pswitch_6
    const/4 v8, 0x7

    if-ne p2, v8, :cond_18

    .line 2544
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2545
    :cond_18
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2546
    const/16 v8, 0xe

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2550
    :pswitch_7
    const/4 v8, 0x1

    if-ne p2, v8, :cond_19

    .line 2551
    const/16 v8, 0x12

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2552
    :cond_19
    const/4 v8, 0x6

    if-ne p2, v8, :cond_1a

    .line 2553
    const/16 v8, 0x13

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2554
    :cond_1a
    const/4 v8, 0x2

    if-ne p2, v8, :cond_1b

    .line 2555
    const/16 v8, 0x14

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2556
    :cond_1b
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2557
    const/16 v8, 0x15

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2561
    :pswitch_8
    const/4 v8, 0x6

    if-ne p2, v8, :cond_1c

    .line 2562
    const/16 v8, 0x13

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2563
    :cond_1c
    const/16 v8, 0x9

    if-ne p2, v8, :cond_1d

    .line 2564
    const/16 v8, 0x16

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2565
    :cond_1d
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2566
    const/16 v8, 0x17

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2570
    :pswitch_9
    const/4 v8, 0x1

    if-ne p2, v8, :cond_1e

    .line 2571
    const/16 v8, 0x2a

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2572
    :cond_1e
    const/4 v8, 0x6

    if-ne p2, v8, :cond_1f

    .line 2573
    const/16 v8, 0x2b

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2574
    :cond_1f
    const/4 v8, 0x2

    if-ne p2, v8, :cond_20

    .line 2575
    const/16 v8, 0x2c

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2576
    :cond_20
    const/16 v8, 0xa

    if-ne p2, v8, :cond_21

    .line 2577
    const/16 v8, 0x2e

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2578
    :cond_21
    const/16 v8, 0xb

    if-ne p2, v8, :cond_22

    .line 2579
    const/16 v8, 0x19

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2580
    :cond_22
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2581
    const/16 v8, 0x8a

    if-ne p1, v8, :cond_23

    .line 2582
    const/16 v8, 0x2d

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2584
    :cond_23
    const/16 v8, 0x18

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2589
    :pswitch_a
    const/4 v8, 0x1

    if-ne p2, v8, :cond_24

    .line 2590
    const/16 v8, 0x1a

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2591
    :cond_24
    const/4 v8, 0x6

    if-ne p2, v8, :cond_25

    .line 2592
    const/16 v8, 0x1b

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2593
    :cond_25
    const/4 v8, 0x2

    if-ne p2, v8, :cond_26

    .line 2594
    const/16 v8, 0x1c

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2595
    :cond_26
    const/16 v8, 0x8

    if-ne p2, v8, :cond_27

    .line 2596
    const/16 v8, 0x1e

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2597
    :cond_27
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2598
    const/16 v8, 0x1d

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2602
    :pswitch_b
    const/4 v8, 0x1

    if-ne p2, v8, :cond_28

    .line 2603
    const/16 v8, 0x1f

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2604
    :cond_28
    const/4 v8, 0x6

    if-ne p2, v8, :cond_29

    .line 2605
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2606
    :cond_29
    const/4 v8, 0x2

    if-ne p2, v8, :cond_2a

    .line 2607
    const/16 v8, 0x21

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2608
    :cond_2a
    const/16 v8, 0x8

    if-ne p2, v8, :cond_2b

    .line 2609
    const/16 v8, 0x2f

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2610
    :cond_2b
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    .line 2611
    const/16 v8, 0x22

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2615
    :pswitch_c
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 2616
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_1

    .line 2632
    .restart local v1    # "debugScreenParam":Ljava/lang/StringBuilder;
    :cond_2c
    const-string v8, "CameraExecutorManager"

    const-string v9, "return. paramSet is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_1

    .line 2637
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2638
    .local v0, "debugResultParam":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_31

    .line 2639
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2e
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    .line 2641
    .local v4, "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    if-eqz v9, :cond_2e

    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 2642
    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 2643
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

    .line 2646
    .end local v4    # "param":Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;
    :cond_2f
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

    .line 2651
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v8, :cond_30

    .line 2652
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 2655
    :cond_30
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_1

    .line 2648
    :cond_31
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

    .line 2413
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 2424
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
    .line 2659
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

    .line 2661
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v1, :cond_2

    .line 2663
    if-eqz p1, :cond_3

    .line 2664
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2665
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 2667
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 2672
    .local v0, "result":Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 2673
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    .line 2674
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 2675
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2676
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    .line 2677
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 2679
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2680
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    .line 2681
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 2682
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2685
    .end local v0    # "result":Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    :cond_2
    monitor-exit p0

    return-void

    .line 2669
    :cond_3
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "result":Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    goto :goto_0

    .line 2659
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
    .line 2688
    iput-object p3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    .line 2689
    invoke-direct {p0, p2, p4}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    .line 2690
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    .line 2691
    return-void
.end method

.method private setBixbyTouchable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2694
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    .line 2695
    const-string v0, "CameraExecutorManager"

    const-string v1, "setBixbyTouchable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setAppVisible(Z)V

    .line 2697
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setAppTouchable(Z)V

    .line 2699
    :cond_0
    return-void
.end method

.method private updateAntiFogUI()V
    .locals 2

    .prologue
    .line 2702
    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.ACTION_ANTI_FOG_UI_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2703
    .local v0, "antifogIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2704
    return-void
.end method

.method private updateBeautyUI()V
    .locals 2

    .prologue
    .line 2707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.ACTION_BEAUTY_UI_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2708
    .local v0, "beautyIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2709
    return-void
.end method


# virtual methods
.method public getAppList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 176
    const-string v1, "CameraExecutorManager"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v1, :cond_0

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "camera.action.AUDIOFOCUS_GAIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 183
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$2;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    const-string v2, "mInitBixbyApiThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 199
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRuleRunning()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 210
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

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    sparse-switch p1, :sswitch_data_0

    .line 257
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    if-eqz v2, :cond_0

    .line 258
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

    .line 264
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 227
    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    if-eqz v2, :cond_2

    .line 228
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

    .line 229
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 230
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathParam;->checkGroupTypeParameterByParamName(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, "type":I
    if-ne v1, v6, :cond_0

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportModeInCurrentState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    .line 239
    .end local v1    # "type":I
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportModeInCurrentState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v7}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v7}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
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

    .line 267
    const-string v0, "CameraExecutorManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    .line 272
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 280
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->clearInterimStateListener()V

    .line 281
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 282
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .line 283
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 285
    :cond_2
    return-void

    .line 276
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

    .line 288
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

    .line 290
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    if-eqz v2, :cond_1

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 301
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathParam;->checkGroupTypeParameterByParamName(Ljava/lang/String;)I

    move-result v1

    .line 302
    .local v1, "type":I
    if-ne v1, v6, :cond_1

    .line 303
    const-string v3, "String"

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValueType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    .line 306
    iput v5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    .line 307
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 308
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessage(I)Z

    .line 332
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    .end local v1    # "type":I
    :cond_1
    :goto_1
    return-void

    .line 314
    :cond_2
    if-eqz p2, :cond_4

    .line 315
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

    .line 316
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_1

    .line 319
    :cond_3
    const-string v2, "CameraExecutorManager"

    const-string v3, "ignore senResult"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 322
    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    if-nez v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 324
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

    .line 326
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_1

    .line 295
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public setAppList(Ljava/lang/String;)V
    .locals 0
    .param p1, "appList"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setExecutorCommandListener(Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    .line 336
    return-void
.end method

.method public setIsWaitCommandResult(Z)V
    .locals 3
    .param p1, "wait"    # Z

    .prologue
    .line 339
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

    .line 340
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    .line 341
    return-void
.end method
