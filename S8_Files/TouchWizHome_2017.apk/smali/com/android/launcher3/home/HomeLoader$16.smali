.class Lcom/android/launcher3/home/HomeLoader$16;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->bindItemAfterChangePosition(Lcom/android/launcher3/common/base/item/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->mFavoritesUpdater:Lcom/android/launcher3/common/model/FavoritesUpdater;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$7600(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/common/model/FavoritesUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/FavoritesUpdater;->deleteItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1965
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v5, -0x1

    iput v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    int-to-long v4, v5

    iput-wide v4, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 1966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$16;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$16;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # getter for: Lcom/android/launcher3/home/HomeLoader;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/launcher3/home/HomeLoader;->access$7700()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 1969
    return-void
.end method
