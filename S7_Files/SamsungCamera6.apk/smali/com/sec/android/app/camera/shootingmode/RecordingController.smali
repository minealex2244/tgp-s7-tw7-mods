.class public abstract Lcom/sec/android/app/camera/shootingmode/RecordingController;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
.implements Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DURATION_100:I = 0x64

.field protected static final ANIMATION_DURATION_130:I = 0x82

.field protected static final ANIMATION_DURATION_300:I = 0x12c

.field protected static final ANIMATION_DURATION_470:I = 0x1d6

.field protected static final ANIMATION_DURATION_570:I = 0x23a

.field protected static final BLINK_REC_INDICATOR_INTERVAL:I = 0x1f4

.field private static final CHECK_RECORDING_TICK_TIME_INTERVAL:I = 0x64

.field private static final CHECK_RECORDING_TICK_TIME_MSG:I = 0x1

.field protected static final DB_RECORDINGMODE_FAST_MOTION:Ljava/lang/String; = "2"

.field protected static final DB_RECORDINGMODE_HYPER_MOTION:Ljava/lang/String; = "5"

.field protected static final DB_RECORDINGMODE_KEY:Ljava/lang/String; = "recording_mode"

.field protected static final DB_RECORDINGMODE_MULTI_TRACK:Ljava/lang/String; = "4"

.field protected static final DB_RECORDINGMODE_SLOW_MOTION:Ljava/lang/String; = "1"

.field protected static final DEFAULT_RECORDING_FPS:I = 0x7530

.field protected static final MINIMUM_REMAIN_TIME_TO_SNAPSHOT:I = 0x5

.field protected static final ONE_SECOND:I = 0x1

.field protected static final RECORDING_EVENT_CANCELLED:I = 0x4

.field protected static final RECORDING_EVENT_PAUSED:I = 0x2

.field protected static final RECORDING_EVENT_RESUMED:I = 0x1

.field protected static final RECORDING_EVENT_STARTED:I = 0x0

.field protected static final RECORDING_EVENT_STOPPED:I = 0x3

.field protected static final RECORDING_TICK_INTERVAL_DEFAULT:I = 0x3e8

.field protected static final RECORDING_TICK_INTERVAL_MAX:I = 0x3e8

.field protected static final RECORDING_TICK_INTERVAL_MIN:I = 0x64

.field protected static final SECONDS_IN_AN_HOUR:I = 0xe10

.field protected static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final SHOW_CALL_POPUP_TOAST:I = 0x1

.field private static final SHOW_CALL_POPUP_TOAST_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "RecordingController"

.field protected static final UNLIMITED_RECORDING_TIME:I = -0x1


# instance fields
.field protected mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentRecordingFileSize:J

.field private mCurrentRecordingFileTime:J

.field private mCurrentRecordingTimeInMilliSecond:J

.field protected mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsRecordingFailedByVideoCapability:Z

.field private mIsRecordingFailedByWifiDisplayNotAllowed:Z

.field private mIsRecordingRestrictedByCallState:Z

.field private mIsRecordingRestrictedByOverHeat:Z

.field private mIsRecordingTimeLimitedByLowStorage:Z

.field private mIsRecordingTimeLimitedBySystem:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMaxRecordingTimeLimitByStorage:I

.field private mMaxRecordingTimeLimitBySystem:I

.field protected mMaxRecordingTimeLimitInSecond:I

.field private mPreviousRecordingTime:J

.field private mRecordStopToast:Landroid/widget/Toast;

.field private mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

.field private mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

.field private mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field protected mTickInterval:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    .line 102
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    .line 104
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 105
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 106
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 111
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    .line 114
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 115
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 116
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 117
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    .line 118
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    .line 119
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 120
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    .line 121
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 122
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    .line 124
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    .line 125
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    .line 126
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

    .line 128
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 230
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/RecordingController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isShowingRecordStopToast()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/shootingmode/RecordingController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    return p1
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/RecordingController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->handleRecordingError(I)V

    return-void
.end method

.method private checkRecordingTickTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 863
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 866
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 867
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingTick(JJ)V

    .line 869
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_3

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_3

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 874
    :cond_3
    return-void
.end method

