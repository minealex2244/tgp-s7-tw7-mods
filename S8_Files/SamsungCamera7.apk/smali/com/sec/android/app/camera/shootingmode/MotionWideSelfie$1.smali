.class Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionWideSelfie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MotionWideSelfie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 308
    :goto_1
    return-void

    .line 286
    :sswitch_0
    const-string v4, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v4, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 288
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHRMSensor(Z)V
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)V

    goto :goto_1

    .line 291
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "hrm_sensor_capture_unavailable_guide_popup"

    invoke-static {v1, v4, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09028e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    .line 293
    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901a0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-interface {v1, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->setHRMSensor(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$000(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;Z)V

    goto :goto_1

    .line 298
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$200(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->unregisterCameraOrientationListener()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$300(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # invokes: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->clearMessageHandler()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$400(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie$1;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;->access$500(Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setMotionWideSelfieListener(Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;)V

    goto/16 :goto_1

    .line 286
    :sswitch_data_0
    .sparse-switch
        -0x7c86ca05 -> :sswitch_1
        -0x5e60bc37 -> :sswitch_0
        0x83a40e0 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
