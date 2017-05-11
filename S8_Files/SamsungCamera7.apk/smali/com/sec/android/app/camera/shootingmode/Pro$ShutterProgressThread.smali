.class public Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;
.super Ljava/lang/Thread;
.source "Pro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShutterProgressThread"
.end annotation


# instance fields
.field private mIsStop:Z

.field private mSleepTimeMillis:J

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/Pro;
    .param p2, "sleepTimeMillis"    # J

    .prologue
    .line 3133
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    .line 3134
    const-string v0, "ShutterProgressThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    .line 3131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mIsStop:Z

    .line 3135
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->setPriority(I)V

    .line 3137
    iput-wide p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    .line 3138
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->isStopping()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;
    .param p1, "x1"    # J

    .prologue
    .line 3129
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->setSleepTimeMillis(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->stopThread()V

    return-void
.end method

.method private getSleepTimeMillis()J
    .locals 2

    .prologue
    .line 3147
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    return-wide v0
.end method

.method private isStopping()Z
    .locals 1

    .prologue
    .line 3155
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mIsStop:Z

    return v0
.end method

.method private setSleepTimeMillis(J)V
    .locals 1
    .param p1, "sleepTimeMillis"    # J

    .prologue
    .line 3151
    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    .line 3152
    return-void
.end method

.method private stopThread()V
    .locals 2

    .prologue
    .line 3159
    const-string v0, "Pro"

    const-string v1, "stopThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mIsStop:Z

    .line 3161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->interrupt()V

    .line 3162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3142
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 3143
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ShutterProgressThread;->mSleepTimeMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->runShutterProgress(J)V

    .line 3144
    return-void
.end method
