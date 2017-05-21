.class public Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;
.super Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;
.source "SemApexSplitWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final SPLIT_COMPLETE:I = 0x2

.field static final SPLIT_FAILED:I = 0x3

.field static final SPLIT_STARTED:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private final mIndex:I

.field private mIsLast:Z

.field private mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

.field private mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;ILjava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "task"    # Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;
    .param p3, "index"    # I
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;-><init>(I)V

    .line 68
    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    .line 69
    iput p3, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    .line 70
    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    .line 72
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 94
    const/16 v17, 0x0

    .line 95
    .local v17, "success":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIsLast:Z

    if-eqz v2, :cond_2

    .line 96
    const/16 v2, -0x10

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 100
    :goto_0
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": worker run "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->handleSplitState(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    if-eqz v2, :cond_a

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 104
    const/16 v18, 0x0

    .line 105
    .local v18, "tempRAF":Ljava/io/RandomAccessFile;
    const/4 v15, 0x0

    .line 107
    .local v15, "outRAF":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v14, "file":Ljava/io/File;
    new-instance v19, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getTempFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    .local v19, "tempRAF":Ljava/io/RandomAccessFile;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->setSource(Ljava/io/FileDescriptor;JJ)V

    .line 110
    new-instance v16, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "rw"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    .end local v15    # "outRAF":Ljava/io/RandomAccessFile;
    .local v16, "outRAF":Ljava/io/RandomAccessFile;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getSplitTimestamp(I)J

    move-result-wide v2

    const-wide/32 v4, 0x2dc6c0

    sub-long v6, v2, v4

    .line 112
    .local v6, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_3

    .line 113
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getSplitTimestamp(I)J

    move-result-wide v8

    .line 114
    .local v8, "endTime":J
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->priority:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->split(Ljava/io/FileDescriptor;JJJZZZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    const/16 v17, 0x1

    .line 123
    if-eqz v19, :cond_0

    .line 125
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 130
    :cond_0
    :goto_2
    if-eqz v16, :cond_1

    .line 132
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 137
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->release()V

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    move-object/from16 v15, v16

    .end local v16    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v15    # "outRAF":Ljava/io/RandomAccessFile;
    move-object/from16 v18, v19

    .line 144
    .end local v6    # "startTime":J
    .end local v8    # "endTime":J
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "outRAF":Ljava/io/RandomAccessFile;
    .end local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    :goto_4
    if-eqz v17, :cond_b

    .line 145
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " worker complete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->handleSplitState(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;I)V

    .line 151
    :goto_5
    return-void

    .line 98
    :cond_2
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 112
    .restart local v6    # "startTime":J
    .restart local v14    # "file":Ljava/io/File;
    .restart local v16    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    :cond_3
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 126
    .restart local v8    # "endTime":J
    :catch_0
    move-exception v13

    .line 127
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 133
    .end local v13    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v13

    .line 134
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 117
    .end local v6    # "startTime":J
    .end local v8    # "endTime":J
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "file":Ljava/io/File;
    .end local v16    # "outRAF":Ljava/io/RandomAccessFile;
    .end local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v15    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v13

    .line 118
    .restart local v13    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_5
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    if-eqz v18, :cond_4

    .line 125
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 130
    :cond_4
    :goto_7
    if-eqz v15, :cond_5

    .line 132
    :try_start_7
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 137
    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->release()V

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    goto :goto_4

    .line 126
    :catch_3
    move-exception v13

    .line 127
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 133
    :catch_4
    move-exception v13

    .line 134
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 119
    .end local v13    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v13

    .line 120
    .local v13, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_8
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    const-string v3, "runtime exception!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 123
    if-eqz v18, :cond_6

    .line 125
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 130
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_a
    if-eqz v15, :cond_7

    .line 132
    :try_start_a
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 137
    :cond_7
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->release()V

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    goto/16 :goto_4

    .line 126
    .restart local v13    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v13

    .line 127
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 133
    .end local v13    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v13

    .line 134
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 123
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_c
    if-eqz v18, :cond_8

    .line 125
    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 130
    :cond_8
    :goto_d
    if-eqz v15, :cond_9

    .line 132
    :try_start_c
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 137
    :cond_9
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;->release()V

    .line 138
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mSplitter:Lcom/samsung/android/apex/motionphoto/composer/SemApexVideoSplitter;

    throw v2

    .line 126
    :catch_8
    move-exception v13

    .line 127
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 133
    .end local v13    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v13

    .line 134
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 141
    .end local v13    # "e":Ljava/io/IOException;
    .end local v15    # "outRAF":Ljava/io/RandomAccessFile;
    .end local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    :cond_a
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    const-string v3, "photo file is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 148
    :cond_b
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " worker failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mTask:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->handleSplitState(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;I)V

    goto/16 :goto_5

    .line 123
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    goto :goto_c

    .end local v15    # "outRAF":Ljava/io/RandomAccessFile;
    .end local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v16    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v2

    move-object/from16 v15, v16

    .end local v16    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v15    # "outRAF":Ljava/io/RandomAccessFile;
    move-object/from16 v18, v19

    .end local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    goto :goto_c

    .line 119
    .end local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v13

    move-object/from16 v18, v19

    .end local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    goto/16 :goto_9

    .end local v15    # "outRAF":Ljava/io/RandomAccessFile;
    .end local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v16    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v13

    move-object/from16 v15, v16

    .end local v16    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v15    # "outRAF":Ljava/io/RandomAccessFile;
    move-object/from16 v18, v19

    .end local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    goto/16 :goto_9

    .line 117
    .end local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v13

    move-object/from16 v18, v19

    .end local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    goto/16 :goto_6

    .end local v15    # "outRAF":Ljava/io/RandomAccessFile;
    .end local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v16    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v13

    move-object/from16 v15, v16

    .end local v16    # "outRAF":Ljava/io/RandomAccessFile;
    .restart local v15    # "outRAF":Ljava/io/RandomAccessFile;
    move-object/from16 v18, v19

    .end local v19    # "tempRAF":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempRAF":Ljava/io/RandomAccessFile;
    goto/16 :goto_6
.end method

.method public setLast(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;->mIsLast:Z

    .line 81
    return-void
.end method
