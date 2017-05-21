.class Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;
.super Landroid/os/Handler;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerEventHandler"
.end annotation


# instance fields
.field private final mEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/engine/CommonEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1
    .param p1, "engine"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    .line 9181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->mEngine:Ljava/lang/ref/WeakReference;

    .line 9183
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 9187
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$TimerEventHandler;->mEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 9188
    .local v0, "engine":Lcom/sec/android/app/camera/engine/CommonEngine;
    if-nez v0, :cond_1

    .line 9207
    :cond_0
    :goto_0
    return-void

    .line 9191
    :cond_1
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimerEventHandleMessage**EndU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9193
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mTimerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5200(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;->onTimerEvent(I)V

    .line 9194
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 9195
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9197
    iget-object v1, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9198
    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsScreenFlashStarted:Z
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5302(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 9199
    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->enableScreenFlash(Z)V
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5400(Lcom/sec/android/app/camera/engine/CommonEngine;Z)V

    .line 9200
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9201
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;->onScreenFlashStarted()V

    .line 9205
    :cond_2
    iget-object v1, v0, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
