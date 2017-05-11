.class Lcom/android/launcher3/common/view/BitmapCacheContainer;
.super Ljava/lang/Object;
.source "LiveIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;",
            "Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/view/BitmapCacheContainer;->mCache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/launcher3/common/view/BitmapCacheContainer;->mCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;

    .line 306
    .local v0, "bitmapInfo":Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;
    if-nez v0, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 309
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public putBitmapCache(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 321
    new-instance v0, Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;

    invoke-direct {v0, p3}, Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v0, "newBitmapInfo":Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;
    iget-object v1, p0, Lcom/android/launcher3/common/view/BitmapCacheContainer;->mCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-void
.end method

.method public removeBitmapCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v3, p0, Lcom/android/launcher3/common/view/BitmapCacheContainer;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 333
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;>;Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 334
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 335
    .local v2, "packageNameKey":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/android/launcher3/common/view/BitmapCacheContainer;->mCache:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 339
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;>;Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;>;"
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    .end local v2    # "packageNameKey":Ljava/lang/String;
    :cond_1
    return-void
.end method
