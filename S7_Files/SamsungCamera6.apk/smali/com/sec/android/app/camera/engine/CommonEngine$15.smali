.class Lcom/sec/android/app/camera/engine/CommonEngine$15;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->startPanoramaAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    .line 6304
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$15;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6307
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$15;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->setOrientationAndUpdateParameter()V
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2400(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6308
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$15;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateGpsParameters()V

    .line 6309
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$15;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$15;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mParameters:Lcom/samsung/android/camera/core/SemCamera$Parameters;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v1

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2200(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    .line 6310
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$15;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->setShootingModeCallbacks()V
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2500(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6311
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$15;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 6313
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$15;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->startPanorama()V

    .line 6314
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$15;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6315
    return-void
.end method
