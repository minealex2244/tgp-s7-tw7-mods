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
    .line 1335
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1336
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->mVirtualShot:Ljava/lang/ref/WeakReference;

    .line 1337
    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->mVirtualShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1374
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1341
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->mVirtualShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .line 1343
    .local v0, "virtualShot":Lcom/sec/android/app/camera/shootingmode/VirtualShot;
    if-nez v0, :cond_1

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1349
    :pswitch_0
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1350
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V

    .line 1351
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1352
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mVirtualShotHandler:Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;

    move-result-object v1

    const/4 v2, 0x6

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/VirtualShot$VirtualShotHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1354
    :cond_2
    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->showVirtualShotGuideGroup(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1000(Lcom/sec/android/app/camera/shootingmode/VirtualShot;Z)V

    .line 1355
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->getVirtualShotStatus()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1356
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mIsVirtualShotCaptureStarted:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Z

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1357
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->reset()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1300(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    goto :goto_0

    .line 1363
    :pswitch_1
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->stopCaptureExpireTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$1400(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    .line 1364
    # invokes: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->cancelVirtualShot()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    .line 1365
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1366
    # getter for: Lcom/sec/android/app/camera/shootingmode/VirtualShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$100(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v2, 0x7f0a01a8

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
