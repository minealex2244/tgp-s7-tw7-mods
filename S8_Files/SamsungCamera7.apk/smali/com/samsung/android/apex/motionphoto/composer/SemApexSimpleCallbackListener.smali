.class public Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;
.super Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;
.source "SemApexSimpleCallbackListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAtomicId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 2
    .param p1, "composerHandler"    # Landroid/os/Handler;
    .param p2, "initId"    # J

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mAtomicId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method


# virtual methods
.method public onApexServerDead(Ljava/lang/String;I)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 116
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 117
    .local v1, "m":Landroid/os/Message;
    const/16 v2, -0x2700

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 118
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "token"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method public onRecoderStopped(Ljava/lang/String;)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, "m":Landroid/os/Message;
    const/16 v2, 0x2719

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 167
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void
.end method

.method public onRecorderConnected(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "token"    # I
    .param p3, "listener"    # Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 135
    .local v1, "m":Landroid/os/Message;
    const/16 v2, 0x2716

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 136
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "token"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method public onRecorderDisconnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 148
    .local v1, "m":Landroid/os/Message;
    const/16 v2, 0x2717

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 149
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    return-void
.end method

.method public onRecorderReleased(I)V
    .locals 4
    .param p1, "token"    # I

    .prologue
    .line 126
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 127
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "token"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method public onRecorderStrated(Ljava/lang/String;)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 157
    .local v1, "m":Landroid/os/Message;
    const/16 v2, 0x2718

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 158
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method public onRecordingCancel(Ljava/util/HashMap;)V
    .locals 7
    .param p1, "data"    # Ljava/util/HashMap;

    .prologue
    .line 87
    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRecordingCancel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v4, "temp"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, "tempFile":Ljava/lang/String;
    const-string v4, "canceled"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move-object v1, v4

    check-cast v1, [J

    .line 91
    .local v1, "canceled":[J
    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 92
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "temp"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v4, "canceled"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 96
    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method

.method public onRecordingComplete(Ljava/util/HashMap;)V
    .locals 8
    .param p1, "data"    # Ljava/util/HashMap;

    .prologue
    .line 72
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRecordingComplete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v5, "token"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 74
    .local v4, "token":I
    const-string v5, "temp"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    .local v3, "tempFile":Ljava/lang/String;
    const-string v5, "stored"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v1, v5

    check-cast v1, [Ljava/lang/String;

    .line 77
    .local v1, "datas":[Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 78
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "token"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v5, "temp"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v5, "data"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    return-void
.end method

.method public onRecordingProxyDead(Ljava/lang/String;I)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 101
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 102
    .local v1, "m":Landroid/os/Message;
    const/16 v2, -0x270e

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 103
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "token"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method

.method public onRequestId()J
    .locals 6

    .prologue
    .line 54
    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mAtomicId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 55
    .local v2, "id":J
    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 56
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-wide v2
.end method

.method public onStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    .locals 4
    .param p1, "data"    # Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    .prologue
    .line 64
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStoreData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexSimpleCallbackListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    return-void
.end method
