.class Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;
.super Landroid/os/Handler;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingProgressHandler"
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
    .line 1414
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1415
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->mRecordingController:Ljava/lang/ref/WeakReference;

    .line 1416
    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->mRecordingController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1435
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1420
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->mRecordingController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 1422
    .local v0, "controller":Lcom/sec/android/app/camera/shootingmode/RecordingController;
    if-nez v0, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1427
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    .line 1428
    :cond_2
    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$1200(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    goto :goto_0
.end method
