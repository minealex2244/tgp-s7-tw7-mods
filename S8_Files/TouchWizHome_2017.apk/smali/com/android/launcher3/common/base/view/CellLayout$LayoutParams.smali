.class public Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/base/view/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1340
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1301
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1307
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 1341
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 1342
    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 1343
    iput p3, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1344
    iput p4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1345
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 1320
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1301
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1307
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 1321
    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1322
    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1323
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 1326
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1301
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1307
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 1327
    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1328
    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1329
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 1332
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1301
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1307
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 1333
    iget v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 1334
    iget v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 1335
    iget v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1336
    iget v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1337
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 1387
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1379
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 1395
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 1403
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1383
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    .line 1384
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 1375
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    .line 1376
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 1391
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 1392
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 1399
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 1400
    return-void
.end method

.method public setup(IIIII)V
    .locals 6
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I
    .param p5, "colCount"    # I

    .prologue
    .line 1348
    iget-boolean v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v4, :cond_1

    .line 1349
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1350
    .local v0, "myCellHSpan":I
    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1351
    .local v1, "myCellVSpan":I
    iget-boolean v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    .line 1352
    .local v2, "myCellX":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_3

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    .line 1354
    .local v3, "myCellY":I
    :goto_1
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_0

    .line 1355
    sub-int v4, p5, v2

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v2, v4, v5

    .line 1356
    if-gez v2, :cond_0

    .line 1357
    const/4 v2, 0x0

    .line 1361
    :cond_0
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    .line 1363
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    .line 1365
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 1366
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 1368
    .end local v0    # "myCellHSpan":I
    .end local v1    # "myCellVSpan":I
    .end local v2    # "myCellX":I
    .end local v3    # "myCellY":I
    :cond_1
    return-void

    .line 1351
    .restart local v0    # "myCellHSpan":I
    .restart local v1    # "myCellVSpan":I
    :cond_2
    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_0

    .line 1352
    .restart local v2    # "myCellX":I
    :cond_3
    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
