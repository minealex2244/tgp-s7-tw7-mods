.class Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;
.super Landroid/os/Handler;
.source "MotionPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/MotionPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoramaHandler"
.end annotation


# instance fields
.field private final mMotionPanorama:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/MotionPanorama;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V
    .locals 1
    .param p1, "panorama"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .prologue
    .line 2762
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2763
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->mMotionPanorama:Ljava/lang/ref/WeakReference;

    .line 2764
    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;

    .prologue
    .line 2759
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->mMotionPanorama:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2817
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 2768
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->mMotionPanorama:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .line 2770
    .local v1, "panorama":Lcom/sec/android/app/camera/shootingmode/MotionPanorama;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2813
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2773
    :pswitch_1
    :try_start_0
    const-string v2, "MotionPanoramaApp"

    const-string v3, "Inactivity timer is expired. finish."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->cancelPanoramaCapture()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    .line 2775
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->reset()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    .line 2776
    const/4 v2, 0x4

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->playCameraSound(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2777
    :catch_0
    move-exception v0

    .line 2778
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "MotionPanoramaApp"

    const-string v3, "MSG arrived after the onDestroy. Ignore exception"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2782
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_2
    const-string v2, "MotionPanoramaApp"

    const-string v3, "MESSAGE_PANORAMA_WARNING_LOW"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2784
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2785
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isPanoramaWarning()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2787
    invoke-virtual {p0, v4, v8, v9}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2791
    :pswitch_3
    const-string v2, "MotionPanoramaApp"

    const-string v3, "MESSAGE_PANORAMA_WARNING_HIGH"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2793
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2794
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isPanoramaWarning()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1200(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2795
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->playCameraSound(I)V
    invoke-static {v1, v6}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1100(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;I)V

    .line 2796
    invoke-virtual {p0, v5, v8, v9}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2800
    :pswitch_4
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->removeMessages(I)V

    .line 2801
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->hideGuideText()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1300(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    goto :goto_0

    .line 2804
    :pswitch_5
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->isCameraSwitchingAnimationRunning()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1400(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2805
    const/16 v2, 0x9

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v2, v4, v5}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$PanoramaHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2807
    :cond_1
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPreviewGroup()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$1500(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)V

    goto :goto_0

    .line 2770
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
