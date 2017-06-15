.class Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;
.super Landroid/os/Handler;
.source "VirtualShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/VirtualShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualShotHandler"
.end annotation


# instance fields
.field private mVirtualShot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/VirtualShot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V
    .locals 1
    .param p1, "virtualShot"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .prologue
    .line 1410
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1411
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->mVirtualShot:Ljava/lang/ref/WeakReference;

    .line 1412
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->mVirtualShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1449
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1416
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->mVirtualShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .line 1417
    .local v0, "virtualShot":Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    if-nez v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1422
    :pswitch_0
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1423
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V

    .line 1424
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1800(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1425
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1800(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    move-result-object v1

    const/4 v2, 0x6

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1427
    :cond_2
    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V

    .line 1428
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1429
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    if-eqz v1, :cond_0

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$600(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1430
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1900(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    goto :goto_0

    .line 1436
    :pswitch_1
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$2000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    .line 1437
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$900(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    .line 1438
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1439
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v2, 0x7f0901ad

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1420
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
