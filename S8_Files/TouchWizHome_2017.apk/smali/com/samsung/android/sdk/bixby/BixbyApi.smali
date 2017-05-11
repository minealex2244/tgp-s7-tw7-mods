.class public Lcom/samsung/android/sdk/bixby/BixbyApi;
.super Ljava/lang/Object;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$CommonStateListener;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;,
        Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;
    }
.end annotation


# static fields
.field static final CM_ACTION:Ljava/lang/String; = "com.samsung.android.rubin.app.intent.action.CM_LOGGING"

.field private static final CM_PACKAGE:Ljava/lang/String; = "com.samsung.android.rubin.app"

.field private static final DEBUG:Z

.field static final RESULT_CODE_APP_CONTEXT:Ljava/lang/String; = "esem_context_result"

.field static final RESULT_CODE_CHATTY_MODE:Ljava/lang/String; = "esem_chatty_mode_result"

.field static final RESULT_CODE_CHATTY_MODE_CANCEL:Ljava/lang/String; = "esem_cancel_chatty_mode"

.field static final RESULT_CODE_CLIENT_CONTROL:Ljava/lang/String; = "esem_client_control"

.field static final RESULT_CODE_LOG_STATE:Ljava/lang/String; = "esem_state_log"

.field static final RESULT_CODE_NLG:Ljava/lang/String; = "esem_request_nlg"

.field static final RESULT_CODE_PARAM_FILLING:Ljava/lang/String; = "esem_param_filling_result"

.field static final RESULT_CODE_SPLIT_STATE:Ljava/lang/String; = "esem_split_state_result"

.field static final RESULT_CODE_STATE_COMMAND:Ljava/lang/String; = "state_command_result"

.field static final RESULT_CODE_TTS:Ljava/lang/String; = "esem_request_tts"

.field private static final SEQ_NUM_FIRST:I = 0x1

.field private static final SEQ_NUM_RULE_CANCEL:I = -0x1

.field private static final SEQ_NUM_TEST:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field static final VER:Ljava/lang/String; = "_0.2.0"

.field private static mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;


# instance fields
.field private mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

.field private mActiveAppName:Ljava/lang/String;

.field private mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mIsLandingKeyboardOffMode:Z

.field private mIsPartiallyLanded:Z

.field private mIsRuleRunning:Z

.field private mIsTestMode:Z

.field private mIsTestRunning:Z

.field private mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

.field private mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

.field private mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

.field private mPackageVersionName:Ljava/lang/String;

.field private mPathRuleInfo:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

.field private mResponseCallback:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

.field private mSendStateRetryCount:I

.field private mSendStateRunnable:Ljava/lang/Runnable;

.field private mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

.field mStateCommandJsonFromBa:Ljava/lang/String;

