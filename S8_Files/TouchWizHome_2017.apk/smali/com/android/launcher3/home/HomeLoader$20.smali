.class Lcom/android/launcher3/home/HomeLoader$20;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->removeWorkspaceItem(ZILjava/lang/String;Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$appWidgetId:I

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$duplicate:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isHomeOnlyMode:Z

.field final synthetic val$isWidget:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;ZLjava/lang/String;IZLandroid/content/Intent;ZLcom/android/launcher3/home/HomeLoader$HomeCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$20;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isWidget:Z

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    iput p4, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$appWidgetId:I

    iput-boolean p5, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isHomeOnlyMode:Z

    iput-object p6, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$intent:Landroid/content/Intent;

    iput-boolean p7, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$duplicate:Z

    iput-object p8, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2150
    .local v2, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v7, "HomeLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeWorkspaceItem is widget "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isWidget:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " title "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    # getter for: Lcom/android/launcher3/home/HomeLoader;->sBgLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$8600()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2152
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher3/home/HomeLoader$20;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # invokes: Lcom/android/launcher3/home/HomeLoader;->getAllItemInHome()Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/launcher3/home/HomeLoader;->access$5500(Lcom/android/launcher3/home/HomeLoader;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2153
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-boolean v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isWidget:Z

    if-eqz v9, :cond_1

    .line 2154
    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 2157
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object v4, v0

    .line 2158
    .local v4, "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    iget v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$appWidgetId:I

    iget v10, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v9, v10, :cond_0

    .line 2159
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2179
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "widget":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2162
    .restart local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    :try_start_1
    iget-boolean v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$isHomeOnlyMode:Z

    if-eqz v9, :cond_7

    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eq v9, v5, :cond_6

    move v3, v5

    .line 2165
    .local v3, "skipRemove":Z
    :goto_1
    if-nez v3, :cond_0

    .line 2169
    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2170
    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2171
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2173
    :cond_3
    iget-boolean v9, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$duplicate:Z

    if-nez v9, :cond_0

    .line 2179
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "skipRemove":Z
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2181
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2182
    const-string v5, "HomeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/home/HomeLoader$20;->val$title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " workspace item will be removed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader$20;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v5}, Lcom/android/launcher3/home/HomeLoader;->access$8700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItemsFromDatabase(Ljava/util/ArrayList;)V

    .line 2184
    iget-object v5, p0, Lcom/android/launcher3/home/HomeLoader$20;->this$0:Lcom/android/launcher3/home/HomeLoader;

    new-instance v6, Lcom/android/launcher3/home/HomeLoader$20$1;

    invoke-direct {v6, p0, v2}, Lcom/android/launcher3/home/HomeLoader$20$1;-><init>(Lcom/android/launcher3/home/HomeLoader$20;Ljava/util/ArrayList;)V

    # invokes: Lcom/android/launcher3/home/HomeLoader;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v5, v6}, Lcom/android/launcher3/home/HomeLoader;->access$8800(Lcom/android/launcher3/home/HomeLoader;Ljava/lang/Runnable;)V

    .line 2193
    :cond_5
    return-void

    .restart local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    move v3, v6

    .line 2162
    goto :goto_1

    :cond_7
    :try_start_2
    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eq v9, v5, :cond_8

    iget v9, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_8

    move v3, v5

    goto :goto_1

    :cond_8
    move v3, v6

    goto :goto_1
.end method
