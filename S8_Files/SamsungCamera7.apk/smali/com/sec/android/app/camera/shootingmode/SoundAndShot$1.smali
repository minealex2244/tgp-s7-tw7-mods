.class Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundAndShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/SoundAndShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SoundAndShot"

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

    .line 184
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 213
    :cond_1
    :goto_1
    return-void

    .line 184
    :sswitch_0
    const-string v4, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v4, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 186
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mRecording:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$000(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$100(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v3, 0x7f090200

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 191
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$200(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setHRMSensor(Z)V
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$300(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Z)V

    goto :goto_1

    .line 196
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$200(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$100(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "hrm_sensor_capture_unavailable_guide_popup"

    invoke-static {v1, v4, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$100(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$100(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090291

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .line 199
    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$100(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901a0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-interface {v1, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->setHRMSensor(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$300(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;Z)V

    goto/16 :goto_1

    .line 205
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$100(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$400(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->clear()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;->access$500(Lcom/sec/android/app/camera/shootingmode/SoundAndShot;)V

    goto/16 :goto_1

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c86ca05 -> :sswitch_2
        -0x5e60bc37 -> :sswitch_1
        -0x37e00a46 -> :sswitch_0
        0x83a40e0 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
