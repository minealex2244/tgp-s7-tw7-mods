.class final Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$4;
.super Ljava/lang/Object;
.source "SyncClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 603
    const-string v11, "data_version"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 607
    .local v2, "dataVersion":I
    const-string v11, "SCloudClientHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GET_ATTACHMENT_INFO : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", v : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v11, "local_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 615
    .local v7, "localId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v11

    # getter for: Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mClientMap:Ljava/util/Map;
    invoke-static {v11}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Ljava/util/Map;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v2, v7}, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;->getAttachmentFileInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 621
    .local v5, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 623
    .local v8, "result":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 625
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    .line 629
    .local v9, "size":I
    const/4 v3, 0x0

    .line 631
    .local v3, "fileList":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 635
    .local v10, "timestampList":[J
    if-eqz v9, :cond_0

    .line 637
    new-array v3, v9, [Ljava/lang/String;

    .line 639
    new-array v10, v9, [J

    .line 643
    const/4 v4, 0x0

    .line 645
    .local v4, "i":I
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 647
    .local v6, "key":Ljava/lang/String;
    aput-object v6, v3, v4

    .line 649
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v10, v4

    .line 651
    add-int/lit8 v4, v4, 0x1

    .line 653
    goto :goto_0

    .line 657
    .end local v4    # "i":I
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    const-string v11, "file_list"

    invoke-virtual {v8, v11, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 659
    const-string v11, "timestamp_list"

    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 663
    .end local v3    # "fileList":[Ljava/lang/String;
    .end local v9    # "size":I
    .end local v10    # "timestampList":[J
    :cond_1
    return-object v8
.end method
