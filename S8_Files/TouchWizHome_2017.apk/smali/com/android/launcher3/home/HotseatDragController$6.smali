.class final Lcom/android/launcher3/home/HotseatDragController$6;
.super Ljava/lang/Object;
.source "HotseatDragController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HotseatDragController;
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
        "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 8
    .param p1, "a"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "b"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1220
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1221
    .local v0, "aInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v1, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1222
    .local v1, "bInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1223
    const/4 v2, 0x0

    .line 1229
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1224
    .end local v2    # "ret":I
    :cond_0
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 1225
    const/4 v2, -0x1

    .restart local v2    # "ret":I
    goto :goto_0

    .line 1227
    .end local v2    # "ret":I
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1216
    check-cast p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    check-cast p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/home/HotseatDragController$6;->compare(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I

    move-result v0

    return v0
.end method
