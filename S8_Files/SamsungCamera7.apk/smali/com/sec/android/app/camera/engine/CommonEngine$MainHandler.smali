.class Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;
.super Landroid/os/Handler;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/engine/CommonEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1
    .param p1, "engine"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    .line 9095
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9096
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;->mEngine:Ljava/lang/ref/WeakReference;

    .line 9097
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 9101
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;->mEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 9102
    .local v0, "engine":Lcom/sec/android/app/camera/engine/CommonEngine;
    if-nez v0, :cond_1

    .line 9175
    :cond_0
    :goto_0
    return-void

    .line 9105
    :cond_1
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9106
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 9108
    :pswitch_0
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 9109
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v2, 0x7f09012e

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 9110
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 9114
    :pswitch_1
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->semIsResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9115
    iget-object v1, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 9116
    const-string v1, "CommonEngine"

    const-string v2, "SurfaceView is invisible"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9117
    iget-object v1, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 9123
    :pswitch_2
    const-string v1, "CommonEngine"

    const-string v2, "Timeout - WAIT_ONE_SHOT_PREVIEW_CALLBACK"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9124
    iget-object v1, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9125
    iget-object v1, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 9130
    :pswitch_3
    const-string v1, "CommonEngine"

    const-string v2, "Timeout - WAIT_NOTIFY_PREVIEW_STARTED"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9131
    iget-object v1, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9132
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->cancelPreviewAnimation()V

    .line 9133
    iget-object v1, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 9137
    :pswitch_4
    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->isRecorderPreparing()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4700(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9138
    const-string v1, "CommonEngine"

    const-string v2, "recording is preparing.. send orientation info in 1sec and return"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9139
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4800(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9142
    :cond_2
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4900(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_3

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4900(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9143
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler$1;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;Lcom/sec/android/app/camera/engine/CommonEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4902(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 9152
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4900(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "sendOrientationInfoThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 9153
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSendOrientationInfoThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4900(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 9155
    :cond_4
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v5, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9159
    :pswitch_5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->searchLastImageContentUri()V

    goto/16 :goto_0

    .line 9162
    :pswitch_6
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mHardwareFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9163
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mHardwareFaceDetectionListener:Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;->onHardwareFaceDetection([Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 9167
    :pswitch_7
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->hideFaceRect(Z)V

    goto/16 :goto_0

    .line 9170
    :pswitch_8
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureSoundId:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    goto/16 :goto_0

    .line 9106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
