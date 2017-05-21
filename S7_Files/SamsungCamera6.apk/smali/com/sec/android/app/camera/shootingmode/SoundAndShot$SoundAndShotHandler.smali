.class Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;
.super Landroid/os/Handler;
.source "SoundAndShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundAndShotHandler"
.end annotation


# instance fields
.field private final mSoundAndShot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/SoundAndShot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V
    .locals 1
    .param p1, "soundAndShot"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 1334
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1335
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->mSoundAndShot:Ljava/lang/ref/WeakReference;

    .line 1336
    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;

    .prologue
    .line 1331
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->mSoundAndShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1348
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1340
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$SoundAndShotHandler;->mSoundAndShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .line 1341
    .local v0, "soundAndShot":Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
    if-eqz v0, :cond_0

    .line 1342
    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$800(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Landroid/os/Message;)V

    .line 1344
    :cond_0
    return-void
.end method
