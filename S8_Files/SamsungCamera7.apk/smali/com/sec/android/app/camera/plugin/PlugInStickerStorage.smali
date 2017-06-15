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

    .line 23
    sput-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewFaceARUploadedInServer:Z

    .line 24
    sput-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewStampUploadedInServer:Z

    .line 25
    sput-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewWatermarkUploadedInServer:Z

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static addStickerInfo(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    .prologue
    .line 39
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget-object v2, p1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->stickerName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->addSticker(Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;)V

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found sticker information from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
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
    .line 55
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
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
    .line 64
    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 65
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 70
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
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
    .line 79
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-exit v1

    return-object v0

    .line 81
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
    .line 92
    sget-object v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 93
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

    .line 94
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

    .line 95
    .local v0, "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    iget v5, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;->commandId:I

    if-ne v5, p0, :cond_1

    .line 96
    monitor-exit v3

    return-object v0

    .line 100
    .end local v0    # "stickerInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    .end local v1    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not found sticker info of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
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
    .line 112
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->mainOrder:I

    monitor-exit v1

    return v0

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found main order information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
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
    .line 144
    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 145
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

    .line 146
    .local v0, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    iget v3, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->commandId:I

    if-ne v3, p0, :cond_0

    .line 147
    monitor-exit v2

    return-object v0

    .line 150
    .end local v0    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found sticker package of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
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
    .line 128
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    monitor-exit v1

    return-object v0

    .line 132
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found sticker package of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
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
    .line 162
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 163
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->representativeNormalResourceId:I

    monitor-exit v1

    return v0

    .line 166
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found representative normal resource information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
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
    .line 178
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 179
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->representativePressedResourceId:I

    monitor-exit v1

    return v0

    .line 182
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found representative pressed resource information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
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
    .line 195
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 196
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

    .line 197
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

    .line 199
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found sub order information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
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
    .line 212
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 213
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

    .line 214
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

    .line 216
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

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

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
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
    .line 228
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 229
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerType:I

    monitor-exit v1

    return v0

    .line 232
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found preload information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
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
    .line 244
    packed-switch p0, :pswitch_data_0

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is not a case of consideration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :pswitch_0
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewFaceARUploadedInServer:Z

    .line 252
    :goto_0
    return v0

    .line 249
    :pswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewStampUploadedInServer:Z

    goto :goto_0

    .line 252
    :pswitch_2
    sget-boolean v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewWatermarkUploadedInServer:Z

    goto :goto_0

    .line 244
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
    .line 267
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 268
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->isPreloaded:Z

    monitor-exit v1

    return v0

    .line 271
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found preload information from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
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
    .line 282
    invoke-static {p0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerInfo(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    move-result-object v0

    .line 283
    .local v0, "faceARInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    instance-of v2, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    if-eqz v2, :cond_0

    .line 284
    check-cast v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    .end local v0    # "faceARInfo":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;
    iget-object v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;->sceneType:Ljava/lang/String;

    .line 285
    .local v1, "sceneType":Ljava/lang/String;
    const-string v2, "sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const/4 v2, 0x1

    .line 289
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
    .line 298
    .local p0, "stickerPackageMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 299
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    # getter for: Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->stickerList:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->access$000(Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    .line 305
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 303
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;>;"
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 304
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 305
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    return-void
.end method

.method public static removeStickerPackage(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 314
    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 315
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mStickerPackageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
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
    .line 327
    packed-switch p0, :pswitch_data_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is not a case of consideration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :pswitch_0
    sput-boolean p1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewFaceARUploadedInServer:Z

    .line 343
    :goto_0
    return-void

    .line 333
    :pswitch_1
    sput-boolean p1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewStampUploadedInServer:Z

    goto :goto_0

    .line 337
    :pswitch_2
    sput-boolean p1, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->mIsNewWatermarkUploadedInServer:Z

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
