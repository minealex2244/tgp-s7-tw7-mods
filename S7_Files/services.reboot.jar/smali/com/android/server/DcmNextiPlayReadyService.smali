.class public Lcom/android/server/DcmNextiPlayReadyService;
.super Landroid/app/Service;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DcmNextiPlayReadyService$1;,
        Lcom/android/server/DcmNextiPlayReadyService$MainThread;,
        Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;,
        Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final BOOT_COMPLETE:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final GOT_DATA_CONNECTION:I = 0x2

.field public static final GOT_NITZ:I = 0x3

.field public static GotDataBeforeBootComplete:I = 0x0

.field private static final LIMIT_TIME:I = 0x1388

.field private static final NTP_SERVER:Ljava/lang/String; = "https://tts.spmode.ne.jp:443"

.field private static final PLAYREADY_REF_TIME_FILE:Ljava/lang/String; = "/data/.dcmdrm/.playready/DcmNextiPlayReadyRefTime.dat"

.field private static final TAG:Ljava/lang/String; = "DcmNextiPlayReadyService"

.field public static THREAD_EXECUTING:I

.field private static mIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field public isSuspendedBefore:Ljava/lang/Boolean;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

.field private mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Lcom/android/server/DcmNextiPlayReadyService;)Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    return-object v0
.end method

.method static synthetic -wrap0(JJ)V
    .locals 0
    .param p0, "nitzTime"    # J
    .param p2, "recvelapsedtime"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/DcmNextiPlayReadyService;->nitzReceived(JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/DcmNextiPlayReadyService;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 108
    sput v2, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 109
    sput v2, Lcom/android/server/DcmNextiPlayReadyService;->GotDataBeforeBootComplete:I

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    .line 362
    new-instance v0, Lcom/android/server/DcmNextiPlayReadyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DcmNextiPlayReadyService$1;-><init>(Lcom/android/server/DcmNextiPlayReadyService;)V

    iput-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    return-void
.end method

.method private static native bootComplete()V
.end method

.method private handleConnectivityStateChanged()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    const-string/jumbo v1, "https://tts.spmode.ne.jp:443"

    invoke-direct {v0, p0, v1}, Lcom/android/server/DcmNextiPlayReadyService$MainThread;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    .line 246
    iget-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    invoke-virtual {v0}, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->start()V

    .line 244
    return-void
.end method

.method private static native nitzReceived(JJ)V
.end method

.method private static native ntpReceived(JJ)V
.end method


# virtual methods
.method public handleNitzTimeUpdation()V
    .locals 4

    .prologue
    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 257
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/DcmNextiPlayReadyService$2;

    invoke-direct {v1, p0}, Lcom/android/server/DcmNextiPlayReadyService$2;-><init>(Lcom/android/server/DcmNextiPlayReadyService;)V

    .line 268
    const-wide/16 v2, 0x7d0

    .line 257
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ServiceStartArguments"

    .line 179
    const/16 v2, 0xa

    .line 178
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 180
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 183
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    .line 184
    new-instance v1, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    .line 185
    const-string/jumbo v1, "DcmNextiPlayReadyService"

    const-string/jumbo v2, "DcmNextiPlayReadyService oncreate call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/android/server/DcmNextiPlayReadyService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 189
    sget-object v1, Lcom/android/server/DcmNextiPlayReadyService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v1, "DcmNextiPlayReadyService"

    const-string/jumbo v2, "DcmNextiPlayReadyService...register receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/DcmNextiPlayReadyService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DcmNextiPlayReadyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 228
    const-string/jumbo v1, "DcmNextiPlayReadyService"

    const-string/jumbo v2, "DcmNextiPlayReadyService...unregister receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/server/DcmNextiPlayReadyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 227
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DcmNextiPlayReadyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 240
    const-string/jumbo v0, "DcmNextiPlayReadyService"

    const-string/jumbo v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 238
    return-void
.end method

.method public onNetworkStateChanged(JJ)V
    .locals 5
    .param p1, "networktime"    # J
    .param p3, "recvelapsedtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 250
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    .line 251
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/DcmNextiPlayReadyService;->ntpReceived(JJ)V

    .line 249
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 199
    iget-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 201
    if-eqz p1, :cond_0

    .line 203
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iput v3, v0, Landroid/os/Message;->what:I

    .line 215
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return v3

    .line 207
    :cond_1
    const-string/jumbo v1, "com.samsung.intent.action.NITZ_SET_TIME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const-string/jumbo v1, "DcmNextiPlayReadyService"

    const-string/jumbo v2, "Current action is nitz set time"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 212
    :cond_2
    const-string/jumbo v1, "DcmNextiPlayReadyService"

    const-string/jumbo v2, "Code should not reach here"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
