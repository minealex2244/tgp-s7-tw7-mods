.class Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;

.field final synthetic val$engine:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;

    .prologue
    .line 9143
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler$1;->val$engine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9146
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendOrientationInfoToHAL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler$1;->val$engine:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2400(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9147
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler$1;->val$engine:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9148
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler$1;->val$engine:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$MainHandler$1;->val$engine:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2400(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->sendOrientationInfoToHal(I)V

    .line 9150
    :cond_0
    return-void
.end method