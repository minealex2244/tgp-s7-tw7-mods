.class Lcom/sec/android/app/camera/SoundManager$4;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/SoundManager;

.field final synthetic val$soundId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/SoundManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/SoundManager;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/sec/android/app/camera/SoundManager$4;->this$0:Lcom/sec/android/app/camera/SoundManager;

    iput p2, p0, Lcom/sec/android/app/camera/SoundManager$4;->val$soundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager$4;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mStreamId:[I
    invoke-static {v0}, Lcom/sec/android/app/camera/SoundManager;->access$600(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/SoundManager$4;->val$soundId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/SoundManager$4;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/camera/SoundManager;->access$400(Lcom/sec/android/app/camera/SoundManager;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/SoundManager$4;->this$0:Lcom/sec/android/app/camera/SoundManager;

    .line 257
    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundPoolId:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/SoundManager;->access$300(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/SoundManager$4;->val$soundId:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/SoundManager$4;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mStreamVolume:F
    invoke-static {v2}, Lcom/sec/android/app/camera/SoundManager;->access$700(Lcom/sec/android/app/camera/SoundManager;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/SoundManager$4;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mStreamVolume:F
    invoke-static {v3}, Lcom/sec/android/app/camera/SoundManager;->access$700(Lcom/sec/android/app/camera/SoundManager;)F

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/SoundManager$4;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mSoundLoop:I
    invoke-static {v5}, Lcom/sec/android/app/camera/SoundManager;->access$800(Lcom/sec/android/app/camera/SoundManager;)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    aput v0, v7, v8

    .line 258
    const-string v0, "SoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundPool.play - channelId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/SoundManager$4;->this$0:Lcom/sec/android/app/camera/SoundManager;

    # getter for: Lcom/sec/android/app/camera/SoundManager;->mStreamId:[I
    invoke-static {v2}, Lcom/sec/android/app/camera/SoundManager;->access$600(Lcom/sec/android/app/camera/SoundManager;)[I

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/SoundManager$4;->val$soundId:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method
