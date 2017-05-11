.class public Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;
.super Landroid/os/Handler;
.source "SemApexSimpleSplitHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 52
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->context:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    sget-object v14, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    const-string v15, "handleMessage++"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    sget-object v14, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    const-string v15, "handleMessage--"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 63
    :pswitch_0
    sget-object v14, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    const-string v15, "queue id"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 65
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v14, "id"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 66
    .local v6, "id":J
    const-string v14, "path"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "path":Ljava/lang/String;
    sget-object v14, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    const-string v15, "id=%d, path=%s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz v10, :cond_0

    .line 69
    sget-object v14, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "id from client : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v6, v7, v10}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->queueFilePath(JLjava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v6    # "id":J
    .end local v10    # "path":Ljava/lang/String;
    :pswitch_1
    sget-object v14, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    const-string v15, "do split"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 77
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v14, "token"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v12, v14

    .line 78
    .local v12, "token":J
    const-string v14, "temp"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 79
    .local v11, "tempFile":Ljava/lang/String;
    const-string v14, "data"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "data":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 83
    :try_start_0
    sget-object v14, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "token: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v14, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "temp: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 86
    .local v9, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;>;"
    array-length v15, v5

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_1

    aget-object v8, v5, v14

    .line 87
    .local v8, "item":Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-direct {v4, v8}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, "d":Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    sget-object v16, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "item: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 95
    .end local v4    # "d":Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    .end local v8    # "item":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .end local v9    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;>;"
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSimpleSplitHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v14

    .line 101
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "data":[Ljava/lang/String;
    .end local v11    # "tempFile":Ljava/lang/String;
    .end local v12    # "token":J
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 102
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v14, "temp"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 103
    .restart local v11    # "tempFile":Ljava/lang/String;
    const-string v14, "canceled"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    move-object v3, v14

    check-cast v3, [J

    .line 106
    .local v3, "canceled":[J
    goto/16 :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
