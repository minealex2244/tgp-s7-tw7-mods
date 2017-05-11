.class public Lcom/sec/android/app/camera/shootingmode/RecordingController;
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
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;,
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

.field protected static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field protected static final MILLISECONDS_IN_AN_HOUR:I = 0x36ee80

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

.field protected static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "RecordingController"

.field protected static final UNLIMITED_RECORDING_TIME:I = -0x1


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentRecordingFileSize:J

.field private mCurrentRecordingFileTime:J

.field private mCurrentRecordingTimeInMilliSecond:J

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mInfoDateTaken:J

.field private mInfoDisplayName:Ljava/lang/String;

.field private mInfoMimeType:Ljava/lang/String;

.field private mInfoTitle:Ljava/lang/String;

.field private mIsCustomEffectRecording:Z

.field private mIsRecordingFailedByVideoCapability:Z

.field private mIsRecordingFailedByWifiDisplayNotAllowed:Z

.field private mIsRecordingRestrictedByCallState:Z

.field private mIsRecordingRestrictedByOverHeat:Z

.field private mIsRecordingTimeLimitedByLowStorage:Z

.field private mIsRecordingTimeLimitedByProfile:Z

.field private mIsRecordingTimeLimitedBySystem:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMaxRecordingTimeLimitBySystem:I

.field private mMaxRecordingTimeLimitInMS:I

.field private mMaxVideoFileSize:J

.field private mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

.field private mPreviousRecordingTime:J

.field private mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

.field private mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

.field private mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field private mTempVideoFilename:Ljava/lang/String;

.field private mTickInterval:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilenameWithPath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 90
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 91
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 94
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    .line 96
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 97
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 98
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 99
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    .line 100
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    .line 106
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    .line 107
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    .line 108
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    .line 112
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    .line 114
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    .line 122
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsCustomEffectRecording:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    .line 126
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    .line 127
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 206
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/RecordingController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    return p1
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/RecordingController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->handleRecordingError(I)V

    return-void
.end method

.method private checkRecordingTickTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 973
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iget-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingTick(JJ)V

    .line 979
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_3

    .line 980
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_3

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 984
    :cond_3
    return-void
.end method

.method private clearFileResources()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 987
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRequestedFileUriForAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    const-string v0, "RecordingController"

    const-string v1, "onRecordingCancelled - failed to delete"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->closeFileDescriptor()V

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    .line 999
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    .line 1002
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    .line 1003
    return-void

    .line 992
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeFileDescriptor()V
    .locals 1

    .prologue
    .line 1007
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1014
    return-void

    .line 1010
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getMaxRecordingTimeLimitBySystem()I
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    return v0
.end method

.method private handleRecordingError(I)V
    .locals 7
    .param p1, "error"    # I

    .prologue
    const/4 v6, -0x4

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 1021
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

    .line 1022
    packed-switch p1, :pswitch_data_0

    .line 1079
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1027
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onCancelRecordingRequested()V

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 1035
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    goto :goto_0

    .line 1038
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    if-eqz v0, :cond_4

    .line 1039
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    .line 1040
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    const-string v0, "RecordingController"

    const-string v1, "Return, camera is finishing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1045
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onCancelRecordingRequested()V

    goto :goto_0

    .line 1048
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    if-eqz v0, :cond_7

    .line 1049
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1051
    const-string v0, "RecordingController"

    const-string v1, "Return, camera is finishing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1054
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_6

    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onCancelRecordingRequested()V

    .line 1057
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ERROR_RECORDING_START_FAIL:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto/16 :goto_0

    .line 1059
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_0

    .line 1063
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->clearFileResources()V

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    .line 1067
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 1068
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 1069
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 1070
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_0

    .line 1022
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isEffectRecording()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1082
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsCustomEffectRecording:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPreviewAngleChangeAnimationNeeded()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1095
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return v4

    .line 1098
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxSupportedPictureSize()Landroid/util/Size;

    move-result-object v2

    .line 1099
    .local v2, "maxPictureSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v3

    .line 1100
    .local v3, "sensorRatioType":I
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraResolution;->getAspectRatioType(I)I

    move-result v1

    .line 1101
    .local v1, "cameraRatioType":I
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraResolution;->getAspectRatioType(I)I

    move-result v0

    .line 1104
    .local v0, "camcorderRatioType":I
    if-ne v3, v5, :cond_2

    .line 1105
    if-ne v1, v5, :cond_2

    if-nez v0, :cond_2

    move v4, v5

    .line 1106
    goto :goto_0

    .line 1109
    :cond_2
    if-ne v1, v0, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v6

    if-ne v6, v5, :cond_0

    move v4, v5

    .line 1110
    goto :goto_0
