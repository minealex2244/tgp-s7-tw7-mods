.class Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;
.super Landroid/os/Handler;
.source "WideSelfieLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WideSelfieLiteHandler"
.end annotation


# instance fields
.field private final mWideSelfieLite:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 1
    .param p1, "wideSelfieLite"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 2767
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2768
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->mWideSelfieLite:Ljava/lang/ref/WeakReference;

    .line 2769
    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    .prologue
    .line 2764
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->mWideSelfieLite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2849
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 2773
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->mWideSelfieLite:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .line 2775
    .local v1, "wideSelfieLite":Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
    if-nez v1, :cond_1

    .line 2845
    :cond_0
    :goto_0
    return-void

    .line 2779
    :cond_1
    const-string v2, "WideSelfieLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainHandler handleMessage :: msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2783
    :pswitch_0
    :try_start_0
    const-string v2, "WideSelfieLite"

    const-string v3, "Inactivity timer is expired. finish."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->clearWideSelfieRect()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    .line 2785
    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHapticEnabled(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V

    .line 2786
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2787
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 2789
    :cond_2
    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->cancelWideSelfieCapture()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1600(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    .line 2790
    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->reset()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    .line 2791
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 2792
    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2793
    :catch_0
    move-exception v0

    .line 2794
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "WideSelfieLite"

    const-string v3, "MSG arrived after the onDestroy. Ignore exception"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2798
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_1
    const-string v2, "WideSelfieLite"

    const-string v3, "MESSAGE_WIDE_SELFIE_WARNING_LOW"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2800
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2801
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2802
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v7, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2806
    :pswitch_2
    const-string v2, "WideSelfieLite"

    const-string v3, "MESSAGE_WIDE_SELFIE_WARNING_HIGH"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2808
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2809
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1900(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2810
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2, v8, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 2811
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/sec/android/app/camera/haptic/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 2812
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v6, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2816
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2817
    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->hideGuideText()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2000(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    goto/16 :goto_0

    .line 2820
    :pswitch_4
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2821
    # setter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mSkipCapture:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2102(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)Z

    goto/16 :goto_0

    .line 2824
    :pswitch_5
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2825
    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setSkipCheckWarning(Z)V
    invoke-static {v1, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2200(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V

    goto/16 :goto_0

    .line 2828
    :pswitch_6
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2829
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2300(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2830
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->removeMessages(I)V

    .line 2831
    const-wide/16 v2, 0x32

    invoke-virtual {p0, v9, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$WideSelfieLiteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2834
    :cond_3
    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->showPreviewGroup()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$1800(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    goto/16 :goto_0

    .line 2838
    :pswitch_7
    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setPostCaptureProgress(I)V
    invoke-static {v1, v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;I)V

    .line 2839
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$2500(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 2840
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    goto/16 :goto_0

    .line 2780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
