.class public Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
.super Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/view/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 336
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    .line 348
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    .line 340
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 355
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    .line 356
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 363
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    .line 364
    return-void
.end method
