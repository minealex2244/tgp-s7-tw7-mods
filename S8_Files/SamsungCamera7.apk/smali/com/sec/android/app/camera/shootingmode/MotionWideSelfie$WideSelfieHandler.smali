.class Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;
.super Landroid/os/Handler;
.source "MotionWideSelfie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WideSelfieHandler"
.end annotation


# instance fields
.field private final mMotionWideSelfie:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 1
    .param p1, "motionWideSelfie"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 2810
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2811
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->mMotionWideSelfie:Ljava/lang/ref/WeakReference;

    .line 2812
    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    .prologue
    .line 2807
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->mMotionWideSelfie:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2887
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2816
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->mMotionWideSelfie:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .line 2818
    .local v1, "motionWideSelfie":Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
    if-nez v1, :cond_1

    .line 2883
    :cond_0
    :goto_0
    return-void

    .line 2822
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2825
    :pswitch_0
    :try_start_0
    const-string v2, "MotionWideSelfie"

    const-string v3, "Inactivity timer is expired. finish."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearWideSelfieRect()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1600(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    .line 2827
    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHapticEnabled(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)V

    .line 2828
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchToCaptureStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2829
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setTouchToCaptureStarted(Z)V

    .line 2831
    :cond_2
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->cancelWideSelfieCapture()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1800(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    .line 2832
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->reset()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$1900(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    .line 2833
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 2834
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showPreviewGroup()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2835
    :catch_0
    move-exception v0

    .line 2836
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "MotionWideSelfie"

    const-string v3, "MSG arrived after the onDestroy. Ignore exception"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2840
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_1
    const-string v2, "MotionWideSelfie"

    const-string v3, "MESSAGE_WIDE_SELFIE_WARNING_LOW"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2842
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2843
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$2100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2844
    invoke-virtual {p0, v6, v8, v9}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2848
    :pswitch_2
    const-string v2, "MotionWideSelfie"

    const-string v3, "MESSAGE_WIDE_SELFIE_WARNING_HIGH"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2850
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2851
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieWarning:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$2100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2852
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 2853
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/sec/android/app/camera/util/HapticFeedback;->playHaptic(Landroid/content/Context;I)V

    .line 2854
    invoke-virtual {p0, v5, v8, v9}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2858
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2859
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->hideGuideText()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$2200(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    goto/16 :goto_0

    .line 2862
    :pswitch_4
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2863
    # setter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mSkipCapture:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$2302(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)Z

    goto/16 :goto_0

    .line 2866
    :pswitch_5
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2867
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mWideSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$2400(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2868
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->removeMessages(I)V

    .line 2869
    const-wide/16 v2, 0x32

    invoke-virtual {p0, v7, v2, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$WideSelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2872
    :cond_3
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->showPreviewGroup()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$2000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    goto/16 :goto_0

    .line 2876
    :pswitch_6
    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setPostCaptureProgress(I)V
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$2500(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;I)V

    .line 2877
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$2600(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 2878
    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$500(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->startFaceDetection()V

    goto/16 :goto_0

    .line 2822
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
    .end packed-switch
.end method
