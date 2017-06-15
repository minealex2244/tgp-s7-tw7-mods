.class public Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;
.super Landroid/database/ContentObserver;
.source "PlugInStickerLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DBObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;->this$0:Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;

    .line 390
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 391
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 11
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 395
    const-string v5, "PlugInStickerLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onChange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "separated":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v0, v3, v5

    .line 401
    .local v0, "action":Ljava/lang/String;
    const-string v5, "refreshAll"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 402
    const-string v5, "PlugInStickerLoader"

    const-string v6, "Refresh All Stickers"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;->this$0:Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->loadStickers()V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const-string v5, "uninstall"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 406
    aget-object v4, v3, v8

    .line 409
    .local v4, "uninstalledPackageName":Ljava/lang/String;
    const-string v5, "PlugInStickerLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninstall Sticker package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->removeStickerPackage(Ljava/lang/String;)V

    .line 413
    iget-object v5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;->this$0:Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    .line 414
    .local v1, "mHandler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 415
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 416
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0x68

    iput v5, v2, Landroid/os/Message;->what:I

    .line 417
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 420
    .end local v1    # "mHandler":Landroid/os/Handler;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "uninstalledPackageName":Ljava/lang/String;
    :cond_2
    const-string v5, "new_sticker_uploaded"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 421
    aget-object v5, v3, v8

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->setNewStickerUploadInfo(IZ)V

    .line 422
    aget-object v5, v3, v9

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v9, v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->setNewStickerUploadInfo(IZ)V

    .line 423
    aget-object v5, v3, v10

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v10, v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->setNewStickerUploadInfo(IZ)V

    .line 426
    iget-object v5, p0, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader$DBObserver;->this$0:Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    .line 427
    .restart local v1    # "mHandler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 428
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 429
    .restart local v2    # "msg":Landroid/os/Message;
    const/16 v5, 0x69

    iput v5, v2, Landroid/os/Message;->what:I

    .line 430
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