.field private mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_0.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    .line 67
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mHandler:Landroid/os/Handler;

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestMode:Z

    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestRunning:Z

    .line 104
    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsRuleRunning:Z

    .line 107
    iput-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    .line 108
    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsLandingKeyboardOffMode:Z

    .line 110
    iput-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPathRuleInfo:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    .line 111
    iput-boolean v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsPartiallyLanded:Z

    .line 406
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/bixby/BixbyApi;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/bixby/BixbyApi;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/bixby/BixbyApi;

    .prologue
    .line 64
    iget v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRetryCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/samsung/android/sdk/bixby/BixbyApi;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/sdk/bixby/BixbyApi;

    .prologue
    .line 64
    iget v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRetryCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/bixby/BixbyApi;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/bixby/BixbyApi;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activeAppName"    # Ljava/lang/String;

    .prologue
    .line 418
    const-class v4, Lcom/samsung/android/sdk/bixby/BixbyApi;

    monitor-enter v4

    if-nez p0, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Context cannot be null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 420
    :cond_0
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v3, :cond_1

    .line 421
    new-instance v3, Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-direct {v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;-><init>()V

    sput-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 423
    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setContext(Landroid/content/Context;)V

    .line 424
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setActiveApp(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 427
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 429
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 430
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setVersionName(Ljava/lang/String;)V

    .line 431
    sget-boolean v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 432
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createInstance: Version Name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    :cond_2
    :goto_0
    :try_start_3
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v3

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createInstance: cannot get versionName from package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 435
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string v5, ""

    invoke-direct {v3, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setVersionName(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 779
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 780
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.rubin.app.intent.action.CM_LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string v1, "com.samsung.android.rubin.app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string v1, "appName"

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPackageVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v1, "timestamp"

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 786
    return-object v0
.end method

.method private createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "stateIds"    # Ljava/lang/String;

    .prologue
    .line 772
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\"appName\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"logType\":\""

    .line 773
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"stateIds\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 774
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 479
    const-class v1, Lcom/samsung/android/sdk/bixby/BixbyApi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Instance is null. please call createInstance() for the first time."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 483
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInstance:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private getNlgStateInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .local v3, "statesBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v4, :cond_3

    .line 1088
    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v0

    .line 1089
    .local v0, "ssi":Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    sget-object v4, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-ne v0, v4, :cond_0

    .line 1090
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Partial Landing handler requires the current state ID. onScreenStatesRequested() is not allowed to return null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1094
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->getStates()Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 1096
    .local v2, "stateIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1097
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1098
    .local v1, "stateId":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1100
    .end local v1    # "stateId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1106
    .end local v0    # "ssi":Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .end local v2    # "stateIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1103
    :cond_3
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getTestParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "jsonTestParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 794
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 796
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 797
    .local v2, "jObj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 800
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 801
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 802
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 810
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    move-object v4, v6

    .line 811
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object v4

    .line 805
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    .line 806
    goto :goto_1
.end method

.method private getTimestamp()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private handleTestResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 2
    .param p1, "result"    # Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    .param p2, "lastReceivedStateCmd"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    const/4 v1, 0x0

    .line 616
    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setRuleRunning(Z)V

    .line 618
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isTestRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;->onTearDown()V

    .line 621
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setTestRunning(Z)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_0

    .line 625
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setTestRunning(Z)V

    goto :goto_0
.end method

.method private handleTestState(Ljava/lang/String;)V
    .locals 7
    .param p1, "jsonState"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestMode:Z

    .line 817
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v5, "handleTestState: SeqNo 0 found. isTestMode true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 821
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v4, "setupParameters"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 822
    const-string v4, "setupParameters"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 823
    .local v3, "testParam":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getTestParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 824
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 825
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 841
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "testParam":Ljava/lang/String;
    :goto_0
    return-void

    .line 828
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "testParam":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    if-eqz v4, :cond_1

    .line 829
    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    invoke-interface {v4, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;->onSetup(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 837
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "testParam":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTestState: Invalid JSON:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 831
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "testParam":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 835
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "testParam":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private hideKeyboard()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1269
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v5, "hideKeyboard: entered."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isLandingKeyboardOffMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1272
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLandingKeyboardOffMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isLandingKeyboardOffMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :goto_0
    return v3

    .line 1276
    :cond_0
    const/4 v3, 0x0

    .line 1279
    .local v3, "result":Z
    :try_start_0
    const-string v4, "android.view.inputmethod.InputMethodManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1281
    .local v1, "forceHideSoftInput":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 1282
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1283
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-string v4, "semForceHideSoftInput"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1284
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: result - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1285
    .end local v1    # "forceHideSoftInput":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1287
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1288
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1289
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 1290
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1291
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 1292
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideKeyboard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isBixbySupported()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1148
    :try_start_0
    const-string v6, "com.samsung.android.feature.SemFloatingFeature"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1150
    .local v4, "semFloatingFeature":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getInstance"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1151
    .local v2, "getInstance":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1154
    .local v5, "semFloatingFeatureInstance":Ljava/lang/Object;
    const-string v6, "getBoolean"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1156
    .local v1, "getBoolean":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1157
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    .line 1156
    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1159
    .local v3, "ret":Z
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isBixbySupported:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1172
    .end local v1    # "getBoolean":Ljava/lang/reflect/Method;
    .end local v2    # "getInstance":Ljava/lang/reflect/Method;
    .end local v3    # "ret":Z
    .end local v5    # "semFloatingFeatureInstance":Ljava/lang/Object;
    :goto_0
    return v3

    .line 1162
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v8, "isBixbySupported: Can\'t read information on Bixby support."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 1172
    goto :goto_0

    .line 1162
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1
.end method

.method private isLandingKeyboardOffMode()Z
    .locals 1

    .prologue
    .line 1315
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsLandingKeyboardOffMode:Z

    return v0
.end method

.method private logState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "stateIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 754
    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Log value cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 758
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "logState":Ljava/lang/String;
    const-string v3, "esem_state_log"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v2    # "logState":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 765
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "stateIds"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 768
    return-void

    .line 760
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v4, "logState: Can\'t send log to BixbyAgent."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mResponseCallback:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mResponseCallback:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    const-string v0, "esem_state_log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "esem_cancel_chatty_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v1, "sendCommandToBa: Bixby Agent is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mContext:Landroid/content/Context;

    .line 444
    return-void
.end method

.method private setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPackageVersionName:Ljava/lang/String;

    .line 448
    return-void
.end method


# virtual methods
.method public clearInterimStateListener()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    goto :goto_0
.end method

.method public extendTimeout(I)V
    .locals 3
    .param p1, "nSecs"    # I

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1228
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "extendTimeout: Path Rule is not running."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :goto_0
    return-void

    .line 1232
    :cond_0
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 1233
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "extendTimeout: Timeout value is not in the valid range. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1237
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"pathRuleTimeout\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "timeOut":Ljava/lang/String;
    const-string v1, "esem_client_control"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getActiveApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRuleInfo()Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
    .locals 1

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsRuleRunning:Z

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPathRuleInfo:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    .line 1063
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleLandingKeyboardOffMode(Ljava/lang/String;)V
    .locals 7
    .param p1, "pathRuleInfo"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1300
    const-string v0, "isLandingKeyboardOffMode"

    .line 1302
    .local v0, "LANDING_KEYBOARD_OFF_MODE":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "isLandingKeyboardOffMode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1304
    const-string v3, "isLandingKeyboardOffMode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setLandingKeyboardOffMode(Z)V

    .line 1312
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1306
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setLandingKeyboardOffMode(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1308
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1309
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get isLandingKeyboardOffMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setLandingKeyboardOffMode(Z)V

    goto :goto_0
.end method

.method handlePathRuleInfo(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V
    .locals 1
    .param p1, "pri"    # Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mPathRuleInfo:Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    .line 1073
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onPathRuleStarted(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V

    .line 1076
    :cond_0
    return-void
.end method

.method public isPartiallyLanded()Z
    .locals 1

    .prologue
    .line 1248
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsPartiallyLanded:Z

    return v0
.end method

.method public isRuleRunning()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsRuleRunning:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestMode:Z

    return v0
.end method

.method public isTestRunning()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestRunning:Z

    return v0
.end method

.method public logEnterState(Ljava/lang/String;)V
    .locals 1
    .param p1, "stateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 692
    const-string v0, "state_enter"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logState(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public logEnterStates(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "stateIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .local v1, "statesBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 705
    .local v0, "stateId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 707
    .end local v0    # "stateId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 709
    :cond_1
    const-string v2, "state_enter"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logState(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public logExitState(Ljava/lang/String;)V
    .locals 1
    .param p1, "stateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 719
    const-string v0, "state_exit"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logState(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method public logExitStates(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 729
    .local p1, "stateIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v1, "statesBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 731
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 732
    .local v0, "stateId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 734
    .end local v0    # "stateId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 736
    :cond_1
    const-string v2, "state_exit"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logState(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public logOutputParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 747
    const-string v1, "output_param"

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 748
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "paramName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string v1, "paramValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 751
    return-void
.end method

.method onServiceBound(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onServiceBound(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method onServiceCreated()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onServiceCreated()V

    goto :goto_0
.end method

.method onServiceDestroyed()V
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onServiceDestroyed()V

    goto :goto_0
.end method

.method onServiceUnbound(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    if-nez v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;->onServiceUnbound(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method requestContext()V
    .locals 7

    .prologue
    .line 964
    const/4 v1, 0x0

    .line 965
    .local v1, "ret":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 967
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v5, :cond_4

    .line 968
    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v3

    .line 969
    .local v3, "ssi":Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"appName\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    sget-object v5, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-eq v3, v5, :cond_3

    .line 971
    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v4

    .line 972
    .local v4, "states":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 973
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const/4 v1, 0x1

    .line 998
    .end local v3    # "ssi":Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .end local v4    # "states":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    if-eqz v5, :cond_1

    .line 999
    const-string v5, ",\"isChattyModeSupported\":true"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :cond_1
    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    if-eqz v1, :cond_6

    .line 1006
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\"result\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "msg":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\"appContext\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    const-string v5, "esem_context_result"

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return-void

    .line 976
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v3    # "ssi":Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .restart local v4    # "states":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: No state ids."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 979
    .end local v4    # "states":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: STATE_NOT_APPLICABLE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    .end local v3    # "ssi":Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    :cond_4
    const-string v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"appName\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: InterimListener is not set. "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    sget-object v6, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-eq v5, v6, :cond_0

    .line 985
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: Lastly backed up Screen State info used."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastScreenStateInfo:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v4

    .line 987
    .restart local v4    # "states":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 988
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v5, ",\"isBackedUpState\":true"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 992
    :cond_5
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v6, "requestContext: No state ids."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1008
    .end local v4    # "states":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\"result\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V
    .locals 1
    .param p1, "nri"    # Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 633
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 634
    return-void
.end method

.method public requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V
    .locals 6
    .param p1, "nri"    # Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .param p2, "mode"    # Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 646
    if-nez p1, :cond_0

    .line 647
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "NlgRequestInfo cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"currentStateIds\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getNlgStateInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "stateInfo":Ljava/lang/String;
    const-string v2, "\"requestedAppName\":\"%s\",%s,%s,%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 653
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 652
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "ret":Ljava/lang/String;
    const-string v2, "esem_request_nlg"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public requestTts(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "text cannot be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_0
    const-string v1, "\"text\":\"%s\",%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "esem_request_tts"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method sendChatText(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "chatText"    # Ljava/lang/String;
    .param p2, "directSend"    # Z

    .prologue
    .line 920
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    if-nez v1, :cond_1

    .line 923
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "sendChatText: ChattyModeListener is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    :goto_0
    const-string v1, "esem_chatty_mode_result"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    return-void

    .line 925
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;->onChatTextReceived(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method sendMultiStates(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 934
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v3, "stateIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 936
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 937
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 938
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    const-string v2, ""

    .line 943
    .local v2, "selected":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    if-nez v4, :cond_2

    .line 944
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v5, "sendMultiStates: MultiPathRuleListener is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_1
    :goto_1
    const-string v4, "esem_split_state_result"

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return-void

    .line 946
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    invoke-interface {v4, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;->onPathRuleSplit(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 947
    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1
.end method

.method sendParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 3
    .param p1, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 1017
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    :cond_0
    :goto_0
    const-string v1, "esem_param_filling_result"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    return-void

    .line 1024
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "ParamFilling: InterimListener is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .locals 3
    .param p1, "result"    # Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .prologue
    const/4 v2, 0x0

    .line 584
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    if-nez v0, :cond_0

    .line 585
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v1, "Invalid sendResponse call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_0
    return-void

    .line 590
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_4

    .line 591
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 596
    :cond_1
    :goto_1
    const-string v0, "state_command_result"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->handleTestResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Lcom/samsung/android/sdk/bixby/data/State;)V

    .line 604
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_3

    .line 606
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setRuleRunning(Z)V

    .line 607
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setTestRunning(Z)V

    .line 608
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->hideKeyboard()Z

    .line 610
    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setPartiallyLanded(Z)V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    goto :goto_0

    .line 592
    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    if-ne p1, v0, :cond_1

    .line 593
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    goto :goto_1
.end method

.method sendState(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonState"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 845
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setRuleRunning(Z)V

    .line 847
    invoke-static {p1}, Lcom/samsung/android/sdk/bixby/StateReader;->read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v0

    .line 848
    .local v0, "state":Lcom/samsung/android/sdk/bixby/data/State;
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mLastReceivedStateCmd:Lcom/samsung/android/sdk/bixby/data/State;

    .line 850
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 851
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->handleTestState(Ljava/lang/String;)V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 854
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    if-eqz v1, :cond_2

    .line 855
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;->onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V

    goto :goto_0

    .line 857
    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "sendState: The first state is arrived but StartListener has not been set."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v1, "state_command_result"

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 861
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 865
    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setRuleRunning(Z)V

    .line 866
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->hideKeyboard()Z

    .line 868
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    if-nez v1, :cond_4

    .line 869
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "sendState: No listener is set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    if-eqz v1, :cond_5

    .line 874
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;->onRuleCanceled(Ljava/lang/String;)V

    .line 877
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 885
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "sendState: Remove pending state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 889
    :cond_7
    iput v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRetryCount:I

    .line 890
    new-instance v1, Lcom/samsung/android/sdk/bixby/BixbyApi$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi$1;-><init>(Lcom/samsung/android/sdk/bixby/BixbyApi;Lcom/samsung/android/sdk/bixby/data/State;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    .line 911
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mSendStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 913
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    iput-boolean v3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestMode:Z

    goto/16 :goto_0
.end method

.method public setAbstractEventMonitor(Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;)V
    .locals 0
    .param p1, "abstractEventMonitor"    # Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mAbstractEventMonitor:Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;

    .line 565
    return-void
.end method

.method public setActiveApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 459
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "appName should not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mActiveAppName:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setAppTouchable(Z)V
    .locals 3
    .param p1, "isAppTouchable"    # Z

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1205
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "setAppTouchable: Path Rule is not running."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :goto_0
    return-void

    .line 1209
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"appTouchable\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, "visibility":Ljava/lang/String;
    const-string v1, "esem_client_control"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAppVisible(Z)V
    .locals 3
    .param p1, "isAppVisible"    # Z

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1186
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    const-string v2, "setAppVisible: Path Rule is not running."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :goto_0
    return-void

    .line 1190
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"appVisible\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, "visibility":Ljava/lang/String;
    const-string v1, "esem_client_control"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setChattyModeListener(Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;)V
    .locals 2
    .param p1, "chattyModeListener"    # Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 530
    const-string v0, "esem_cancel_chatty_mode"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendCommandToBa(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    .line 534
    return-void
.end method

.method public setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V
    .locals 0
    .param p1, "stateListener"    # Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mInterimListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    .line 504
    return-void
.end method

.method setLandingKeyboardOffMode(Z)V
    .locals 3
    .param p1, "landingKeyboardOffMode"    # Z

    .prologue
    .line 1320
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsLandingKeyboardOffMode:Z

    .line 1321
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLandingKeyboardOffMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsLandingKeyboardOffMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void
.end method

.method public setMultiPathRuleListener(Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;)V
    .locals 0
    .param p1, "multiPathRuleListener"    # Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    .line 543
    return-void
.end method

.method setPartiallyLanded(Z)V
    .locals 0
    .param p1, "bLanded"    # Z

    .prologue
    .line 1253
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsPartiallyLanded:Z

    .line 1254
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->hideKeyboard()Z

    .line 1255
    :cond_0
    return-void
.end method

.method setResponseCallback(Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mResponseCallback:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    .line 960
    return-void
.end method

.method setRuleRunning(Z)V
    .locals 0
    .param p1, "isRuleRunning"    # Z

    .prologue
    .line 1120
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsRuleRunning:Z

    .line 1121
    return-void
.end method

.method public setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V
    .locals 0
    .param p1, "stateListener"    # Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStartListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    .line 494
    return-void
.end method

.method public setTestListener(Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;)V
    .locals 0
    .param p1, "testListener"    # Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    .line 554
    return-void
.end method

.method setTestRunning(Z)V
    .locals 0
    .param p1, "isTestRunning"    # Z

    .prologue
    .line 1134
    iput-boolean p1, p0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mIsTestRunning:Z

    .line 1135
    return-void
.end method
