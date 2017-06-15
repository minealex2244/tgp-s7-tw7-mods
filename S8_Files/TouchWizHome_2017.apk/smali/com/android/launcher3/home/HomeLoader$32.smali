.class final Lcom/android/launcher3/home/HomeLoader$32;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/common/base/item/ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 8
    .param p1, "a"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "b"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const-wide/16 v6, -0x1

    .line 3023
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 3024
    const/4 v0, 0x0

    .line 3034
    .local v0, "ret":I
    :goto_0
    return v0

    .line 3025
    .end local v0    # "ret":I
    :cond_0
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 3026
    const/4 v0, 0x1

    .restart local v0    # "ret":I
    goto :goto_0

    .line 3027
    .end local v0    # "ret":I
    :cond_1
    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 3028
    const/4 v0, -0x1

    .restart local v0    # "ret":I
    goto :goto_0

    .line 3029
    .end local v0    # "ret":I
    :cond_2
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 3030
    const/4 v0, -0x1

    .restart local v0    # "ret":I
    goto :goto_0

    .line 3032
    .end local v0    # "ret":I
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3019
    check-cast p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast p2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/home/HomeLoader$32;->compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method
