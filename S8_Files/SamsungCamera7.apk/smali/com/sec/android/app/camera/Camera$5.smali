.class Lcom/sec/android/app/camera/Camera$5;
.super Landroid/database/ContentObserver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->isInteractionControlEnabled()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setToSensorOrientation()V

    .line 502
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setToLandscapeOrientation()V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setToPortraitOrientation()V

    goto :goto_0
.end method
