.class public Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader$DBObserver;
.super Landroid/database/ContentObserver;
.source "PlugInShootingModesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader$DBObserver;->this$0:Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;

    .line 382
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 383
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 387
    if-nez p2, :cond_1

    .line 388
    # getter for: Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Uri from ShootingModesProvider is null. Return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 393
    .local v3, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 394
    # getter for: Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No path in uri from ShootingModesProvider. Return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 400
    .local v2, "path":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_3
    move v4, v5

    :goto_1
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 402
    :pswitch_0
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->setNewShootingModesUploadInfo(Z)V

    .line 405
    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader$DBObserver;->this$0:Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->access$100(Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 406
    .local v0, "mHandler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 407
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 408
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x6a

    iput v4, v1, Landroid/os/Message;->what:I

    .line 409
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 400
    .end local v0    # "mHandler":Landroid/os/Handler;
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_1
    const-string v6, "new_modes_upload_info"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0xb0fdb42
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
