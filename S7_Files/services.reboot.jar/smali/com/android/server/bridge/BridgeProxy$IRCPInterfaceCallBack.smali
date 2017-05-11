.class Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;
.super Landroid/content/IRCPInterface$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IRCPInterfaceCallBack"
.end annotation


# static fields
.field public static final EACCES:I = -0xd

.field public static final EBUSY:I = -0x10

.field public static final ENAMETOOLONG:I = -0x24

.field public static final ENOENT:I = -0x2

.field public static final ENOSPC:I = -0x1c

.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/IRCPInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/bridge/BridgeProxy;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method

.method private changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 2278
    move-object v1, p2

    .line 2280
    .local v1, "retFilePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2281
    const-string/jumbo v2, "/mnt/extSdCard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2282
    const-string/jumbo v2, "^/mnt/extSdCard"

    .line 2283
    const-string/jumbo v3, "/mnt/sdcard"

    .line 2282
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2297
    :cond_0
    :goto_0
    return-object v1

    .line 2284
    :cond_1
    const-string/jumbo v2, "/storage/extSdCard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2285
    const-string/jumbo v2, "^/storage/extSdCard"

    .line 2286
    const-string/jumbo v3, "/mnt/sdcard"

    .line 2285
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2287
    :cond_2
    const-string/jumbo v2, "/storage/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/mnt/sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2289
    const-string/jumbo v3, "/"

    const-string/jumbo v4, "/storage/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2290
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2289
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2294
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "changeExtSdPath(): npe has occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1856
    .local p1, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1857
    .local v10, "fosrc":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 1858
    .local v8, "fosdst":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 1859
    .local v2, "bridgeProxyDir":Ljava/io/File;
    const/4 v13, 0x0

    .line 1860
    .local v13, "srcFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 1863
    .local v4, "destFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v16, "/data/misc/BridgeProxy"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .local v3, "bridgeProxyDir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1866
    new-instance v14, Ljava/io/File;

    const-string/jumbo v16, "srcCreateFile"

    move-object/from16 v0, v16

    invoke-direct {v14, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1867
    .local v14, "srcFile":Ljava/io/File;
    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_2
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1868
    .end local v13    # "srcFile":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1870
    .local v11, "fosrc":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    move-result-object v16

    const-string/jumbo v17, " FILE opened : "

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    .line 1872
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1873
    .local v15, "srcPath":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1874
    const-string/jumbo v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1871
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1877
    .end local v15    # "srcPath":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string/jumbo v16, "dstCreateFile"

    move-object/from16 v0, v16

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1878
    .local v5, "destFile":Ljava/io/File;
    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_4
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1879
    .end local v4    # "destFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1881
    .local v9, "fosdst":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    .line 1882
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1883
    .local v6, "dstPath":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1884
    const-string/jumbo v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1881
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1886
    .end local v6    # "dstPath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, " FILE closed "

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1893
    if-eqz v11, :cond_2

    .line 1894
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 1895
    :cond_2
    if-eqz v9, :cond_3

    .line 1896
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1897
    :cond_3
    if-eqz v3, :cond_4

    .line 1898
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1899
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1901
    :cond_4
    if-eqz v14, :cond_5

    .line 1902
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1903
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1905
    :cond_5
    if-eqz v5, :cond_6

    .line 1906
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1907
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_6
    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .local v4, "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .local v13, "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .local v2, "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .local v8, "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 1854
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .end local v13    # "srcFile":Ljava/io/File;
    :cond_7
    :goto_2
    return-void

    .line 1889
    .local v2, "bridgeProxyDir":Ljava/io/File;
    .local v4, "destFile":Ljava/io/File;
    .local v8, "fosdst":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    .local v13, "srcFile":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 1890
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .local v7, "fe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "BridgeFileNotFOundexception"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1893
    if-eqz v10, :cond_8

    .line 1894
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1895
    :cond_8
    if-eqz v8, :cond_9

    .line 1896
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1897
    :cond_9
    if-eqz v2, :cond_a

    .line 1898
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1899
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1901
    :cond_a
    if-eqz v13, :cond_b

    .line 1902
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1903
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1905
    :cond_b
    if-eqz v4, :cond_7

    .line 1906
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1907
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_2

    .line 1892
    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v16

    .line 1893
    :goto_4
    if-eqz v10, :cond_c

    .line 1894
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1895
    :cond_c
    if-eqz v8, :cond_d

    .line 1896
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1897
    :cond_d
    if-eqz v2, :cond_e

    .line 1898
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1899
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1901
    :cond_e
    if-eqz v13, :cond_f

    .line 1902
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1903
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1905
    :cond_f
    if-eqz v4, :cond_10

    .line 1906
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1907
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1892
    :cond_10
    throw v16

    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v13    # "srcFile":Ljava/io/File;
    :catchall_1
    move-exception v16

    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .local v2, "bridgeProxyDir":Ljava/io/File;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_2
    move-exception v16

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .local v13, "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_3
    move-exception v16

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .local v10, "fosrc":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_4
    move-exception v16

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .local v4, "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_5
    move-exception v16

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .local v8, "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1889
    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v12    # "i":I
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .local v4, "destFile":Ljava/io/File;
    .local v8, "fosdst":Ljava/io/FileOutputStream;
    .local v10, "fosrc":Ljava/io/FileOutputStream;
    .local v13, "srcFile":Ljava/io/File;
    :catch_1
    move-exception v7

    .restart local v7    # "fe":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_2
    move-exception v7

    .restart local v7    # "fe":Ljava/io/FileNotFoundException;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .local v13, "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_3
    move-exception v7

    .restart local v7    # "fe":Ljava/io/FileNotFoundException;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .local v10, "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_4
    move-exception v7

    .restart local v7    # "fe":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .local v4, "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_5
    move-exception v7

    .restart local v7    # "fe":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .local v8, "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method private isContainerStateIsValid(I)Z
    .locals 5
    .param p1, "moveToDstCId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2247
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2248
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Move to Personal mode. return true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    return v3

    .line 2251
    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    .line 2252
    .local v0, "info":Lcom/samsung/android/knox/SemPersonaInfo;
    if-nez v0, :cond_1

    .line 2253
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t get a persona info. moveToDstCId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    return v4

    .line 2257
    :cond_1
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2258
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Persona is superlocked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    return v4

    .line 2260
    :cond_2
    iget-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-eqz v1, :cond_3

    .line 2261
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Persona is partially created"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    return v4

    .line 2263
    :cond_3
    iget-boolean v1, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-eqz v1, :cond_4

    .line 2264
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Persona is removed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    return v4

    .line 2267
    :cond_4
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2268
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v1

    .line 2267
    if-eqz v1, :cond_6

    .line 2269
    :cond_5
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Persona state is invalid for moving files "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    return v4

    .line 2273
    :cond_6
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Persona state is valid for moving files"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    return v3
.end method


# virtual methods
.method public cancel(J)V
    .locals 5
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2497
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "cancel"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2498
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancel() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2503
    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->-get3(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2504
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2505
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "task"

    const-string/jumbo v3, "TASK_CANCEL_FILE_OPERATION"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2507
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2508
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    .line 2509
    const-string/jumbo v3, "moveFiles(), Starting FileOperationsHandler service TASK_CANCEL_FILE_OPERATION"

    .line 2508
    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2496
    return-void
.end method

.method public cancelCopyChunks(J)V
    .locals 3
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "cancelCopyChunks"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2490
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelCopyChunks() sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->-get18(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->cancelCopyChunks(J)V

    .line 2488
    return-void
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 2
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2483
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Warning!!!!  copyChunks() is disabled!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const v0, -0x2ed993

    return v0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2178
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "copyFile"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2179
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "copyFile() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2180
    const-string/jumbo v4, "; destContainerId="

    .line 2179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2180
    const-string/jumbo v4, "; destFilePath="

    .line 2179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap7(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v0

    .line 2185
    .local v0, "exportCheck":I
    if-eqz v0, :cond_0

    .line 2186
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    .line 2187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "copyFile(): Permissions (POLICY_NOT_ALLOWED)  or error for srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2188
    const-string/jumbo v4, "; exportCheck="

    .line 2187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2186
    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    return v0

    .line 2193
    :cond_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x2

    invoke-static {v2, p3, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap7(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v1

    .line 2194
    .local v1, "importCheck":I
    if-eqz v1, :cond_1

    .line 2195
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    .line 2196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "copyFile(): Permissions (POLICY_NOT_ALLOWED) or error for destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2197
    const-string/jumbo v4, "; importCheck="

    .line 2196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2195
    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    return v1

    .line 2201
    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2203
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->-get18(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public copyFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 8
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Lcom/samsung/android/knox/SemIRCPCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1786
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v5, "copyFiles"

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1787
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "copyFiles() srcContainerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; srcFilePaths="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1788
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1787
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1788
    const-string/jumbo v6, "; destContainerId="

    .line 1787
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1789
    const-string/jumbo v6, "; destFilePaths="

    .line 1787
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1790
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1787
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->-get3(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1797
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v4, "task"

    const-string/jumbo v5, "TASK_COPY_FILES"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string/jumbo v4, "srcContainerId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1799
    const-string/jumbo v4, "destContainerId"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1800
    const-string/jumbo v4, "srcFilePaths"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1801
    const-string/jumbo v4, "destFilePaths"

    check-cast p4, Ljava/util/ArrayList;

    .end local p4    # "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1803
    new-instance v1, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1804
    .local v1, "mCallBackMessenger":Landroid/os/Messenger;
    const-string/jumbo v4, "callBackMessenger"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1806
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1807
    .local v3, "mSessionId":Ljava/lang/Long;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "copyFiles() ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1810
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1811
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "copyFiles(), Starting FileOperationsHandler service TASK_COPY_FILES"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1813
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "errorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2406
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "getErrorMessage"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2407
    const/16 v1, 0x1f4

    .line 2409
    .local v1, "resourceId":I
    sparse-switch p1, :sswitch_data_0

    .line 2439
    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "UNDEFINED"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap6(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    .line 2442
    :goto_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "REGISTRATION_EXCEPTION"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap6(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2443
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->-get7(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap9(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2411
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "SUCCESS"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap6(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2415
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "ENOSPC"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap6(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2419
    :sswitch_2
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "POLICY_NOT_ALLOWED"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap6(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2423
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "REGISTRATION_EXCEPTION"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap6(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2435
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "UNDEFINED"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap6(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2445
    :cond_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2, v1}, Lcom/android/server/bridge/BridgeProxy;->-wrap8(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2447
    :catch_0
    move-exception v0

    .line 2448
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getErrorMessage(): cannot get error resource for resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2449
    const-string/jumbo v4, "; message: "

    .line 2448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2449
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 2448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    const-string/jumbo v2, "General error"

    return-object v2

    .line 2409
    :sswitch_data_0
    .sparse-switch
        -0xf4242 -> :sswitch_4
        -0xf4241 -> :sswitch_3
        -0xf4240 -> :sswitch_2
        -0x24 -> :sswitch_4
        -0x1c -> :sswitch_1
        -0x10 -> :sswitch_4
        -0xd -> :sswitch_4
        -0x2 -> :sswitch_4
        0x0 -> :sswitch_0
        0x1 -> :sswitch_4
        0x6 -> :sswitch_4
        0x8 -> :sswitch_1
        0xa -> :sswitch_4
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_4
    .end sparse-switch
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "getFileInfo"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2470
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFileInfo(): path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->-get18(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "getFiles"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2464
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->-get18(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isContainerIdIsValid(II)Z
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I

    .prologue
    .line 2302
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerIdIsValid(IIZ)Z

    move-result v0

    return v0
.end method

.method isContainerIdIsValid(IIZ)Z
    .locals 3
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I
    .param p3, "isMoveOperation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2306
    if-eqz p3, :cond_8

    .line 2307
    if-ne p1, p2, :cond_0

    .line 2308
    return v2

    .line 2310
    :cond_0
    if-ltz p1, :cond_1

    if-gez p2, :cond_2

    .line 2311
    :cond_1
    return v2

    .line 2314
    :cond_2
    const/4 v0, 0x0

    .line 2315
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v0

    .line 2317
    if-nez v0, :cond_4

    .line 2318
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_5

    .line 2319
    :cond_3
    return v2

    .line 2321
    :cond_4
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2322
    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2337
    .end local v0    # "uid":I
    :cond_5
    const/4 v1, 0x1

    return v1

    .line 2323
    .restart local v0    # "uid":I
    :cond_6
    return v2

    .line 2326
    :cond_7
    return v2

    .line 2329
    .end local v0    # "uid":I
    :cond_8
    if-eq p1, p2, :cond_9

    .line 2330
    return v2

    .line 2332
    :cond_9
    if-ltz p1, :cond_a

    if-gez p2, :cond_5

    .line 2333
    :cond_a
    return v2
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "isFileExist"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2458
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->-get18(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isMoveFilesAllowed(II)Z
    .locals 12
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I

    .prologue
    const/4 v11, 0x0

    .line 2342
    const/4 v4, 0x0

    .line 2344
    .local v4, "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2345
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2346
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v4

    .line 2352
    .end local v4    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    iget-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    if-eqz v9, :cond_2

    .line 2353
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : user managed container. return true"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const/4 v9, 0x1

    return v9

    .line 2348
    .restart local v4    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_1
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v4

    .local v4, "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    goto :goto_0

    .line 2357
    .end local v4    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_2
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 2358
    .local v2, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v8

    .line 2359
    .local v8, "uid":I
    const/4 v7, 0x0

    .line 2360
    .local v7, "retToOwner":Z
    const/4 v6, 0x1

    .line 2362
    .local v6, "retToKnox":Z
    if-nez v8, :cond_4

    .line 2364
    :try_start_0
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, p2}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 2367
    .local v0, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v0, :cond_3

    .line 2368
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v5

    .line 2369
    .local v5, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    if-eqz v5, :cond_3

    .line 2370
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToContainerAllowed()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 2379
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .end local v6    # "retToKnox":Z
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMoveFilesAllowed : retToKnox = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    return v6

    .line 2375
    .restart local v6    # "retToKnox":Z
    :catch_0
    move-exception v3

    .line 2376
    .local v3, "npe":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const/4 v6, 0x1

    goto :goto_1

    .line 2372
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2373
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/4 v6, 0x1

    goto :goto_1

    .line 2382
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_4
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2384
    :try_start_1
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 2385
    .restart local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v5

    .line 2386
    .restart local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToOwnerAllowed()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    .line 2394
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .end local v7    # "retToOwner":Z
    :goto_2
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMoveFilesAllowed : retToOwner = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    return v7

    .line 2390
    .restart local v7    # "retToOwner":Z
    :catch_2
    move-exception v3

    .line 2391
    .restart local v3    # "npe":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const/4 v7, 0x0

    goto :goto_2

    .line 2387
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    .line 2388
    .restart local v1    # "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    const/4 v7, 0x0

    goto :goto_2

    .line 2398
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_5
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "isMoveFilesAllowed : End of function. Return false"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    return v11
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2209
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v3, "moveFile"

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2210
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveFile() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2211
    const-string/jumbo v4, "; destContainerId="

    .line 2210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2211
    const-string/jumbo v4, "; destFilePath="

    .line 2210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-virtual {p0, p1, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerIdIsValid(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2215
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFile() containerID is not valid"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    const/4 v2, 0x6

    return v2

    .line 2219
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerStateIsValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2220
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fileOperation() container state is not valid"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 2224
    .local v1, "um":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2225
    .local v0, "ui":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->-set3(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2227
    const v2, -0xf4241

    return v2

    .line 2230
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isMoveFilesAllowed(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2231
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFile() policy is denied"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/16 v2, 0xb

    return v2

    .line 2235
    :cond_2
    invoke-static {p2}, Lcom/android/server/bridge/util/FileUtils;->isAllowedFileName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2236
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "moveFile() not allowed file name"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    const/4 v2, 0x5

    return v2

    .line 2240
    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2242
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->-get18(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public moveFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J
    .locals 10
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Lcom/samsung/android/knox/SemIRCPCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/SemIRCPCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1820
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v7, "moveFiles"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1821
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveFiles() srcContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; srcFilePaths="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1822
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1821
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1822
    const-string/jumbo v8, "; destContainerId="

    .line 1821
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1823
    const-string/jumbo v8, "; destFilePaths="

    .line 1821
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1824
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1821
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    if-eqz p3, :cond_0

    .line 1826
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1827
    .local v5, "um":Landroid/os/UserManager;
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1828
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->-set3(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 1830
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1833
    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->-get3(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1834
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1835
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "task"

    const-string/jumbo v7, "TASK_MOVE_FILES"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const-string/jumbo v6, "srcContainerId"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1837
    const-string/jumbo v6, "destContainerId"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1838
    const-string/jumbo v6, "srcFilePaths"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1839
    const-string/jumbo v6, "destFilePaths"

    check-cast p4, Ljava/util/ArrayList;

    .end local p4    # "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v6, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1841
    new-instance v1, Landroid/os/Messenger;

    invoke-interface {p5}, Lcom/samsung/android/knox/SemIRCPCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 1842
    .local v1, "mCallBackMessenger":Landroid/os/Messenger;
    const-string/jumbo v6, "callBackMessenger"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1844
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1845
    .local v3, "mSessionId":Ljava/lang/Long;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveFiles ,mSessionId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const-string/jumbo v6, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1848
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1849
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "moveFiles(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1851
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    return-wide v6
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 29
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1915
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    const-string/jumbo v27, "moveFilesForApp"

    invoke-static/range {v26 .. v27}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 1917
    const/4 v11, 0x0

    .line 1919
    .local v11, "isFileCreate":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v26

    .line 1920
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "moveFilesForApp() srcFilePaths="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1921
    const-string/jumbo v28, "; destFilePaths="

    .line 1920
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1921
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1920
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1921
    const-string/jumbo v28, "reqApp = "

    .line 1920
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1922
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    .line 1920
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1919
    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1925
    .local v25, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1927
    .local v6, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1928
    .local v17, "moveTo":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->-get3(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "com.sec.knox.bridge.activity.MoveToKnoxActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1929
    const-string/jumbo v26, "requestApp"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1930
    const-string/jumbo v26, "launchAfterLockCheck"

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1932
    const/high16 v26, 0x10000000

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1935
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 1936
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 1937
    const/4 v11, 0x1

    .line 1938
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, " src_FILE_READ_OPERATION "

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1940
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v6}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1941
    const-string/jumbo v26, "isFileCreated"

    const/16 v27, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1942
    const-string/jumbo v26, "srcFilePath"

    const-string/jumbo v27, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1943
    const-string/jumbo v26, "destFilePath"

    const-string/jumbo v27, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1954
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v13

    .line 1956
    .local v13, "mKnoxInfoForApp":Landroid/os/Bundle;
    const-string/jumbo v26, "KnoxIdNamePair"

    .line 1955
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 1958
    .local v12, "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v16

    .line 1960
    .local v16, "mMoveToSrcCId":I
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1962
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1944
    .end local v12    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v13    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .end local v16    # "mMoveToSrcCId":I
    :catch_0
    move-exception v8

    .line 1945
    .local v8, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "copyListToFile - IOException"

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2021
    .end local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "e":Ljava/io/IOException;
    .end local v17    # "moveTo":Landroid/content/Intent;
    .end local v25    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .line 2022
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 2025
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1949
    .restart local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "moveTo":Landroid/content/Intent;
    .restart local v25    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    const-string/jumbo v26, "srcFilePaths"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1950
    const-string/jumbo v26, "dstFilePaths"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 1965
    .restart local v12    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v13    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .restart local v16    # "mMoveToSrcCId":I
    :cond_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 1967
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1968
    .local v9, "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 1969
    .local v14, "mMoveToDstCId":I
    const/4 v15, 0x0

    .line 1970
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1971
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1972
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "mMoveToDstName":Ljava/lang/String;
    goto :goto_2

    .line 1974
    .end local v15    # "mMoveToDstName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v26, "moveToDstCId"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1975
    const-string/jumbo v26, "mMoveToDstName"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1983
    .end local v9    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v14    # "mMoveToDstCId":I
    :cond_3
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 1984
    .local v20, "movetoBundle":Landroid/os/Bundle;
    if-nez v11, :cond_4

    .line 1985
    const-string/jumbo v26, "srcFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1986
    const-string/jumbo v26, "dstFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1992
    :goto_3
    const-string/jumbo v26, "requestApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1993
    const-string/jumbo v26, "launchAfterLockCheck"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1994
    const-string/jumbo v26, "moveToDstCId"

    const/16 v27, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1995
    const-string/jumbo v26, "moveToFor"

    const-string/jumbo v27, "File"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v26, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1997
    .local v18, "moveToIntent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1998
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1999
    .local v19, "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v22

    .line 2000
    .local v22, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_6

    .line 2001
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 2002
    .local v23, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2003
    .local v21, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    .local v5, "compName":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v26, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2005
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2006
    invoke-virtual {v10, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2007
    const-string/jumbo v26, "com.sec.knox.switcher.SwitchB2bActivityI"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 2008
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-interface {v0, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 1988
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v18    # "moveToIntent":Landroid/content/Intent;
    .end local v19    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v24    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v26, "isFileCreated"

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1989
    const-string/jumbo v26, "srcFilePath"

    const-string/jumbo v27, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string/jumbo v26, "destFilePath"

    const-string/jumbo v27, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2010
    .restart local v5    # "compName":Landroid/content/ComponentName;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v18    # "moveToIntent":Landroid/content/Intent;
    .restart local v19    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2014
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v24    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Intent;

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v27, v0

    const-string/jumbo v28, "move_to_knox"

    invoke-static/range {v27 .. v28}, Lcom/android/server/bridge/BridgeProxy;->-wrap10(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2013
    invoke-static/range {v26 .. v27}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 2016
    .local v4, "chooserInten":Landroid/content/Intent;
    const-string/jumbo v27, "android.intent.extra.INITIAL_INTENTS"

    .line 2017
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/os/Parcelable;

    .line 2016
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2018
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 34
    .param p1, "requestApp"    # I
    .param p4, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .line 2031
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    const-string/jumbo v32, "moveFilesForApp"

    invoke-static/range {v31 .. v32}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    .line 2033
    const/4 v12, 0x0

    .line 2036
    .local v12, "isFileCreate":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v31

    .line 2037
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "moveFilesForAppEx() srcFilePaths="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 2038
    const-string/jumbo v33, "; destFilePaths="

    .line 2037
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 2038
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2037
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 2038
    const-string/jumbo v33, "reqApp = "

    .line 2037
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 2039
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    .line 2037
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 2039
    const-string/jumbo v33, " containerId "

    .line 2037
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 2036
    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2042
    .local v28, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2044
    .local v6, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2045
    .local v20, "moveTo":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get3(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "com.sec.knox.bridge.activity.MoveToKnoxActivity"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2046
    const-string/jumbo v31, "requestApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2047
    const-string/jumbo v31, "launchAfterLockCheck"

    const/16 v32, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2049
    const/high16 v31, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2052
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_2

    .line 2053
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_2

    .line 2054
    const/4 v12, 0x1

    .line 2055
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, " src_FILE_READ_OPERATION "

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2057
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v6}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2058
    const-string/jumbo v31, "isFileCreated"

    const/16 v32, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2059
    const-string/jumbo v31, "srcFilePath"

    const-string/jumbo v32, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    const-string/jumbo v31, "destFilePath"

    const-string/jumbo v32, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2071
    :goto_0
    :try_start_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 2075
    .local v14, "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v31

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/UserManager;

    .line 2076
    .local v30, "um":Landroid/os/UserManager;
    const/16 v29, 0x0

    .line 2077
    .local v29, "ui":Landroid/content/pm/UserInfo;
    const/16 v31, -0x1

    move/from16 v0, p4

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    .line 2078
    move-object/from16 v0, v30

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v29

    .line 2079
    .end local v29    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    const-string/jumbo v19, "KNOX"

    .line 2080
    .local v19, "message":Ljava/lang/String;
    const/16 v31, -0x1

    move/from16 v0, p4

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    const-string/jumbo v32, "move_to_knox"

    invoke-static/range {v31 .. v32}, Lcom/android/server/bridge/BridgeProxy;->-wrap10(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v15

    .line 2083
    .local v15, "mKnoxInfoForApp":Landroid/os/Bundle;
    const-string/jumbo v31, "KnoxIdNamePair"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 2085
    .local v13, "localMap":Ljava/util/HashMap;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 2104
    .end local v13    # "localMap":Ljava/util/HashMap;
    .end local v15    # "mKnoxInfoForApp":Landroid/os/Bundle;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v18

    .line 2106
    .local v18, "mMoveToSrcCId":I
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v31

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2108
    const-wide/16 v32, 0x0

    return-wide v32

    .line 2061
    .end local v14    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v18    # "mMoveToSrcCId":I
    .end local v19    # "message":Ljava/lang/String;
    .end local v30    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v8

    .line 2062
    .local v8, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "copyListToFile - IOException"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2167
    .end local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "e":Ljava/io/IOException;
    .end local v20    # "moveTo":Landroid/content/Intent;
    .end local v28    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .line 2168
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 2171
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    const-wide/16 v32, 0x0

    return-wide v32

    .line 2066
    .restart local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "moveTo":Landroid/content/Intent;
    .restart local v28    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    const-string/jumbo v31, "srcFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2067
    const-string/jumbo v31, "dstFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2086
    .restart local v13    # "localMap":Ljava/util/HashMap;
    .restart local v14    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v15    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .restart local v19    # "message":Ljava/lang/String;
    .restart local v30    # "um":Landroid/os/UserManager;
    :cond_3
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2087
    .local v10, "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 2088
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2090
    .local v9, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v31

    if-nez v31, :cond_4

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v31

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/knox/SemPersonaManager;->isECContainer(I)Z

    move-result v31

    if-nez v31, :cond_4

    .line 2092
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v14, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2096
    .end local v9    # "id":Ljava/lang/Integer;
    .end local v10    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v13    # "localMap":Ljava/util/HashMap;
    .end local v15    # "mKnoxInfoForApp":Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 2097
    const-string/jumbo v19, "Secure Folder"

    .line 2098
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2099
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isECContainer(I)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getECName(I)Ljava/lang/String;

    move-result-object v19

    .line 2101
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/bridge/BridgeProxy;->-get14(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getECName(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2111
    .restart local v18    # "mMoveToSrcCId":I
    :cond_7
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 2113
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2114
    .restart local v10    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .line 2115
    .local v16, "mMoveToDstCId":I
    const/16 v17, 0x0

    .line 2116
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 2117
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2118
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .local v17, "mMoveToDstName":Ljava/lang/String;
    goto :goto_4

    .line 2120
    .end local v17    # "mMoveToDstName":Ljava/lang/String;
    :cond_8
    const-string/jumbo v31, "moveToDstCId"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2121
    const-string/jumbo v31, "mMoveToDstName"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 2129
    .end local v10    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v16    # "mMoveToDstCId":I
    :cond_9
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 2130
    .local v23, "movetoBundle":Landroid/os/Bundle;
    if-nez v12, :cond_a

    .line 2131
    const-string/jumbo v31, "srcFilePaths"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2132
    const-string/jumbo v31, "dstFilePaths"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2138
    :goto_5
    const-string/jumbo v31, "requestApp"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2139
    const-string/jumbo v31, "launchAfterLockCheck"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2140
    const-string/jumbo v31, "moveToDstCId"

    const/16 v32, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2141
    const-string/jumbo v31, "moveToFor"

    const-string/jumbo v32, "File"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v31, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2143
    .local v21, "moveToIntent":Landroid/content/Intent;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2144
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2145
    .local v22, "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/bridge/BridgeProxy;->-get9(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v32

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    move/from16 v2, v33

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v25

    .line 2146
    .local v25, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_c

    .line 2147
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/ResolveInfo;

    .line 2148
    .local v26, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2149
    .local v24, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    .local v5, "compName":Landroid/content/ComponentName;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v31, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2151
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2152
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2153
    const-string/jumbo v31, "com.sec.knox.switcher.SwitchB2bActivityI"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 2154
    const/16 v31, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-interface {v0, v1, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 2134
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v21    # "moveToIntent":Landroid/content/Intent;
    .end local v22    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v25    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_a
    const-string/jumbo v31, "isFileCreated"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2135
    const-string/jumbo v31, "srcFilePath"

    const-string/jumbo v32, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    const-string/jumbo v31, "destFilePath"

    const-string/jumbo v32, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2156
    .restart local v5    # "compName":Landroid/content/ComponentName;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v21    # "moveToIntent":Landroid/content/Intent;
    .restart local v22    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v25    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2160
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/Intent;

    .line 2159
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 2162
    .local v4, "chooserInten":Landroid/content/Intent;
    const-string/jumbo v32, "android.intent.extra.INITIAL_INTENTS"

    .line 2163
    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Landroid/os/Parcelable;

    .line 2162
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2164
    const/high16 v31, 0x10000000

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/bridge/BridgeProxy;->-get6(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/bridge/BridgeProxy;->-get8(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method