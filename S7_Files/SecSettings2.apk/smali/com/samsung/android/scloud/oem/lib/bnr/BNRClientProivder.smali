.class public Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientProivder;
.super Landroid/content/ContentProvider;
.source "BNRClientProivder.java"


# instance fields
.field private helperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private register(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    :try_start_0
    const-string/jumbo v2, "BNRClientProivder, VERSION : 1.7.5"

    const-string/jumbo v7, "register - started."

    .line 127
    invoke-static {v2, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .local v13, "am":Landroid/content/res/AssetManager;
    const-string/jumbo v2, "res/xml"

    .line 130
    invoke-virtual {v13, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 131
    .local v18, "list":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v7, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_0

    aget-object v16, v18, v2

    .local v16, "file":Ljava/lang/String;
    const-string/jumbo v8, "BNRClientProivder, VERSION : 1.7.5"

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "register - list : "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v16    # "file":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v7, "res/xml/backup_item.xml"

    invoke-virtual {v2, v7}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .local v19, "xml":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v2, "BNRClientProivder, VERSION : 1.7.5"

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "register - xml1 : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    const-string/jumbo v2, "BNRClientProivder, VERSION : 1.7.5"

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "register - xml2 : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    const-string/jumbo v2, "BNRClientProivder, VERSION : 1.7.5"

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "register - xml3 : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "backup_items"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    .end local v13    # "am":Landroid/content/res/AssetManager;
    .end local v18    # "list":[Ljava/lang/String;
    .end local v19    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_1
    :goto_1
    return-void

    .restart local v13    # "am":Landroid/content/res/AssetManager;
    .restart local v18    # "list":[Ljava/lang/String;
    .restart local v19    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_2
    :goto_2
    const-string/jumbo v2, "BNRClientProivder, VERSION : 1.7.5"

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "register - xml4 : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "backup_item"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 142
    :cond_3
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "backup_items"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 145
    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    const-string/jumbo v2, "name"

    const/4 v7, 0x0

    .line 146
    move-object/from16 v0, v19

    invoke-interface {v0, v7, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v2, "contents_id"

    const/4 v7, 0x0

    .line 148
    move-object/from16 v0, v19

    invoke-interface {v0, v7, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "contentsId":Ljava/lang/String;
    const-string/jumbo v2, "client_impl_class"

    const/4 v7, 0x0

    .line 150
    move-object/from16 v0, v19

    invoke-interface {v0, v7, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "clientImplClass":Ljava/lang/String;
    const-string/jumbo v2, "category"

    const/4 v7, 0x0

    .line 152
    move-object/from16 v0, v19

    invoke-interface {v0, v7, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "category":Ljava/lang/String;
    const-string/jumbo v2, "BNRClientProivder, VERSION : 1.7.5"

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "register - xml5 : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "quick_backup"

    const/4 v7, 0x0

    .line 155
    move-object/from16 v0, v19

    invoke-interface {v0, v7, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "isQuick":Ljava/lang/String;
    const-string/jumbo v2, "true"

    .line 156
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "BNRClientProivder, VERSION : 1.7.5"

    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "register - xml6 : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    .line 164
    .local v10, "client":Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object v7, v1

    move-object/from16 v8, p1

    move-object v9, v3

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v1, "mBnrClientHelper":Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientProivder;->helperMap:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 172
    .end local v1    # "mBnrClientHelper":Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "contentsId":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v10    # "client":Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    .end local v13    # "am":Landroid/content/res/AssetManager;
    .end local v14    # "clientImplClass":Ljava/lang/String;
    .end local v17    # "isQuick":Ljava/lang/String;
    .end local v18    # "list":[Ljava/lang/String;
    .end local v19    # "xml":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v15

    .line 173
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "contentsId":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v13    # "am":Landroid/content/res/AssetManager;
    .restart local v14    # "clientImplClass":Ljava/lang/String;
    .restart local v17    # "isQuick":Ljava/lang/String;
    .restart local v18    # "list":[Ljava/lang/String;
    .restart local v19    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_1
    const-string/jumbo v2, "BNRClientProivder, VERSION : 1.7.5"

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "register - xml6 quick_backup : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    .line 159
    .local v4, "client":Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .restart local v1    # "mBnrClientHelper":Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientProivder;->helperMap:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string/jumbo v0, "BNRClientProivder, VERSION : 1.7.5"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "call !!  method : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", arg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientProivder;->helperMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientProivder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;->handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 44
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x0

    .line 50
    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientProivder;->helperMap:Ljava/util/Map;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientProivder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientProivder;->register(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v9, "BNRClientProivder, VERSION : 1.7.5"

    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "openFile !!  uri : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "str":Ljava/lang/String;
    const-string/jumbo v9, "/"

    .line 88
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "sptr":[Ljava/lang/String;
    array-length v9, v6

    add-int/lit8 v5, v9, -0x1

    .line 90
    .local v5, "last_index":I
    aget-object v3, v6, v5

    .local v3, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    const-string/jumbo v9, "BNRClientProivder, VERSION : 1.7.5"

    .line 94
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "filename !!  uri : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "content://"

    const-string/jumbo v10, ""

    .line 96
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "/"

    .line 97
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    const-string/jumbo v9, "restore"

    .line 100
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 112
    if-nez v3, :cond_4

    .line 113
    :cond_0
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v9}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v9

    .line 101
    :cond_1
    if-nez v2, :cond_3

    .line 117
    :cond_2
    :goto_0
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x38000000

    invoke-static {v9, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    return-object v1

    .line 101
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v8, ""

    .local v8, "subfolder":Ljava/lang/String;
    const-string/jumbo v9, "BNRClientProivder, VERSION : 1.7.5"

    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "sub folder : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v4, "folder":Ljava/io/File;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "BNRClientProivder, VERSION : 1.7.5"

    .line 106
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "make folders : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 112
    .end local v4    # "folder":Ljava/io/File;
    .end local v8    # "subfolder":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "BNRClientProivder, VERSION : 1.7.5"

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Unable to open file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # [Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 66
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    return v0
.end method
