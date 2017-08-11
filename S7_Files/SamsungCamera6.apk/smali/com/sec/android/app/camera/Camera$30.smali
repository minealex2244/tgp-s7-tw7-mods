.class Lcom/sec/android/app/camera/Camera$30;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->setLocationRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 6934
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$30;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6937
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$30;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6938
    const-string v0, "Camera6"

    const-string v1, "setLocationRequest : return, isPausing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6943
    :goto_0
    return-void

    .line 6941
    :cond_0
    const-string v0, "Camera6"

    const-string v1, "setLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6942
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$30;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->startReceivingLocationUpdates()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4300(Lcom/sec/android/app/camera/Camera;)V

    goto :goto_0
.end method
