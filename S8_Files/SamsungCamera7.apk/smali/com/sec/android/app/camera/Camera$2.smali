.class Lcom/sec/android/app/camera/Camera$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 433
    const-string v0, "HeavyResource-loading"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 436
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeavyResource-loading**StartU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsPausing:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    const-string v0, "Camera7"

    const-string v1, "HeavyResource loading - camera is finishing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mSoundManager:Lcom/sec/android/app/camera/SoundManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBurstCaptureFPSRange()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SoundManager;->loadAllSounds([I)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->createMenu(I)V

    .line 443
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->createMenu(I)V

    .line 447
    :cond_2
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeavyResource-loading**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    goto :goto_0
.end method