.method private handleRecordingError(I)V
    .locals 5
    .param p1, "error"    # I

    .prologue
    const/4 v3, 0x0

    .line 877
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRecordingError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    packed-switch p1, :pswitch_data_0

    .line 915
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 881
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->unregisterRecordingController()V

    goto :goto_0

    .line 887
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    if-eqz v0, :cond_3

    .line 888
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    .line 889
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    const-string v0, "RecordingController"

    const-string v1, "Return, camera is finishing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    goto :goto_0

    .line 897
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    if-eqz v0, :cond_6

    .line 898
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 900
    const-string v0, "RecordingController"

    const-string v1, "Return, camera is finishing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 903
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_5

    .line 904
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    .line 906
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0280

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 907
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a01f6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 906
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 909
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isShowingRecordStopToast()Z
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

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

.method private restrictRecording(Z)V
    .locals 1
    .param p1, "isRestricted"    # Z

    .prologue
    .line 930
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    .line 931
    return-void
.end method

.method private restrictRecording(ZZ)V
    .locals 3
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    const/4 v2, 0x0

    .line 918
    if-eqz p1, :cond_1

    .line 919
    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : true"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingRestricted(ZZ)V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v0, :cond_0

    .line 923
    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : false"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingRestricted(ZZ)V

    goto :goto_0
.end method

.method private startRecordingTickTimer()V
    .locals 4

    .prologue
    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopInactivityTimer()V

    .line 935
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingTick(JJ)V

    .line 936
    return-void
.end method

.method private updateMaxRecordingTimeLimit()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 939
    const/4 v0, -0x1

    .line 940
    .local v0, "minimumRecordingTime":I
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v1

    if-lez v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v0

    .line 944
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v1, :cond_1

    .line 945
    if-ne v0, v2, :cond_3

    .line 946
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 952
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v1, :cond_2

    .line 953
    if-ne v0, v2, :cond_4

    .line 954
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    .line 960
    :cond_2
    :goto_1
    const-string v1, "RecordingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMaxRecordingTimeLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    .line 962
    return-void

    .line 947
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    if-ge v1, v0, :cond_1

    .line 948
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    goto :goto_0

    .line 955
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    if-ge v1, v0, :cond_2

    .line 956
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    goto :goto_1
.end method


# virtual methods
.method protected abstract cancelRecording()V
.end method

.method protected checkAvailableRecordingStorage()V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainRecordingTime()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    .line 564
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAvailableRecordingStorage : Remain RecTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    const/16 v1, 0xe10

    if-ge v0, v1, :cond_0

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    .line 571
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateMaxRecordingTimeLimit()V

    .line 572
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    goto :goto_0
.end method

.method protected finishRecordingPreviewVI()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v0

    if-nez v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleRequestNotifyPreviewStarted()V

    goto :goto_0
.end method

.method protected getCurrentRecordingFileSize()J
    .locals 2

    .prologue
    .line 588
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    return-wide v0
.end method

.method protected getCurrentRecordingFileTimeInSecond()J
    .locals 4

    .prologue
    .line 592
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-object v0
.end method

.method protected getTotalRecordingTime()J
    .locals 4

    .prologue
    .line 618
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected isRecordingControlAvailable()Z
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    .line 629
    :cond_0
    const/4 v0, 0x0

    .line 631
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isRecordingRestricted()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 641
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    :cond_0
    const-string v1, "RecordingController"

    const-string v2, "RecordingRestricted - over heat temperature"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return v0

    .line 645
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 646
    :cond_2
    const-string v1, "RecordingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecordingRestricted - calling ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingTimeLimited()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 660
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v1

    if-lez v1, :cond_0

    .line 661
    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - requested recording duration limit"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_0
    return v0

    .line 664
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v1, :cond_1

    .line 665
    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - system limitation"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v1, :cond_2

    .line 669
    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - low storage"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingTimeRestricted()Z
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isSnapShotAvailable()Z
.end method

.method protected limitRecordingTimeBySystem(I)V
    .locals 1
    .param p1, "second"    # I

    .prologue
    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    .line 694
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 695
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateMaxRecordingTimeLimit()V

    .line 696
    return-void
.end method

