.class public Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;
.super Landroid/os/Handler;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StateMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/engine/CommonEngine;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 10412
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 10413
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10414
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 10418
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got message..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 10419
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/engine/AbstractCeState;

    if-nez v0, :cond_0

    .line 10426
    :goto_0
    return-void

    .line 10422
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 10423
    const-string v0, "Recording..."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    .line 10425
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/engine/AbstractCeState;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/AbstractCeState;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
