.class public Lcom/sec/android/app/camera/engine/CeStatePreviewing;
.super Lcom/sec/android/app/camera/engine/AbstractCeState;
.source "CeStatePreviewing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStatePreviewing"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;I)V
    .locals 0
    .param p1, "commonEngine"    # Lcom/sec/android/app/camera/engine/CommonEngine;
    .param p2, "requestQueue"    # Lcom/sec/android/app/camera/engine/CeRequestQueue;
    .param p3, "id"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/AbstractCeState;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/engine/CeRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/android/app/camera/engine/CeRequest;

    .prologue
    .line 36
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    const-string v0, "CeStatePreviewing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 49
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 54
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 60
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 63
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->imageStoringCompleted()V

    goto :goto_0

    .line 66
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 69
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 76
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 80
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 84
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 87
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 90
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 93
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 96
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 99
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 102
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 105
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto/16 :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_e
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_d
        0xb -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_1
        0xf -> :sswitch_7
        0x10 -> :sswitch_a
        0x12 -> :sswitch_2
        0x13 -> :sswitch_6
        0x14 -> :sswitch_f
        0x15 -> :sswitch_b
        0x16 -> :sswitch_7
        0x65 -> :sswitch_c
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/engine/CeRequest;)Z
    .locals 4
    .param p1, "request"    # Lcom/sec/android/app/camera/engine/CeRequest;

    .prologue
    const/4 v1, 0x1

    .line 112
    const-string v0, "CeStatePreviewing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleRequest - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 325
    :pswitch_0
    const-string v0, "CeStatePreviewing"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    .line 328
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 115
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopPreview()V

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchToCamcorderPreview()V

    move v0, v1

    .line 120
    goto :goto_0

    .line 122
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchToCameraPreview()V

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setCamcorderPreviewParameters()V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopPreview()V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopEngine()V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 132
    goto :goto_0

    .line 134
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->autoFocusAsync()V

    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->touchAE(I)V

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeParameterSync(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 142
    goto :goto_0

    .line 144
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setMultipleParametersSync(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 146
    goto/16 :goto_0

    .line 148
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startShutterTimer(I)V

    move v0, v1

    .line 149
    goto/16 :goto_0

    .line 151
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->progressWheelTimerAsync(I)V

    move v0, v1

    .line 152
    goto/16 :goto_0

    .line 154
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAllParameters()V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 156
    goto/16 :goto_0

    .line 158
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->waitAsync(I)V

    move v0, v1

    .line 159
    goto/16 :goto_0

    .line 161
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startBurstCaptureAsync()V

    move v0, v1

    .line 162
    goto/16 :goto_0

    .line 164
    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopBurstCaptureSync()V

    move v0, v1

    .line 165
    goto/16 :goto_0

    .line 167
    :pswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startVirtualShot()V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 169
    goto/16 :goto_0

    .line 171
    :pswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVirtualShot()V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 173
    goto/16 :goto_0

    .line 175
    :pswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startPanoramaAsync()V

    move v0, v1

    .line 176
    goto/16 :goto_0

    .line 178
    :pswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopPanorama()V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 180
    goto/16 :goto_0

    .line 182
    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startMotionPanoramaAsync()V

    move v0, v1

    .line 183
    goto/16 :goto_0

    .line 185
    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopMotionPanorama()V

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 187
    goto/16 :goto_0

    .line 189
    :pswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startWideSelfieAsync()V

    move v0, v1

    .line 190
    goto/16 :goto_0

    .line 192
    :pswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopWideSelfie()V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 196
    :pswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startMotionWideSelfieAsync()V

    move v0, v1

    .line 197
    goto/16 :goto_0

    .line 199
    :pswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopMotionWideSelfie()V

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 201
    goto/16 :goto_0

    .line 203
    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setShutterSound(I)V

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 205
    goto/16 :goto_0

    .line 207
    :pswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startShotAndMoreSync()V

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 209
    goto/16 :goto_0

    .line 211
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopShotAndMore()V

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 213
    goto/16 :goto_0

    .line 216
    :pswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->prepareVideoRecordingAsync()V

    move v0, v1

    .line 217
    goto/16 :goto_0

    .line 219
    :pswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startVideoRecordingAsync()V

    move v0, v1

    .line 220
    goto/16 :goto_0

    .line 222
    :pswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingAsync()V

    move v0, v1

    .line 223
    goto/16 :goto_0

    .line 225
    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelVideoRecordingSync()V

    move v0, v1

    .line 226
    goto/16 :goto_0

    .line 228
    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->releaseShootingModeRecordKey()V

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 230
    goto/16 :goto_0

    .line 232
    :pswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEffectOrientationSync(I)V

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 234
    goto/16 :goto_0

    .line 236
    :pswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSingleEffectSync(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 238
    goto/16 :goto_0

    .line 240
    :pswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->hideCoverCamera()V

    move v0, v1

    .line 241
    goto/16 :goto_0

    .line 243
    :pswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setFaceRetouchLevelSync(I)V

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 245
    goto/16 :goto_0

    .line 247
    :pswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSlimFaceLevelSync(I)V

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 249
    goto/16 :goto_0

    .line 251
    :pswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSpotlightLevelSync(I)V

    .line 252
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 253
    goto/16 :goto_0

    .line 255
    :pswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEyeEnlargeLevelSync(I)V

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 257
    goto/16 :goto_0

    .line 259
    :pswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setSkinColorLevelSync(I)V

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 261
    goto/16 :goto_0

    .line 263
    :pswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAntiFogLevelSync(I)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 265
    goto/16 :goto_0

    .line 267
    :pswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchCamera()V

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 269
    goto/16 :goto_0

    .line 271
    :pswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->takePictureAsync()V

    move v0, v1

    .line 272
    goto/16 :goto_0

    .line 274
    :pswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startMultiFrameModeSync(I)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 276
    goto/16 :goto_0

    .line 278
    :pswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startFaceDetection()V

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 280
    goto/16 :goto_0

    .line 282
    :pswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setOneShotPreviewCallback()V

    move v0, v1

    .line 283
    goto/16 :goto_0

    .line 285
    :pswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->requestNotifyPreviewStarted()V

    move v0, v1

    .line 286
    goto/16 :goto_0

    .line 288
    :pswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->initializeSemCameraListener()V

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 290
    goto/16 :goto_0

    .line 292
    :pswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEffectParameter(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 294
    goto/16 :goto_0

    .line 296
    :pswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleSetShootingMode()V

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 298
    goto/16 :goto_0

    .line 300
    :pswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->activateShootingMode()V

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 302
    goto/16 :goto_0

    .line 304
    :pswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->prepareMultiTrackRecording()V

    move v0, v1

    .line 305
    goto/16 :goto_0

    .line 307
    :pswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startMultiTrackRecording()V

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeEngineState(I)V

    move v0, v1

    .line 309
    goto/16 :goto_0

    .line 311
    :pswitch_37
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopMultiTrackRecording()V

    move v0, v1

    .line 312
    goto/16 :goto_0

    .line 314
    :pswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setDualEffectLayerOrder()V

    .line 315
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 316
    goto/16 :goto_0

    .line 318
    :pswitch_39
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startScreenFlash()V

    move v0, v1

    .line 319
    goto/16 :goto_0

    .line 321
    :pswitch_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->standbyPreview()V

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStatePreviewing;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 323
    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_31
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2c
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_4
        :pswitch_0
        :pswitch_22
        :pswitch_2d
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_25
        :pswitch_2e
        :pswitch_7
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_0
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_14
        :pswitch_15
        :pswitch_38
        :pswitch_39
        :pswitch_30
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method
