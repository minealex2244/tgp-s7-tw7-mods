.class public Lcom/android/launcher3/common/drag/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/drag/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragObject"
.end annotation


# instance fields
.field public cancelDropFolder:Z

.field public cancelled:Z

.field public deferDragViewCleanupPostAnimation:Z

.field public dragComplete:Z

.field public dragInfo:Ljava/lang/Object;

.field public dragSource:Lcom/android/launcher3/common/drag/DragSource;

.field public dragView:Lcom/android/launcher3/common/drag/DragView;

.field public extraDragInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field public extraDragSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DragSource;",
            ">;"
        }
    .end annotation
.end field

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public restored:Z

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    .line 33
    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    .line 38
    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    .line 43
    iput v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    .line 50
    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    .line 55
    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 60
    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 65
    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 70
    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 75
    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 92
    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 94
    iput-object v1, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method


# virtual methods
.method public final getVisualCenter([F)[F
    .locals 5
    .param p1, "recycle"    # [F

    .prologue
    .line 106
    if-nez p1, :cond_0

    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 112
    .local v1, "res":[F
    :goto_0
    iget v3, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    iget v4, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    sub-int v0, v3, v4

    .line 113
    .local v0, "left":I
    iget v3, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    iget v4, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    sub-int v2, v3, v4

    .line 116
    .local v2, "top":I
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 117
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 119
    return-object v1

    .end local v0    # "left":I
    .end local v1    # "res":[F
    .end local v2    # "top":I
    :cond_0
    move-object v1, p1

    .line 106
    goto :goto_0
.end method
