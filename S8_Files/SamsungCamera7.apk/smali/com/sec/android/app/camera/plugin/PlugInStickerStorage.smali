.class public Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;
.super Ljava/lang/Object;
.source "PlugInStickerStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkTextInfo;,
        Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$WatermarkInfo;,
        Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;,
        Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;,
        Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StampInfo;,
        Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlugInStickerStorage"

.field public static final TYPE_FACE_AR:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_STAMP:I = 0x2

.field public static final TYPE_WATERMARK:I = 0x3

.field public static mIsNewFaceARUploadedInServer:Z

.field public static mIsNewStampUploadedInServer:Z

.field public static mIsNewWatermarkUploadedInServer:Z

.field private static mStickerPackageMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewFaceARUploadedInServer:Z

    .line 22
    sput-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewStampUploadedInServer:Z

    .line 23
    sput-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewWatermarkUploadedInServer:Z

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static addStickerInfo(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    .prologue
    .line 36
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget-object v2, p1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->stickerName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->addSticker(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V

    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found sticker information from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addStickerPackage(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "stickerPackage"    # Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    .prologue
    .line 52
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clear()V
    .locals 3

    .prologue
    .line 61
    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 62
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 67
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    return-void
.end method

.method public static getAllStickers()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getStickerInfo(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    .locals 6
    .param p0, "commandId"    # I

    .prologue
    .line 88
    sget-object v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 89
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    .line 90
    .local v1, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    .line 91
    .local v0, "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    iget v5, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->commandId:I

    if-ne v5, p0, :cond_1

    .line 92
    monitor-exit v3

    return-object v0

    .line 96
    .end local v0    # "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    .end local v1    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not found sticker info of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getStickerMainOrder(Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->mainOrder:I

    monitor-exit v1

    return v0

    .line 111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found main order information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    .locals 4
    .param p0, "commandId"    # I

    .prologue
    .line 137
    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 138
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    .line 139
    .local v0, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    iget v3, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->commandId:I

    if-ne v3, p0, :cond_0

    .line 140
    monitor-exit v2

    return-object v0

    .line 143
    .end local v0    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found sticker package of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getStickerPackage(Ljava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    monitor-exit v1

    return-object v0

    .line 126
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found sticker package of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getStickerRepresentativeNormalResourceId(Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 155
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->representativeNormalResourceId:I

    monitor-exit v1

    return v0

    .line 158
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found representative normal resource information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getStickerRepresentativePressedResourceId(Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->representativePressedResourceId:I

    monitor-exit v1

    return v0

    .line 173
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found representative pressed resource information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getStickerSubOrder(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "stickerName"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 186
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->subOrder:I

    monitor-exit v1

    return v0

    .line 189
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found sub order information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getStickerThumbnailResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "stickerName"    # Ljava/lang/String;

    .prologue
    .line 201
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 202
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->thumbnailResourceId:I

    monitor-exit v1

    return v0

    .line 205
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found thumbnail resource information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getStickerType(Ljava/lang/String;)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 211
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerType:I

    monitor-exit v1

    return v0

    .line 214
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found preload information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isNewStickerUploaded(I)Z
    .locals 2
    .param p0, "stickerType"    # I

    .prologue
    .line 225
    packed-switch p0, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is not a case of consideration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewFaceARUploadedInServer:Z

    .line 233
    :goto_0
    return v0

    .line 230
    :pswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewStampUploadedInServer:Z

    goto :goto_0

    .line 233
    :pswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewWatermarkUploadedInServer:Z

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isPreloadSticker(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 247
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 248
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->isPreloaded:Z

    monitor-exit v1

    return v0

    .line 251
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found preload information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isSoundFaceARSticker(I)Z
    .locals 3
    .param p0, "commandId"    # I

    .prologue
    .line 262
    invoke-static {p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerInfo(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    move-result-object v0

    .line 263
    .local v0, "faceARInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    instance-of v2, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    if-eqz v2, :cond_0

    .line 264
    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    .end local v0    # "faceARInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;->sceneType:Ljava/lang/String;

    .line 265
    .local v1, "sceneType":Ljava/lang/String;
    const-string v2, "sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    const/4 v2, 0x1

    .line 269
    .end local v1    # "sceneType":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static refreshAllStickers(Ljava/util/LinkedHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "stickerPackageMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 279
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 280
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    .line 285
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 283
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 284
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 285
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    return-void
.end method

.method public static removeStickerPackage(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 294
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 295
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setNewStickerUploadInfo(IZ)V
    .locals 2
    .param p0, "stickerType"    # I
    .param p1, "isUploadedInServer"    # Z

    .prologue
    .line 306
    packed-switch p0, :pswitch_data_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is not a case of consideration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :pswitch_0
    sput-boolean p1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewFaceARUploadedInServer:Z

    .line 322
    :goto_0
    return-void

    .line 312
    :pswitch_1
    sput-boolean p1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewStampUploadedInServer:Z

    goto :goto_0

    .line 316
    :pswitch_2
    sput-boolean p1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewWatermarkUploadedInServer:Z

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