.method public onChangeCamcorderParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 8
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 235
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isSnapShotAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    .line 239
    .local v0, "camcorderResolutionId":I
    sparse-switch v0, :sswitch_data_0

    .line 369
    const-string v5, "RecordingController"

    const-string v6, "Wrong camcorder resolution id"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_f

    .line 371
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480_PICTURE_WIDTH:I

    .line 372
    .local v2, "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480_PICTURE_HEIGHT:I

    .line 380
    .local v1, "pictureHeight":I
    :goto_0
    const-string v5, "RecordingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPictureSize : pictureWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pictureHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPictureSize(II)V

    .line 383
    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v4

    .line 384
    .local v4, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Size;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, "thumbnaiSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/util/Util;->findThumbnailSize(Ljava/util/List;II)Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v3

    .line 387
    if-eqz v3, :cond_0

    .line 388
    iget v5, v3, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    iget v6, v3, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 391
    .end local v0    # "camcorderResolutionId":I
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    .end local v3    # "thumbnaiSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    .end local v4    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Size;>;"
    :cond_0
    return-void

    .line 241
    .restart local v0    # "camcorderResolutionId":I
    :sswitch_0
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_1

    .line 242
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_WIDTH:I

    .line 243
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto :goto_0

    .line 246
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_1
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440_PICTURE_WIDTH:I

    .line 247
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440_PICTURE_HEIGHT:I

    .line 249
    .restart local v1    # "pictureHeight":I
    goto :goto_0

    .line 251
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_2

    .line 252
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_WIDTH:I

    .line 253
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto :goto_0

    .line 255
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_2
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440_PICTURE_WIDTH:I

    .line 256
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440_PICTURE_HEIGHT:I

    .line 258
    .restart local v1    # "pictureHeight":I
    goto :goto_0

    .line 260
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_2
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_3

    .line 261
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_PICTURE_WIDTH:I

    .line 262
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto :goto_0

    .line 264
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_3
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080_PICTURE_WIDTH:I

    .line 265
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080_PICTURE_HEIGHT:I

    .line 267
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 269
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_3
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_4

    .line 270
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_60FPS_PICTURE_WIDTH:I

    .line 271
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_60FPS_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 274
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_4
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080_PICTURE_WIDTH:I

    .line 275
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080_PICTURE_HEIGHT:I

    .line 277
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 279
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_4
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_5

    .line 280
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1440_PICTURE_WIDTH:I

    .line 281
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1440_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 283
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_5
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1440X1440_PICTURE_WIDTH:I

    .line 284
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1440X1440_PICTURE_HEIGHT:I

    .line 286
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 288
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_6

    .line 289
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1280X720_PICTURE_WIDTH:I

    .line 290
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1280X720_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 292
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_6
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1280X720_PICTURE_WIDTH:I

    .line 293
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1280X720_PICTURE_HEIGHT:I

    .line 295
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 297
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_6
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_7

    .line 298
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION_PICTURE_WIDTH:I

    .line 299
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 301
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_7
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SQUARE_PREVIEW_WIDTH_HEIGHT:I

    .line 302
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SQUARE_PREVIEW_WIDTH_HEIGHT:I

    .line 304
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 306
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_7
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_8

    .line 307
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1072X1072_PICTURE_WIDTH:I

    .line 308
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1072X1072_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 310
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_8
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1072X1072_PICTURE_WIDTH:I

    .line 311
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1072X1072_PICTURE_HEIGHT:I

    .line 313
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 315
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_8
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_9

    .line 316
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_960X960_PICTURE_WIDTH:I

    .line 317
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_960X960_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 319
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_9
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_960X960_PICTURE_WIDTH:I

    .line 320
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_960X960_PICTURE_HEIGHT:I

    .line 322
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 324
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_9
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_a

    .line 325
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_960X720_PICTURE_WIDTH:I

    .line 326
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_960X720_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 328
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_a
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_960X720_PICTURE_WIDTH:I

    .line 329
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_960X720_PICTURE_HEIGHT:I

    .line 331
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 333
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_a
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_b

    .line 334
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_720X480_PICTURE_WIDTH:I

    .line 335
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_720X480_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 337
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_b
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_720X480_PICTURE_WIDTH:I

    .line 338
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_720X480_PICTURE_HEIGHT:I

    .line 340
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 342
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_b
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_c

    .line 343
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480_PICTURE_WIDTH:I

    .line 344
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 346
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_c
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480_PICTURE_WIDTH:I

    .line 347
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480_PICTURE_HEIGHT:I

    .line 349
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 351
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_c
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_d

    .line 352
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240_PICTURE_WIDTH:I

    .line 353
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 355
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_d
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240_PICTURE_WIDTH:I

    .line 356
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240_PICTURE_HEIGHT:I

    .line 358
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 360
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :sswitch_d
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_e

    .line 361
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240_PICTURE_WIDTH:I

    .line 362
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 364
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_e
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240_PICTURE_WIDTH:I

    .line 365
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240_PICTURE_HEIGHT:I

    .line 367
    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 374
    .end local v1    # "pictureHeight":I
    .end local v2    # "pictureWidth":I
    :cond_f
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480_PICTURE_WIDTH:I

    .line 375
    .restart local v2    # "pictureWidth":I
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480_PICTURE_HEIGHT:I

    .restart local v1    # "pictureHeight":I
    goto/16 :goto_0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_b
        0xd -> :sswitch_2
        0xe -> :sswitch_5
        0xf -> :sswitch_a
        0x12 -> :sswitch_c
        0x13 -> :sswitch_d
        0x15 -> :sswitch_1
        0x22 -> :sswitch_9
        0x28 -> :sswitch_0
        0x2a -> :sswitch_3
        0x2f -> :sswitch_7
        0x34 -> :sswitch_4
        0x3c -> :sswitch_6
        0x3e -> :sswitch_8
    .end sparse-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x1

    .line 398
    if-ne p2, v2, :cond_2

    .line 399
    const-string v0, "RecordingController"

    const-string v1, "onError - MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 405
    const-string v0, "RecordingController"

    const-string v1, "onError - SEM_MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onStopRecordingRequested(Z)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0