.end method

.method private isRequestedFileUriForAttachMode()Z
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1118
    const/4 v0, 0x1

    .line 1121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyRecordingInfo(Z)V
    .locals 10
    .param p1, "isStarting"    # Z

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    if-nez v0, :cond_0

    .line 1131
    const-string v0, "RecordingController"

    const-string v2, "notifyRecordingInfo return - MediaRecorder is not prepared yet"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_0
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Camera_recordingDual"

    invoke-static {v0, v2, p1}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v9

    .line 1139
    .local v9, "fps":I
    const/16 v0, 0x3c

    if-lt v9, v0, :cond_3

    .line 1140
    const-string v1, "Camera_recording_over_60fps"

    .line 1144
    .local v1, "statusValue":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_4

    .line 1145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    .line 1146
    .local v3, "facing":I
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v4

    .line 1147
    .local v4, "hdrMode":I
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v5

    .line 1148
    .local v5, "vdisMode":I
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v8

    .line 1149
    .local v8, "isStickerRecording":Z
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v6

    .line 1151
    .local v6, "resolution":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isEffectRecording()Z

    move-result v7

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/Util;->notifyRecordingInfo(Landroid/content/Context;Ljava/lang/String;ZIIILjava/lang/String;ZZ)V

    goto :goto_0

    .line 1142
    .end local v1    # "statusValue":Ljava/lang/String;
    .end local v3    # "facing":I
    .end local v4    # "hdrMode":I
    .end local v5    # "vdisMode":I
    .end local v6    # "resolution":Ljava/lang/String;
    .end local v8    # "isStickerRecording":Z
    :cond_3
    const-string v1, "Camera_recording"

    .restart local v1    # "statusValue":Ljava/lang/String;
    goto :goto_1

    .line 1153
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private registerVideo()V
    .locals 2

    .prologue
    .line 1159
    const-string v0, "RecordingController"

    const-string v1, "registerVideo"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRequestedFileUriForAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->closeFileDescriptor()V

    .line 1179
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onVideoStoringCompleted(Landroid/net/Uri;)V

    .line 1180
    :goto_1
    return-void

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->renameVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->makeHighLightVideoFile(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentFilePath(Ljava/lang/String;)V

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    .line 1169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->validateFile(Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1174
    const-string v0, "RecordingController"

    const-string v1, "mCurrentVideoFilename NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1177
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->insertToDBForVideo()V

    goto :goto_0
.end method

.method private restrictRecording(Z)V
    .locals 1
    .param p1, "isRestricted"    # Z

    .prologue
    .line 1195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    .line 1196
    return-void
.end method

.method private restrictRecording(ZZ)V
    .locals 3
    .param p1, "isRestricted"    # Z
    .param p2, "stopForced"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1183
    if-eqz p1, :cond_1

    .line 1184
    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : true"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingRestricted(ZZ)V

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v0, :cond_0

    .line 1188
    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : false"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingRestricted(ZZ)V

    goto :goto_0
.end method

.method private startRecordingTickTimer()V
    .locals 6

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopInactivityTimer()V

    .line 1200
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingTick(JJ)V

    .line 1201
    return-void
.end method

.method private updateMaxRecordingTime(I)V
    .locals 10
    .param p1, "remainTimeByProfile"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 1204
    const/4 v1, 0x0

    .line 1205
    .local v1, "bitrate":I
    const/4 v4, 0x0

    .line 1206
    .local v4, "videoBitrate":I
    const/4 v0, 0x0

    .line 1207
    .local v0, "audioBitrate":I
    const/4 v2, 0x0

    .line 1208
    .local v2, "remainTimeByStorage":I
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitBySystem()I

    move-result v3

    .line 1210
    .local v3, "remainTimeBySystem":I
    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    .line 1212
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v4

    .line 1213
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v5

    const/16 v6, 0x1e

    if-le v5, v6, :cond_0

    .line 1214
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v5

    div-int/lit8 v5, v5, 0x1e

    mul-int/2addr v4, v5

    .line 1217
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAudioRecording()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1218
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result v0

    .line 1220
    :cond_1
    add-int v1, v4, v0

    .line 1221
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v5

    invoke-static {v5, v1}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainTime(II)I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 1223
    const v5, 0x36ee80

    if-ge v2, v5, :cond_6

    .line 1224
    iput-boolean v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    .line 1229
    :goto_0
    if-eq p1, v7, :cond_7

    .line 1230
    iput-boolean v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    .line 1235
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v5

    if-lez v5, :cond_2

    .line 1236
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    .line 1239
    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v5, :cond_3

    .line 1240
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ne v5, v7, :cond_8

    .line 1241
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    .line 1247
    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v5, :cond_4

    .line 1248
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ne v5, v7, :cond_9

    .line 1249
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    .line 1255
    :cond_4
    :goto_3
    iget-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    if-eqz v5, :cond_5

    .line 1256
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ne v5, v7, :cond_a

    .line 1257
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    .line 1262
    :cond_5
    :goto_4
    const-string v5, "RecordingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMaxRecordingTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void

    .line 1226
    :cond_6
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    goto :goto_0

    .line 1232
    :cond_7
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    goto :goto_1

    .line 1242
    :cond_8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ge v3, v5, :cond_3

    .line 1243
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    goto :goto_2

    .line 1250
    :cond_9
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ge v2, v5, :cond_4

    .line 1251
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    goto :goto_3

    .line 1258
    :cond_a
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ge p1, v5, :cond_5

    .line 1259
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    goto :goto_4
.end method

.method private updateThumbnail()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1266
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    .line 1267
    .local v2, "width":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    .line 1269
    .local v1, "height":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_1

    .line 1270
    :cond_0
    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    .line 1271
    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    .line 1277
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRequestedFileUriForAttachMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1278
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v3, v4, v2, v1, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1284
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_3

    .line 1285
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4, v6, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail(Landroid/graphics/Bitmap;IZ)V

    .line 1286
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1287
    const/4 v0, 0x0

    .line 1291
    :goto_1
    return-void

    .line 1280
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v3, v2, v1, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1281
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    goto :goto_0

    .line 1289
    :cond_3
    const-string v3, "RecordingController"

    const-string v4, "Skip post capture animation"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected createNewVideoPath(IZLjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "storage"    # I
    .param p2, "cover"    # Z
    .param p3, "mimeString"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-static/range {p1 .. p2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->createVideoDirectory(IZ)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "cameraDirPath":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 558
    const-string v14, "RecordingController"

    const-string v15, "recording directory make fail"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v9, 0x0

    .line 599
    :goto_0
    return-object v9

    .line 562
    :cond_0
    const/4 v7, 0x0

    .line 563
    .local v7, "extension":Ljava/lang/String;
    const/4 v12, 0x0

    .line 565
    .local v12, "mimeType":Ljava/lang/String;
    const-string v14, "video/3gpp"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 566
    const-string v7, ".3gp"

    .line 567
    const-string v12, "video/3gpp"

    .line 574
    :goto_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v4

    .line 575
    .local v4, "dateTaken":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 576
    .local v3, "date":Ljava/util/Date;
    const-string v14, "yyyyMMdd_kkmmss"

    invoke-static {v14, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 577
    .local v13, "title":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, "displayName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 581
    .local v9, "fileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    .local v8, "f":Ljava/io/File;
    const/4 v10, 0x0

    .line 583
    .local v10, "fileNumber":I
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 584
    const-string v14, "RecordingController"

    const-string v15, "Duplicated file name found"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 586
    const-string v14, "yyyyMMdd_kkmmss"

    invoke-static {v14, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 587
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "fileNumber":I
    .local v11, "fileNumber":I
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 588
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 589
    const-string v14, "RecordingController"

    const-string v15, "New file name created"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v8, Ljava/io/File;

    .end local v8    # "f":Ljava/io/File;
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8    # "f":Ljava/io/File;
    move v10, v11

    .end local v11    # "fileNumber":I
    .restart local v10    # "fileNumber":I
    goto :goto_2

    .line 569
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateTaken":J
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "fileNumber":I
    .end local v13    # "title":Ljava/lang/String;
    :cond_1
    const-string v7, ".mp4"

    .line 570
    const-string v12, "video/mp4"

    goto/16 :goto_1

    .line 594
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "dateTaken":J
    .restart local v6    # "displayName":Ljava/lang/String;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v10    # "fileNumber":I
    .restart local v13    # "title":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoTitle:Ljava/lang/String;

    .line 595
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoDisplayName:Ljava/lang/String;

    .line 596
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoDateTaken:J

    .line 597
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoMimeType:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected finishRecordingPreviewVI()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v0

    if-nez v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleRequestNotifyPreviewStarted()V

    goto :goto_0
.end method

.method protected getCurrentRecordingFileSize()J
    .locals 2

    .prologue
    .line 616
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    return-wide v0
.end method

.method protected getCurrentRecordingFileTimeInSecond()J
    .locals 4

    .prologue
    .line 620
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected getMaxRecordingTimeLimitInSecond()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected getMaxVideoFileSize()J
    .locals 2

    .prologue
    .line 628
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    return-wide v0
.end method

.method protected getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-object v0
.end method

.method protected getRemainRecordingTime()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 654
    const/4 v2, 0x0

    .line 655
    .local v2, "remainTime":I
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, "bitrate":I
    const/4 v3, 0x0

    .line 658
    .local v3, "videoBitrate":I
    const/4 v0, 0x0

    .line 660
    .local v0, "audioBitrate":I
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v3

    .line 661
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v4

    const/16 v5, 0x1e

    if-le v4, v5, :cond_0

    .line 662
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v4

    div-int/lit8 v4, v4, 0x1e

    mul-int/2addr v3, v4

    .line 665
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 666
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result v0

    .line 668
    :cond_1
    add-int v1, v3, v0

    .line 669
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainTime(II)I

    move-result v2

    .line 671
    .end local v0    # "audioBitrate":I
    .end local v1    # "bitrate":I
    .end local v3    # "videoBitrate":I
    :cond_2
    return v2
.end method

.method protected getTotalRecordingTime()J
    .locals 4

    .prologue
    .line 675
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected insertToDBForVideo()V
    .locals 10

    .prologue
    .line 679
    const-string v6, "RecordingController"

    const-string v7, "insertDBForVideo start"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 683
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "title"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoTitle:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v6, "_display_name"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v6, "datetaken"

    iget-wide v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoDateTaken:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 686
    const-string v6, "mime_type"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoMimeType:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v6, "_data"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v6, "recordingtype"

    const-string v7, "0"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v6, "_size"

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 692
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    .line 693
    .local v3, "resolutionId":I
    const-string v6, "resolution"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v6, "width"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    const-string v6, "height"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_1

    .line 698
    const-string v6, "video_codec_info"

    const-string v7, "H.263"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v6, "audio_codec_info"

    const-string v7, "AMR"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :goto_0
    const-string v6, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v6, "addr"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v7}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getAddressValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 709
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 710
    const-string v6, "latitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 711
    const-string v6, "longitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 714
    :cond_0
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 716
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 717
    const-string v6, "duration"

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 725
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v6, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 726
    const-string v6, "RecordingController"

    const-string v7, "do not update DB."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_2
    return-void

    .line 701
    .end local v2    # "location":Landroid/location/Location;
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_1
    const-string v6, "video_codec_info"

    const-string v7, "H.264"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v6, "audio_codec_info"

    const-string v7, "AAC"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    .restart local v2    # "location":Landroid/location/Location;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 719
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_3
    :try_start_1
    const-string v6, "RecordingController"

    const-string v7, "setDataSource failed"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v6, "duration"

    iget-wide v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v6

    .line 732
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://media/external/video/media"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setContentUri(Landroid/net/Uri;)V

    .line 733
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setContentVideoType(Z)V

    .line 735
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getAddressValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 736
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVideoIDListHaveAddress()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 748
    :cond_3
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 749
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 751
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v6}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onVideoStoringCompleted()Z

    move-result v6

    if-nez v6, :cond_5

    .line 752
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateThumbnail()V

    .line 754
    :cond_5
    const-string v6, "RecordingController"

    const-string v7, "insertDBForVideo end"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 738
    :catch_1
    move-exception v5

    .line 739
    .local v5, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "RecordingController"

    const-string v7, "Not enough space in database"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v7, 0x7f0901c5

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 741
    .end local v5    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v1

    .line 742
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :goto_5
    const-string v6, "RecordingController"

    const-string v7, "insert failed"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 744
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "RecordingController"

    const-string v7, "ContentResolver insert failed"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 718
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v6

    move-object v1, v6

    goto/16 :goto_3

    .line 741
    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method protected isRecordingControlAvailable()Z
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingRestricted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 774
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    :cond_0
    const-string v1, "RecordingController"

    const-string v2, "RecordingRestricted - over heat temperature"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :goto_0
    return v0

    .line 778
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 779
    :cond_2
    const-string v1, "RecordingController"

    const-string v2, "RecordingRestricted - calling"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingTimeLimited()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 792
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v1

    if-lez v1, :cond_0

    .line 793
    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - requested recording duration limit"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_0
    return v0

    .line 796
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v1, :cond_1

    .line 797
    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - system limitation"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v1, :cond_2

    .line 801
    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - low storage"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 804
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    if-eqz v0, :cond_3

    .line 805
    const-string v0, "RecordingController"

    const-string v1, "RecordingTimeLimited - recorder profile"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSnapshotAvailable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 811
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v3, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v2

    .line 814
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v3

    if-nez v3, :cond_0

    .line 817
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 820
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 824
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    .line 825
    .local v0, "camcorderResolutionId":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    .line 827
    .local v1, "facing":I
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 831
    :cond_2
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotAvailableFeature(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isStopAndRestartRecordingAvailable()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxVideoFileSize()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 221
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected limitRecordingTimeBySystem(I)V
    .locals 1
    .param p1, "second"    # I

    .prologue
    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    .line 845
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 846
    return-void
.end method

.method public onChangeCamcorderParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 9
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 226
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    .line 227
    .local v0, "camcorderResolutionId":I
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    .line 228
    .local v1, "facing":I
    const-string v6, "RecordingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onChangeCamcorderParameters : facing = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", camcorderResolutionId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isSnapshotAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotWidthFeature(II)I

    move-result v3

    .line 232
    .local v3, "pictureWidth":I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotHeightFeature(II)I

    move-result v2

    .line 234
    .local v2, "pictureHeight":I
    const-string v6, "RecordingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPictureSize : pictureWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pictureHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPictureSize(II)V

    .line 237
    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v5

    .line 238
    .local v5, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Size;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 239
    const/4 v4, 0x0

    .line 240
    .local v4, "thumbnaiSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/camera/util/Util;->findThumbnailSize(Ljava/util/List;II)Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v4

    .line 241
    if-eqz v4, :cond_0

    .line 242
    iget v6, v4, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    iget v7, v4, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-virtual {p1, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setJpegThumbnailSize(II)V

    .line 245
    .end local v2    # "pictureHeight":I
    .end local v3    # "pictureWidth":I
    .end local v4    # "thumbnaiSize":Lcom/samsung/android/camera/core/SemCamera$Size;
    .end local v5    # "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/core/SemCamera$Size;>;"
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x1

    .line 252
    if-ne p2, v2, :cond_2

    .line 253
    const-string v0, "RecordingController"

    const-string v1, "onError - MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onCancelRecordingRequested()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 259
    const-string v0, "RecordingController"

    const-string v1, "onError - MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onStopRecordingRequested(Z)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0
.end method

.method public onImageEffectInfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "infoString"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v1, "RecordingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSecImagingString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v1, "multiduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 270
    .local v0, "duration":I
    int-to-long v4, v0

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 271
    if-nez v0, :cond_0

    .line 272
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 273
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    .line 274
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    .line 290
    .end local v0    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const-string v1, "multimaxduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    const-string v1, "RecordingController"

    const-string v4, "onImageEffectInfo - MAX_DURATION_REACHED"

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 279
    .restart local v0    # "duration":I
    int-to-long v4, v0

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingMaxDurationReached()V

    goto :goto_0

    .line 281
    .end local v0    # "duration":I
    :cond_2
    const-string v1, "multimaxsize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    const-string v1, "RecordingController"

    const-string v4, "onImageEffectInfo - MAX_FILESIZE_REACHED"

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 284
    .local v2, "size":J
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    .line 286
    .end local v2    # "size":J
    :cond_3
    const-string v1, "multisize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 288
    .restart local v2    # "size":J
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 6
    .param p1, "arg0"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 297
    const/16 v0, 0x320

    if-ne p2, v0, :cond_2

    .line 298
    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    const-string v0, "RecordingController"

    const-string v1, "onInfo - already scheduled to stop video recording so returned."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingTick(JJ)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingMaxDurationReached()V

    goto :goto_0

    .line 305
    :cond_2
    const/16 v0, 0x321

    if-ne p2, v0, :cond_3

    .line 306
    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    .line 308
    :cond_3
    const/16 v0, 0x384

    if-ne p2, v0, :cond_4

    .line 309
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    goto :goto_0

    .line 310
    :cond_4
    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    .line 311
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 312
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo - MEDIA_RECORDER_INFO_DURATION_PROGRESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-nez p3, :cond_0

    .line 314
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 315
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    .line 316
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    goto :goto_0
.end method

.method public onMediaRecorderPrepared(Landroid/media/MediaRecorder;)V
    .locals 12
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 323
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v5

    .line 325
    .local v5, "resolutionId":I
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    invoke-direct {v1, v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;-><init>(I)V

    .line 326
    .local v1, "builder":Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    const-string v8, "RecordingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCamcorderProfile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine;->isEffectProcessing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    const/16 v8, 0x18

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoFrameRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 330
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoSource(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 331
    sget-object v8, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->EffectVideoBitrateTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoEncodingBitrate(Landroid/util/SparseArray;)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 334
    :cond_0
    const/16 v8, 0x2a

    if-ne v5, v8, :cond_1

    .line 335
    const/16 v8, 0x3c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoFrameRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    .line 338
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v8, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onBuildMediaRecorderProfile(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V

    .line 339
    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->build()Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    .line 342
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 343
    const/16 v0, 0x8

    .line 345
    .local v0, "BITS_PER_BYTE":I
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    if-lez v8, :cond_2

    .line 346
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    div-int/lit8 v4, v8, 0x8

    .line 351
    .local v4, "minBytesToRecordOneSec":I
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v6

    .line 353
    .local v6, "requestedRecordingSizeLimit":J
    int-to-long v8, v4

    cmp-long v8, v6, v8

    if-gez v8, :cond_3

    .line 354
    const-string v8, "RecordingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkExtraSizeLimit - size limit failed. finish. requestedRecordingSizeLimit : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", minBytesToRecordOneSec : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/camera/shootingmode/RecordingController$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$2;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 440
    .end local v0    # "BITS_PER_BYTE":I
    .end local v4    # "minBytesToRecordOneSec":I
    .end local v6    # "requestedRecordingSizeLimit":J
    :goto_1
    return-void

    .line 348
    .restart local v0    # "BITS_PER_BYTE":I
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v8

    div-int/lit8 v4, v8, 0x8

    .restart local v4    # "minBytesToRecordOneSec":I
    goto :goto_0

    .line 366
    .end local v0    # "BITS_PER_BYTE":I
    .end local v4    # "minBytesToRecordOneSec":I
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->dumpProfile()V

    .line 368
    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 369
    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 371
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRequestedFileUriForAttachMode()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 372
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->closeFileDescriptor()V

    .line 374
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v9

    const-string v10, "rw"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 375
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setContentUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_4

    .line 381
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 396
    :cond_4
    :goto_3
    :try_start_1
    iget-wide v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    invoke-virtual {p1, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    :goto_4
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoSource()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 402
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAudioRecording()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 403
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioSource()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 406
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->semSetAuthor(I)V

    .line 407
    const/16 v8, 0x1f4

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->semSetDurationInterval(I)V

    .line 409
    const/16 v8, 0x2a

    if-ne v5, v8, :cond_6

    .line 410
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->semSetIframeInterval(I)V

    .line 413
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getFileSizeInterval()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p1, v8, v9}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    .line 414
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getOutputFormat()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 416
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getMaxDuration()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateMaxRecordingTime(I)V

    .line 417
    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 419
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getRecordingMode()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    .line 421
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v8

    const/16 v9, 0x1e

    if-le v8, v9, :cond_a

    .line 422
    const/16 v8, 0x1e

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 429
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoHeight()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 430
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 431
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncoder()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 432
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 433
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioChannels()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 434
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioSamplingRate()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 435
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAudioRecording()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 436
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioEncoder()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 439
    :cond_7
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->notifyRecordingInfo(Z)V

    goto/16 :goto_1

    .line 376
    :catch_0
    move-exception v3

    .line 377
    .local v3, "ex":Ljava/io/FileNotFoundException;
    const-string v8, "RecordingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file not found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 384
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->createVideoFile(IZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    .line 386
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v8

    const/16 v9, 0x64

    if-ne v8, v9, :cond_9

    .line 387
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v9

    const-string v10, "video/3gpp"

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->createNewVideoPath(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    .line 391
    :goto_6
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoTitle:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentTitle(Ljava/lang/String;)V

    .line 392
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 389
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v9

    const-string v10, "video/mp4"

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->createNewVideoPath(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    goto :goto_6

    .line 397
    :catch_1
    move-exception v2

    .line 398
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "RecordingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 423
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x1e

    sget v9, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_RECORDING_VIDEO_FPS_NORMAL_FRONT:I

    if-eq v8, v9, :cond_b

    .line 424
    sget v8, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_RECORDING_VIDEO_FPS_NORMAL_FRONT:I

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5

    .line 426
    :cond_b
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5
.end method

.method public onRecordingCancelled()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 444
    const-string v0, "RecordingController"

    const-string v1, "onRecordingCancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->clearFileResources()V

    .line 448
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    .line 451
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 452
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 453
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 454
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->notifyRecordingInfo(Z)V

    .line 457
    return-void
.end method

.method public onRecordingFailed(IZ)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "isForced"    # Z

    .prologue
    .line 461
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

    .line 462
    if-eqz p2, :cond_1

    .line 463
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->handleRecordingError(I)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onRecordingPaused()V
    .locals 2

    .prologue
    .line 473
    const-string v0, "RecordingController"

    const-string v1, "onRecordingPaused"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    .line 475
    return-void
.end method

.method public onRecordingRestarted()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 479
    const-string v0, "RecordingController"

    const-string v1, "onRecordingRestarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->removeMessages(I)V

    .line 484
    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    .line 486
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    .line 487
    return-void
.end method

.method public onRecordingResumed()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "RecordingController"

    const-string v1, "onRecordingResumed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    .line 494
    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    .prologue
    .line 498
    const-string v0, "RecordingController"

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    .line 501
    return-void
.end method

.method public onRecordingStopAndRestarting()V
    .locals 2

    .prologue
    .line 505
    const-string v0, "RecordingController"

    const-string v1, "onRecordingRestarting"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->registerVideo()V

    .line 508
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateThumbnail()V

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setMaxVideoFileSize()V

    .line 510
    return-void
.end method

.method public onRecordingStopped()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 514
    const-string v0, "RecordingController"

    const-string v1, "onRecordingStopped"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->registerVideo()V

    .line 516
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    .line 519
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    .line 520
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    .line 521
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    .line 522
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->notifyRecordingInfo(Z)V

    .line 525
    return-void
.end method

.method public onSecImagingRecorderPrepared()V
    .locals 4

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->createVideoFile(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    const-string v2, "video/mp4"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->createNewVideoPath(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize(J)V

    .line 533
    return-void
.end method

.method public onStopRecordingProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onStopProgress(I)V

    .line 538
    return-void
.end method

.method protected register(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p2, "mode"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    .prologue
    const/4 v4, 0x1

    .line 855
    const-string v1, "RecordingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    .line 857
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 859
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    .line 861
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 862
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.LOW_BATTERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    const-string v1, "camera.action.OVERHEAT_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    const-string v1, "camera.action.COOLDOWN_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v1, "camera.action.PREVIEW_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    const-string v1, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v1, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string v1, "camera.action.ACTION_VIDEO_CAPABILITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v1, "camera.action.ACTION_WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 876
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    .line 877
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    .line 879
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    .line 883
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 885
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 886
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 889
    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    .line 891
    return-void
.end method

.method protected registerSecImagingRecorderListener()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSecImagingEventListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V

    .line 899
    return-void
.end method

.method protected setCustomEffectRecording(Z)V
    .locals 0
    .param p1, "effectRecording"    # Z

    .prologue
    .line 907
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsCustomEffectRecording:Z

    .line 908
    return-void
.end method

.method public setMaxVideoFileSize()V
    .locals 6

    .prologue
    const-wide v4, 0xffffffffL

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    .line 546
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestedRecordingSize by intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 551
    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    .line 553
    :cond_1
    return-void
.end method

.method protected setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    .prologue
    .line 649
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

    .line 650
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    .line 651
    return-void
.end method

.method protected setTickInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 911
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    .line 912
    return-void
.end method

.method protected startRecordingPreviewVI()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v0

    if-nez v0, :cond_0

    .line 928
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isPreviewAngleChangeAnimationNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    .line 927
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetOneShotPreviewCallback()V

    goto :goto_0

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    goto :goto_1
.end method

.method protected unregister()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 935
    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister in "

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

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    .line 943
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    .line 945
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    .line 946
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    .line 947
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    .line 948
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    .line 950
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsCustomEffectRecording:Z

    .line 953
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    .line 954
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    .line 955
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    .line 956
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->access$1000(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;)V

    .line 960
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->access$1100(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;)V

    .line 964
    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    .line 966
    :cond_2
    return-void
.end method

.method protected unregisterSecImagingRecorderListener()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSecImagingEventListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V

    .line 970
    return-void
.end method
