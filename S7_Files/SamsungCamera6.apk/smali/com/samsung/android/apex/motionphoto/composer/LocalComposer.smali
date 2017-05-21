.class Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.source "LocalComposer.java"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;
.implements Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isRecorderConnect:Z

.field private mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isRecorderConnect:Z

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "composer created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect[%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ignore after release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->INITIAL:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 61
    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    invoke-direct {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;-><init>()V

    .line 62
    .local v1, "l":Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;
    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-direct {v2, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;)V

    iput-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    .line 63
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->getToken()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    .line 65
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v2, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->setInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V

    .line 66
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v2, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->setErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V

    .line 68
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-nez v2, :cond_2

    .line 69
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "request eventHandler should be set(ex: SimplRequestHandler)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "l":Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "l":Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    if-ltz v2, :cond_0

    .line 73
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isRecorderConnect:Z

    .line 74
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 75
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getClientId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecorderConnected(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnect[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->release()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    .line 94
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isRecorderConnect:Z

    .line 95
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecorderDisconnected(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSurface[%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ignore after release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-object v1

    .line 211
    :cond_0
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 212
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isRecorderConnect:Z

    return v0
.end method

.method public onError(IIILjava/lang/Object;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onerror: %d, %d, %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback listener is already released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-void

    .line 244
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 246
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecordingProxyDead(Ljava/lang/String;I)V

    goto :goto_0

    .line 250
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onApexServerDead(Ljava/lang/String;I)V

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        -0x270e -> :sswitch_0
        -0x2700 -> :sswitch_1
    .end sparse-switch
.end method

.method public onInfo(IIILjava/lang/Object;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oninfo: %d, %d, %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback listener is already released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local p4    # "data":Ljava/lang/Object;
    :goto_0
    return-void

    .line 266
    .restart local p4    # "data":Ljava/lang/Object;
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    check-cast p4, Ljava/util/HashMap;

    .end local p4    # "data":Ljava/lang/Object;
    invoke-virtual {v0, p4}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecordingComplete(Ljava/util/HashMap;)V

    goto :goto_0

    .line 272
    .restart local p4    # "data":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v0, p3}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecorderReleased(I)V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->release()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    .line 46
    :cond_0
    return-void
.end method

.method public requestId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRequestId()J

    move-result-wide v0

    return-wide v0
.end method

.method public setParameters(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .locals 5
    .param p1, "param"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setParameters[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    .locals 7
    .param p1, "data"    # Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setStoreData[%s]: data=%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 197
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v1, p1}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStorePath(JLjava/lang/String;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setStorePath[%s]: id=%d, path=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p3, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    new-instance v2, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    iget v3, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>(JILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .locals 7
    .param p1, "params"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start[%s]: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 108
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->start(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecorderStrated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop[%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->stop()V

    .line 126
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecoderStopped(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public store()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v6, "store[%s]"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v8}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ignore after release"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 167
    :goto_0
    return-wide v2

    .line 161
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v7, v1, v6

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRequestId()J

    move-result-wide v2

    .line 163
    .local v2, "id":J
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->store(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v2    # "id":J
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-wide v2, v4

    .line 167
    goto :goto_0
.end method

.method public store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J
    .locals 11
    .param p1, "data"    # Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v6, "store[%s]: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v8}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ignore after release"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 149
    :goto_0
    return-wide v2

    .line 141
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v7, v1, v6

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 142
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRequestId()J

    move-result-wide v2

    .line 143
    .local v2, "id":J
    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setId(J)V

    .line 144
    iget v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setToken(I)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v1, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v2    # "id":J
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-wide v2, v4

    .line 149
    goto :goto_0
.end method
