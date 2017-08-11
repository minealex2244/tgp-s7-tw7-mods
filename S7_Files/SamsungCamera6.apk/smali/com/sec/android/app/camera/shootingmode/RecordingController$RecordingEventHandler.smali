.class Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;
.super Landroid/os/Handler;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingEventHandler"
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
    .line 995
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 996
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->mRecordingController:Ljava/lang/ref/WeakReference;

    .line 997
    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->mRecordingController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1018
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->mRecordingController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 1003
    .local v0, "controller":Lcom/sec/android/app/camera/shootingmode/RecordingController;
    if-nez v0, :cond_0

    .line 1014
    :goto_0
    return-void

    .line 1007
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1009
    :pswitch_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->showPopupCallToast()V

    goto :goto_0

    .line 1007
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
