.class Lcom/sec/android/app/camera/Camera$18;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V
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
    .line 3819
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraStreamId:[I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2600(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundIdToPlay:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2700(Lcom/sec/android/app/camera/Camera;)I

    move-result v8

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    .line 3823
    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2800(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundIdToPlay:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2700(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraStreamVolume:F
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2900(Lcom/sec/android/app/camera/Camera;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraStreamVolume:F
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2900(Lcom/sec/android/app/camera/Camera;)F

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundLoop:I
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$3000(Lcom/sec/android/app/camera/Camera;)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    aput v0, v7, v8

    .line 3824
    const-string v0, "Camera6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraSoundPool.play - channelId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraStreamId:[I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2600(Lcom/sec/android/app/camera/Camera;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSoundIdToPlay:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2700(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    return-void
.end method