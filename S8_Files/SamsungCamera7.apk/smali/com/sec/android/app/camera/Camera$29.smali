.class Lcom/sec/android/app/camera/Camera$29;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->sendCameraStartBroadcast(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$isStart:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 7334
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$29;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/Camera$29;->val$isStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7337
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7338
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera$29;->val$isStart:Z

    if-eqz v1, :cond_1

    .line 7339
    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7340
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$29;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7341
    const-string v1, "secure-camera"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7348
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$29;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 7349
    return-void

    .line 7343
    :cond_0
    const-string v1, "secure-camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 7346
    :cond_1
    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
