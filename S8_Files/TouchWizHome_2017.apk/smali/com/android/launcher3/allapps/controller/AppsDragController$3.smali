.class Lcom/android/launcher3/allapps/controller/AppsDragController$3;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "rhs"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1181
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x64

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    add-int/2addr v1, v0

    iget-object v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v2

    mul-int/lit8 v2, v0, 0x64

    iget-object v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1178
    check-cast p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    check-cast p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->compare(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I

    move-result v0

    return v0
.end method
