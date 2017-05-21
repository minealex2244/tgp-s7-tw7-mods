.class Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.source "RemoteComposer.java"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;,
        Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$DeathNotifier;
    }
.end annotation


# static fields
.field private static final CMD_CONNECT:I = 0x2

.field private static final CMD_GET_SURFACE:I = 0x8

.field private static final CMD_SET_PARAMETERS:I = 0x6

.field private static final CMD_START:I = 0x3

.field private static final CMD_STOP:I = 0x5

.field private static final CMD_STORE:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isRecorderConnect:Z

.field private mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

.field private mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

.field private mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-remote"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    .line 33
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$DeathNotifier;

    invoke-direct {v0, p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$DeathNotifier;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote-composer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isRecorderConnect:Z

    .line 48
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->init(Landroid/content/Context;Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;)V

    .line 49
    return-void
.end method

.method private getStateLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "[%s]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-direct {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    return-void
.end method

.method public disconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 107
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v2, "disconnect"

    invoke-direct {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-boolean v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isRecorderConnect:Z

    .line 109
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 116
    iput-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    .line 117
    iput-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

    .line 119
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    .line 120
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->unbind()V

    .line 121
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSurface[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v6}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-array v3, v9, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v3, v7

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not proper state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    :goto_0
    return-object v2

    .line 258
    :cond_1
    new-instance v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    invoke-direct {v1}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;-><init>()V

    .line 259
    .local v1, "s":Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 264
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    :goto_1
    invoke-virtual {v1, v9}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->awaitResponse(I)Lcom/samsung/android/apex/motionphoto/command/Result;

    move-result-object v0

    .line 269
    .local v0, "r":Lcom/samsung/android/apex/motionphoto/command/Result;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/command/Result;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const-string v2, "surface"

    invoke-virtual {v0, v2}, Lcom/samsung/android/apex/motionphoto/command/Result;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    goto :goto_0

    .line 261
    .end local v0    # "r":Lcom/samsung/android/apex/motionphoto/command/Result;
    :pswitch_0
    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_1

    .line 259
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 299
    invoke-super {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->handleMessage(Landroid/os/Message;)V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessgae : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "already released"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 307
    :pswitch_1
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->INITIAL:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 308
    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v5}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->connect()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    .line 309
    iget v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    if-ltz v5, :cond_0

    .line 310
    iput-boolean v8, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isRecorderConnect:Z

    .line 311
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cannot handle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :pswitch_2
    new-array v5, v10, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v5, v9

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 320
    iget-object v6, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->start(Ljava/lang/String;)V

    .line 321
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cannot handle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    .line 329
    .local v1, "s":Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 330
    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    .line 331
    .local v0, "d":Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    if-nez v0, :cond_4

    .line 332
    new-instance v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    .end local v0    # "d":Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>()V

    .line 334
    .restart local v0    # "d":Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->store(Landroid/os/Bundle;)J

    move-result-wide v2

    .line 335
    .local v2, "id":J
    new-instance v5, Lcom/samsung/android/apex/motionphoto/command/Result;

    const-string v6, "id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/apex/motionphoto/command/Result;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->respond(Lcom/samsung/android/apex/motionphoto/command/Result;)V

    goto/16 :goto_0

    .line 337
    .end local v0    # "d":Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    .end local v2    # "id":J
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cannot handle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v5, Lcom/samsung/android/apex/motionphoto/command/Result;

    const-string v6, "id"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/apex/motionphoto/command/Result;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->respond(Lcom/samsung/android/apex/motionphoto/command/Result;)V

    goto/16 :goto_0

    .line 343
    .end local v1    # "s":Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
    :pswitch_4
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v5, v9

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v5, v8

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v5, v10

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    .line 344
    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v5}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->getSurface()Landroid/view/Surface;

    move-result-object v4

    .line 346
    .local v4, "surface":Landroid/view/Surface;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    .line 347
    .restart local v1    # "s":Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
    new-instance v5, Lcom/samsung/android/apex/motionphoto/command/Result;

    const-string v6, "surface"

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/apex/motionphoto/command/Result;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->respond(Lcom/samsung/android/apex/motionphoto/command/Result;)V

    goto/16 :goto_0

    .line 351
    .end local v1    # "s":Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
    .end local v4    # "surface":Landroid/view/Surface;
    :pswitch_5
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 353
    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v5}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->stop()V

    .line 354
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    goto/16 :goto_0

    .line 356
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cannot handle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 361
    :pswitch_6
    iget-object v6, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isRecorderConnect:Z

    return v0