.end method

.method public onImageEffectInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "mString"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string v1, "RecordingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImageEffectInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v1, "multiduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 416
    .local v0, "duration":I
    int-to-long v4, v0

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 417
    if-nez v0, :cond_0

    .line 418
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 419
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    .line 420
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    .line 436
    .end local v0    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const-string v1, "multimaxduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    const-string v1, "RecordingController"

    const-string v4, "onImageEffectInfo - MAX_DURATION_REACHED"

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 425
    .restart local v0    # "duration":I
    int-to-long v4, v0

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxDurationReached()V

    goto :goto_0

    .line 427
    .end local v0    # "duration":I
    :cond_2
    const-string v1, "multimaxsize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    const-string v1, "RecordingController"

    const-string v4, "onImageEffectInfo - MAX_FILESIZE_REACHED"

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 430
    .local v2, "size":J
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 431
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    .line 432
    .end local v2    # "size":J
    :cond_3
    const-string v1, "multisize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 434
    .restart local v2    # "size":J
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "arg0"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 443
    const/16 v0, 0x320

    if-ne p2, v0, :cond_2

    .line 444
    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    const-string v0, "RecordingController"

    const-string v1, "onInfo - already scheduled to stop video recording so returned."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingTick(JJ)V

    .line 450
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxDurationReached()V

    goto :goto_0

    .line 451
    :cond_2
    const/16 v0, 0x321

    if-ne p2, v0, :cond_3

    .line 452
    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    .line 454
    :cond_3
    const/16 v0, 0x384

    if-ne p2, v0, :cond_4

    .line 455
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    goto :goto_0

    .line 456
    :cond_4
    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    .line 457
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 458
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo - SEM_MEDIA_RECORDER_INFO_DURATION_IN_PROGRESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-nez p3, :cond_0

    .line 460
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 461
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    .line 462
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    goto :goto_0
.end method

