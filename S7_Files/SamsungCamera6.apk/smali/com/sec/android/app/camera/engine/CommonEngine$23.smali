.class Lcom/sec/android/app/camera/engine/CommonEngine$23;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->takeVideoSnapShotAsync()V
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
    .line 7289
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$23;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 3
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Lcom/samsung/android/camera/core/SemCamera;

    .prologue
    .line 7292
    const-string v1, "TakePicture as Video SnapShot Wait Callback"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 7294
    const-string v1, "CommonEngine"

    const-string v2, "Video SnapShot Jpeg Image callback"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 7296
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/engine/CommonEngine$23$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine$23$1;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine$23;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7408
    .local v0, "savingThread":Ljava/lang/Thread;
    const-string v1, "savingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 7409
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7410
    return-void
.end method