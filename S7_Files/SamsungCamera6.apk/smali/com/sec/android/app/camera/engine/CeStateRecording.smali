.class public Lcom/sec/android/app/camera/engine/CeStateRecording;
.super Lcom/sec/android/app/camera/engine/AbstractCeState;
.source "CeStateRecording.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateRecording"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;I)V
    .locals 0
    .param p1, "commonEngine"    # Lcom/sec/android/app/camera/engine/CommonEngine;
    .param p2, "requestQueue"    # Lcom/sec/android/app/camera/engine/CeRequestQueue;
    .param p3, "id"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/AbstractCeState;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CeRequestQueue;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/engine/CeRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/android/app/camera/engine/CeRequest;

    .prologue
    .line 35
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 47
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 53
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 56
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 59
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 62
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 67
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 70
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
        0xe -> :sswitch_6
        0x10 -> :sswitch_5
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/engine/CeRequest;)Z
    .locals 3
    .param p1, "request"    # Lcom/sec/android/app/camera/engine/CeRequest;

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 139
    const-string v0, "CeStateRecording"

    const-string v1, "invalid request id for current state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    .line 142
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 81
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->requestNotifyPreviewStarted()V

    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->waitAsync(I)V

    move v0, v1

    .line 85
    goto :goto_0

    .line 87
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->pauseVideoRecordingSync()V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resumeVideoRecordingSync()V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopAndRestartVideoRecording()V

    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingAsync()V

    move v0, v1

    .line 99
    goto :goto_0

    .line 101
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelVideoRecordingSync()V

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->autoFocusAsync()V

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->takeVideoSnapShotAsync()V

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setEffectOrientationSync(I)V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 112
    goto/16 :goto_0

    .line 114
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeParameterSync(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 116
    goto/16 :goto_0

    .line 118
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setShutterSound(I)V

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 120
    goto/16 :goto_0

    .line 122
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setOneShotPreviewCallback()V

    move v0, v1

    .line 123
    goto/16 :goto_0

    .line 125
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopMultiTrackRecording()V

    move v0, v1

    .line 126
    goto/16 :goto_0

    .line 128
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->pauseMultiTrackRecording()V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 130
    goto/16 :goto_0

    .line 132
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resumeMultiTrackRecording()V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getRequestQueue()Lcom/sec/android/app/camera/engine/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    move v0, v1

    .line 134
    goto/16 :goto_0

    .line 136
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeStateRecording;->getEngine()Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->touchAE(I)V

    move v0, v1

    .line 137
    goto/16 :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_a
        0xd -> :sswitch_1
        0x2e -> :sswitch_b
        0x31 -> :sswitch_9
        0x3c -> :sswitch_10
        0x44 -> :sswitch_c
        0x53 -> :sswitch_0
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x6a -> :sswitch_5
        0x6b -> :sswitch_6
        0x6c -> :sswitch_4
        0x70 -> :sswitch_d
        0x71 -> :sswitch_e
        0x72 -> :sswitch_f
    .end sparse-switch
.end method