.method public onMediaRecorderPrepared(Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onMediaRecorderPreparedEvent(Landroid/media/MediaRecorder;)V

    .line 470
    return-void
.end method

.method protected abstract onMediaRecorderPreparedEvent(Landroid/media/MediaRecorder;)V
.end method

.method public onRecordingCancelled()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 474
    const-string v0, "RecordingController"

    const-string v1, "onRecordingCancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 476
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 478
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 479
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 480
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 481
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    .line 482
    return-void
.end method

.method protected abstract onRecordingEvent(I)V
.end method

.method public onRecordingFailed(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 486
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->sendEmptyMessage(I)Z

    .line 490
    :cond_0
    return-void
.end method

.method protected abstract onRecordingMaxDurationReached()V
.end method

.method protected abstract onRecordingMaxFileSizeReached()V
.end method

.method public onRecordingPaused()V
    .locals 2

    .prologue
    .line 494
    const-string v0, "RecordingController"

    const-string v1, "onRecordingPaused"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 496
    return-void
.end method

.method public onRecordingRestarted()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 500
    const-string v0, "RecordingController"

    const-string v1, "onRecordingRestarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->removeMessages(I)V

    .line 505
    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    .line 506
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    .line 508
    :cond_1
    return-void
.end method

.method protected abstract onRecordingRestricted(ZZ)V
.end method

.method public onRecordingResumed()V
    .locals 2

    .prologue
    .line 512
    const-string v0, "RecordingController"

    const-string v1, "onRecordingResumed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 515
    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    .prologue
    .line 519
    const-string v0, "RecordingController"

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 522
    return-void
.end method

.method public onRecordingStopped()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 526
    const-string v0, "RecordingController"

    const-string v1, "onRecordingStopped"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 528
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    .line 530
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 531
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 532
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 533
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    .line 534
    return-void
.end method

.method protected abstract onRecordingTick(JJ)V
.end method

.method protected abstract onStopProgress(I)V
.end method

.method public onStopRecordingProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onStopProgress(I)V

    .line 539
    return-void
.end method

.method protected onStopRecordingRequested(Z)V
    .locals 4
    .param p1, "forced"    # Z

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    .line 725
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    goto :goto_0

    .line 719
    :cond_1
    if-eqz p1, :cond_2

    .line 720
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->stopRecordingForced()V

    goto :goto_0

    .line 722
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->stopRecording()V

    goto :goto_0
.end method

.method public onUpdateVideoDBPrepared(Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 543
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 545
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 546
    const-string v2, "duration"

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 553
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z

    move-result v2

    return v2

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v2, "RecordingController"

    const-string v3, "setDataSource failed"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v2, "duration"

    iget-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 547
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected abstract onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
.end method

.method protected registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v3, 0x1

    .line 736
    const-string v1, "RecordingController"

    const-string v2, "registerRecordingController"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 740
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    .line 742
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 743
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.LOW_BATTERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v1, "camera.action.OVERHEAT_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v1, "camera.action.COOLDOWN_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string v1, "camera.action.PREVIEW_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v1, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v1, "camera.action.CALL_STATE_RINGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v1, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    const-string v1, "camera.action.COVER_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string v1, "camera.action.ACTION_VIDEO_CAPABILITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    const-string v1, "camera.action.ACTION_WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    const-string v1, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    const-string v1, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 760
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    .line 761
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMediaRecorderListener(Ljava/lang/Object;)V

    .line 762
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 764
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    .line 768
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 770
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 771
    const-string v1, "RecordingController"

    const-string v2, "registerRecordingController, CallStatus ON"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 775
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    .line 776
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    .line 777
    return-void
.end method

.method protected setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    .prologue
    .line 613
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingState : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    .line 615
    return-void
.end method

.method protected setSecImagingRecorderListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSecImagingEventListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V

    .line 785
    return-void
.end method

.method protected showPopupCallToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 788
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingTimeRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01f5

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

    .line 793
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 795
    :cond_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01f4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordStopToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method protected abstract startRecording()V
.end method

.method protected startRecordingPreviewVI()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v0

    if-nez v0, :cond_0

    .line 814
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetOneShotPreviewCallback()V

    goto :goto_0
.end method

.method protected abstract stopRecording()V
.end method

.method protected abstract stopRecordingForced()V
.end method

.method protected unregisterRecordingController()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 825
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterRecordingController in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setMediaRecorderListener(Ljava/lang/Object;)V

    .line 834
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    .line 835
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 836
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    .line 837
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    .line 840
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    .line 841
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    .line 842
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 843
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->access$1000(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;)V

    .line 847
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_2

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->access$1100(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;)V

    .line 851
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    if-eqz v0, :cond_4

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->removeMessages(I)V

    .line 857
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->access$1200(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;)V

    .line 858
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    .line 860
    :cond_4
    return-void
.end method
