.class public Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;
.super Landroid/os/Handler;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TimerEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    .line 10532
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 10535
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerEventHandleMessage**EndU["

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

    .line 10537
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mTimerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;->onTimerEvent(I)V

    .line 10538
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 10540
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10541
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsScreenFlashStarted:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7402(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 10542
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->enableScreenFlash(Z)V
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7500(Lcom/sec/android/app/camera/engine/CommonEngine;Z)V

    .line 10543
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10544
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;->onScreenFlashStarted()V

    .line 10546
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v5, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 10551
    :cond_1
    :goto_0
    return-void

    .line 10548
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
