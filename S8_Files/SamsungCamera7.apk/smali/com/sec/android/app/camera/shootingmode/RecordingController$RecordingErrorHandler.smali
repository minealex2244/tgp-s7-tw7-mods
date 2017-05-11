.class Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;
.super Landroid/os/Handler;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingErrorHandler"
.end annotation


# instance fields
.field private final mRecordingController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/RecordingController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 1
    .param p1, "recordingController"    # Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .prologue
    .line 1394
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1395
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->mRecordingController:Ljava/lang/ref/WeakReference;

    .line 1396
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    .prologue
    .line 1391
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->mRecordingController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1408
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1400
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->mRecordingController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 1401
    .local v0, "recordingController":Lcom/sec/android/app/camera/shootingmode/RecordingController;
    if-eqz v0, :cond_0

    .line 1402
    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->handleRecordingError(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$900(Lcom/sec/android/app/camera/shootingmode/RecordingController;I)V

    .line 1404
    :cond_0
    return-void
.end method
