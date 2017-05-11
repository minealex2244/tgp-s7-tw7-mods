.class Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;
.super Ljava/lang/Thread;
.source "QuramAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->startRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 215
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->deleteAllRecord()V

    .line 216
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$000(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    move-result-object v7

    const/16 v8, 0x8

    invoke-static {v8}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->init(I)Z

    .line 218
    const-wide/16 v8, 0xc8

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization_duration:J
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$100(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)J

    move-result-wide v10

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization_duration:J
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$100(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)J

    move-result-wide v10

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 219
    .local v6, "segData":I
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    new-array v8, v6, [I

    # setter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$202(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;[I)[I

    .line 221
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->qrecorder:Lcom/samsung/android/media/soundshot/SemAudioRecorder;
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$000(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)Lcom/samsung/android/media/soundshot/SemAudioRecorder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/media/soundshot/SemAudioRecorder;->start()Z

    .line 224
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$300(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 225
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_t:J
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$400(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)J

    move-result-wide v8

    const-wide/16 v10, 0x32

    add-long/2addr v8, v10

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_s:J
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$500(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 227
    const-wide/16 v8, 0xa

    :try_start_1
    invoke-static {v8, v9}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    # setter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_s:J
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$502(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "QuramAudioRecorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audioThread : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    :try_start_4
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # invokes: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->releaseRecorder()V
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$900(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v7, "QURAM"

    const-string v8, "end Recoder"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 228
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v7, "QuramAudioRecorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audioThread : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 279
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    .line 280
    :try_start_6
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # invokes: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->releaseRecorder()V
    invoke-static {v8}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$900(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 283
    :goto_3
    throw v7

    .line 237
    :cond_0
    :try_start_7
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_s:J
    invoke-static {v8}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$500(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)J

    move-result-wide v8

    # setter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_t:J
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$402(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;J)J

    .line 238
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    # setter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->time_s:J
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$502(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;J)J

    .line 240
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->deleteOverTimeFrame()V

    .line 244
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readRecord()Z

    move-result v7

    if-nez v7, :cond_2

    .line 245
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->isRunning:Z
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$302(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 280
    :cond_1
    :try_start_8
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # invokes: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->releaseRecorder()V
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$900(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 281
    :catch_2
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "QURAM"

    const-string v8, "releaseRecorder failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    .line 251
    .local v3, "mic_level":F
    const/4 v2, 0x0

    .line 252
    .local v2, "idx":I
    const/4 v4, 0x0

    .line 253
    .local v4, "sample":S
    const/4 v5, 0x0

    .local v5, "seg":I
    :goto_4
    if-ge v5, v6, :cond_5

    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    :try_start_9
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBufferSize:I
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$600(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v6

    if-ge v1, v7, :cond_3

    .line 255
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBuffer:[B
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$700(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)[B

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x8

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBuffer:[B
    invoke-static {v8}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$700(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)[B

    move-result-object v8

    aget-byte v8, v8, v2

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-short v4, v7

    .line 256
    add-int/lit8 v2, v2, 0x2

    .line 258
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 254
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 261
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->readAudioStreamBufferSize:I
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$600(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    int-to-float v8, v6

    div-float/2addr v7, v8

    div-float/2addr v3, v7

    .line 262
    const/high16 v7, 0x42480000    # 50.0f

    sub-float/2addr v3, v7

    .line 264
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_4

    .line 265
    const/4 v3, 0x0

    .line 268
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->visualization:[I
    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$200(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;)[I

    move-result-object v7

    float-to-int v8, v3

    aput v8, v7, v5

    .line 253
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 271
    .end local v1    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->segIdx:I
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->access$802(Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;I)I

    .line 273
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioRecorder;->addRecord()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 281
    .end local v2    # "idx":I
    .end local v3    # "mic_level":F
    .end local v4    # "sample":S
    .end local v5    # "seg":I
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 282
    const-string v7, "QURAM"

    const-string v8, "releaseRecorder failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 282
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "QURAM"

    const-string v9, "releaseRecorder failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
