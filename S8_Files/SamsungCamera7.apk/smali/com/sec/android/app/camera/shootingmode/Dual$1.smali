.class Lcom/sec/android/app/camera/shootingmode/Dual$1;
.super Landroid/content/BroadcastReceiver;
.source "Dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Dual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Dual;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Dual;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/Dual;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 210
    :goto_1
    return-void

    .line 199
    :pswitch_0
    const-string v2, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$000(Lcom/sec/android/app/camera/shootingmode/Dual;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Dual;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$100(Lcom/sec/android/app/camera/shootingmode/Dual;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Dual;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$000(Lcom/sec/android/app/camera/shootingmode/Dual;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Dual;->unregisterCameraOrientationListener()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$200(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Dual$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Dual;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Dual;->clearDual()V
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Dual;->access$300(Lcom/sec/android/app/camera/shootingmode/Dual;)V

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x83a40e0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
