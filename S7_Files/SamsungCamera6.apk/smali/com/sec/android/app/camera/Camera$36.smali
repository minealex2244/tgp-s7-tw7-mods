.class Lcom/sec/android/app/camera/Camera$36;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->updateLatestMediaFromCMH()V
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
    .line 9275
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 9278
    const-string v2, "Camera6"

    const-string v3, "updateLatestMediaFromCMH : updateLatestMediaFromCMH***start"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9280
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMediaStateLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2200(Lcom/sec/android/app/camera/Camera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 9281
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    if-nez v2, :cond_0

    .line 9282
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v4, Lcom/sec/android/app/camera/util/LatestMedia;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/android/app/camera/util/LatestMedia;-><init>(Landroid/content/ContentResolver;)V

    # setter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/Camera;->access$2302(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/util/LatestMedia;)Lcom/sec/android/app/camera/util/LatestMedia;

    .line 9284
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9285
    const-string v2, "Camera6"

    const-string v4, "updateLatestMediaFromCMH"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9286
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/util/LatestMedia;->updateCMH(ZZ)V

    .line 9287
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/util/LatestMedia;->getOrientation()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentOrientation(I)V

    .line 9288
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$36;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLatestMedia:Lcom/sec/android/app/camera/util/LatestMedia;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/util/LatestMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/util/LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentUri(Landroid/net/Uri;)V

    .line 9290
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9291
    const-string v2, "Camera6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLatestMediaFromCMH : updateLatestMediaFromCMH***end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9292
    return-void

    .line 9290
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
