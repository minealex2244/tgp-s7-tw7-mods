.class public abstract Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Normalizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    .local p0, "this":Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;, "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewsForScreenWithPreNormalize(Ljava/util/ArrayList;IZI)Ljava/util/ArrayList;
    .locals 6
    .param p2, "maxItemsPerScreen"    # I
    .param p3, "keepEmptyPages"    # Z
    .param p4, "targetPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;IZI)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;, "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 134
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZLjava/util/ArrayList;I)I

    .line 135
    return-object v4
.end method

.method public normalize(Ljava/util/ArrayList;IZ)I
    .locals 8
    .param p2, "maxItemsPerScreen"    # I
    .param p3, "keepEmptyPages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;IZ)I"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;, "Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    const-string v0, "AppsLoader"

    const-string v1, "normalize start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v6, -0x1

    .line 124
    .local v6, "num":I
    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->mNormalizeLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$000()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 125
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;->normalize(Ljava/util/ArrayList;IZLjava/util/ArrayList;I)I

    move-result v6

    .line 126
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const-string v0, "AppsLoader"

    const-string v1, "normalize end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v6

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract normalize(Ljava/util/ArrayList;IZLjava/util/ArrayList;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;IZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation
.end method