.end method

.method public onServiceConnected(Lcom/samsung/android/apex/service/IApexService;)V
    .locals 4
    .param p1, "service"    # Lcom/samsung/android/apex/service/IApexService;

    .prologue
    .line 58
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v2, "service is connected successfully"

    invoke-direct {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "but composer is released, try unbind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->unbind()V

    .line 76
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/apex/service/IApexService;->getMotionPhotoComposer(Lcom/samsung/android/apex/service/IMotionPhotoComposerListener;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathNotifier:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->connect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recorder is null, try release"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v1, "unwanted disconnection with ApexService"

    invoke-direct {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->release()V

    .line 82
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 86
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v2, "release"

    invoke-direct {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->stop()V

    .line 90
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    .line 97
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setParameters(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .locals 7
    .param p1, "params"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setParameters[%s]"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->ERROR:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not proper state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 285
    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 291
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 287
    :pswitch_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    .line 288
    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 287
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 241
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemApexStoreData[%s]: data=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->setStoreData(Landroid/os/Bundle;)V

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

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setStorePath[%s]: id=%d, path=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

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

    .line 229
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    new-array v1, v7, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    new-instance v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    iget v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>(JILjava/lang/String;)V

    .line 233
    .local v0, "d":Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->setStoreData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 235
    .end local v0    # "d":Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "can not handle"

    invoke-direct {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .locals 4
    .param p1, "params"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->removeCommand(Lcom/samsung/android/apex/motionphoto/composer/State;I)V

    .line 127
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can not handle"

    invoke-direct {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :pswitch_1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 140
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "already started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->removeCommand(Lcom/samsung/android/apex/motionphoto/composer/State;I)V

    .line 152
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can not handle"

    invoke-direct {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :pswitch_1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public store()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "store[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public store(I)J
    .locals 4
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>()V

    .line 222
    .local v0, "data":Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setRotation(I)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J

    move-result-wide v2

    return-wide v2
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
    const/4 v10, 0x3

    const-wide/16 v4, -0x1

    const/4 v9, 0x4

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v6, "store[%s]: %s"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v8}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_0
    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v2, v4

    .line 209
    :goto_1
    return-wide v2

    .line 174
    :cond_0
    const-string v2, "null"

    goto :goto_0

    .line 179
    :cond_1
    if-nez p1, :cond_2

    .line 180
    new-instance v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    invoke-direct {v1}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;-><init>()V

    .line 183
    .local v1, "s":Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
    :goto_2
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 199
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "can not handle"

    invoke-direct {p0, v3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 200
    goto :goto_1

    .line 182
    .end local v1    # "s":Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
    :cond_2
    new-instance v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    invoke-direct {v1, p1}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;-><init>(Ljava/lang/Object;)V

    .restart local v1    # "s":Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;
    goto :goto_2

    .line 186
    :pswitch_0
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    .line 187
    invoke-virtual {v3, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 186
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    .line 202
    :goto_4
    invoke-virtual {v1, v10}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->awaitResponse(I)Lcom/samsung/android/apex/motionphoto/command/Result;

    move-result-object v0

    .line 203
    .local v0, "r":Lcom/samsung/android/apex/motionphoto/command/Result;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/command/Result;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/samsung/android/apex/motionphoto/command/Result;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 190
    .end local v0    # "r":Lcom/samsung/android/apex/motionphoto/command/Result;
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    .line 191
    invoke-virtual {v3, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 190
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 194
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    .line 196
    invoke-virtual {v3, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 195
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_3

    .line 208
    .restart local v0    # "r":Lcom/samsung/android/apex/motionphoto/command/Result;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "for 3s, store is not finished"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 209
    goto :goto_1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
