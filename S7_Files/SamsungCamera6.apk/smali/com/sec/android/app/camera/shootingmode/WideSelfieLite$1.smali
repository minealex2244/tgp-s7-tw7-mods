.class Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;
.super Landroid/content/BroadcastReceiver;
.source "WideSelfieLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

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

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "action":Ljava/lang/String;
    const-string v1, "WideSelfieLite"

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

    .line 263
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 284
    :cond_1
    :goto_1
    return-void

    .line 263
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
    const-string v4, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHRMsensor(Z)V
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$000(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V

    goto :goto_1

    .line 268
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "hrm_sensor_capture_unavailable_guide_popup"

    invoke-static {v1, v4, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const/16 v3, 0x1e4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0280

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .line 270
    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a01a0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-interface {v1, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    # invokes: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->setHRMsensor(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$000(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V

    goto :goto_1

    .line 277
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$1;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    # getter for: Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_1

    .line 263
    :sswitch_data_0
    .sparse-switch
        -0x7c86ca05 -> :sswitch_1
        -0x7390e4de -> :sswitch_2
        -0x65a495e9 -> :sswitch_3
        -0x5e60bc37 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
