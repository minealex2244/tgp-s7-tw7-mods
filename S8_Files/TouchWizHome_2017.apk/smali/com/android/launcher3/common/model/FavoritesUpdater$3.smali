.class Lcom/android/launcher3/common/model/FavoritesUpdater$3;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 116
    sget-object v1, Lcom/android/launcher3/common/model/DataUpdater;->sContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 118
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v1, :cond_4

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    # getter for: Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;
    invoke-static {v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 134
    :cond_2
    :goto_0
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 135
    monitor-exit v2

    .line 137
    :cond_3
    return-void

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_2

    .line 126
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    # getter for: Lcom/android/launcher3/common/model/FavoritesUpdater;->mLoader:Lcom/android/launcher3/common/model/DataLoader;
    invoke-static {v1}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$100(Lcom/android/launcher3/common/model/FavoritesUpdater;)Lcom/android/launcher3/common/model/DataLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/model/DataLoader;->removePagesItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 128
    sget-object v1, Lcom/android/launcher3/common/model/DataUpdater;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v0

    .line 129
    .local v0, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteFolder(J)V

    .line 130
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$3;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    # invokes: Lcom/android/launcher3/common/model/FavoritesUpdater;->logFolderCount(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    invoke-static {v1, v3}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$200(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 135
    .end local v0    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
