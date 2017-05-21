.class public Lcom/android/launcher3/home/WorkspaceCellLayout;
.super Lcom/android/launcher3/common/base/view/CellLayout;
.source "WorkspaceCellLayout.java"


# static fields
.field private static final DISABLE_BUTTON_ALPHA:F = 0.4f

.field private static final ENABLE_BUTTON_ALPHA:F = 1.0f

.field static final TAG:Ljava/lang/String; = "WorkspaceCellLayout"


# instance fields
.field private mAlignButtonBottom:Landroid/widget/ImageView;

.field private mAlignButtonTop:Landroid/widget/ImageView;

.field private mAlignLayoutBottom:Landroid/widget/LinearLayout;

.field private mAlignLayoutHeight:I

.field private mAlignLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mAlignLayoutTop:Landroid/widget/LinearLayout;

.field public mBackupItems:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/launcher3/home/BackupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultPadding:I

.field private mDividerBottom:Landroid/view/View;

.field private mDividerTop:Landroid/view/View;

.field public mGridChanged:Z

.field private mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mNeedCustomLayout:Z

.field protected mOccupiedForGrid:[[Z

.field public mOutSideItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOverviewShrinkFactorReverse:F

.field private mPageDeleteBtn:Landroid/widget/ImageView;

.field public mRestoredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenGridHeightPadding:I

.field private mScreenGridShrinkFactorReverse:F

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field public mTempPage:Z

.field private mZeroPageSwitch:Landroid/widget/Switch;

.field private mZeroPageSwitchHeight:I

.field private mZeroPageSwitchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    .line 82
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    .line 83
    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    .line 106
    new-instance v0, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    .line 107
    new-instance v0, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .line 108
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupOverviewLayout()V

    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupScreenGridLayout()V

    .line 110
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->changeColorForBg(Z)V

    .line 111
    return-void
.end method

.method private clearOccupied()V
    .locals 4

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupiedCells()V

    .line 511
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 512
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 511
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "y":I
    :cond_1
    return-void
.end method

.method private gridSizeChanged(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    .line 341
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->setGridChangeState(Z)V

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 344
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 346
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->makePreviousRectMap(Landroid/view/View;)V

    .line 348
    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 349
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 350
    .local v1, "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    .line 343
    .end local v1    # "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 351
    :cond_1
    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 352
    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    .line 353
    .local v3, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v3}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 357
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    return-void
.end method

.method private reset(III)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "diffX"    # I
    .param p3, "diffY"    # I

    .prologue
    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupied()V

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v14

    .line 409
    .local v14, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_8

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 411
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 412
    .local v16, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    .line 414
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 415
    .local v2, "cellX":I
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 416
    .local v3, "cellY":I
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 417
    .local v4, "spanX":I
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 419
    .local v5, "spanY":I
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-le v1, v6, :cond_1

    .line 420
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    .line 422
    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 424
    :cond_0
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    add-int v2, v1, p2

    .line 428
    :cond_1
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-le v1, v6, :cond_3

    .line 429
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    .line 431
    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 433
    :cond_2
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    add-int v3, v1, p3

    .line 437
    :cond_3
    if-nez p1, :cond_5

    .line 438
    add-int v1, v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-gt v1, v6, :cond_4

    add-int v1, v3, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-gt v1, v6, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    .line 409
    :cond_4
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 441
    :cond_5
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 442
    add-int/lit8 v1, p2, -0x1

    if-le v2, v1, :cond_4

    add-int v1, v3, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-gt v1, v6, :cond_4

    .line 443
    sub-int v7, v2, p2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 445
    :cond_6
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 446
    add-int v1, v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-gt v1, v6, :cond_4

    add-int/lit8 v1, p3, -0x1

    if-le v3, v1, :cond_4

    .line 447
    sub-int v8, v3, p3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v7, v2

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 449
    :cond_7
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 450
    add-int/lit8 v1, p2, -0x1

    if-le v2, v1, :cond_4

    add-int/lit8 v1, p3, -0x1

    if-le v3, v1, :cond_4

    .line 451
    sub-int v7, v2, p2

    sub-int v8, v3, p3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 456
    .end local v2    # "cellX":I
    .end local v3    # "cellY":I
    .end local v4    # "spanX":I
    .end local v5    # "spanY":I
    .end local v13    # "child":Landroid/view/View;
    .end local v16    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_8
    return-void
.end method

.method private setupAlignLayout(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "alignlayout"    # Landroid/widget/LinearLayout;
    .param p2, "alignbutton"    # Landroid/widget/ImageView;
    .param p3, "divider"    # Landroid/view/View;
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x1

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 629
    .local v0, "alignbuttonPadding":I
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 631
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 633
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 634
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 635
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f02006e

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 636
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 637
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 639
    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->ALIGN_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 642
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 643
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0d0022

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 645
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 646
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;)V

    .line 648
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p2, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 652
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 654
    :cond_0
    return-void
.end method

.method private setupOverviewLayout()V
    .locals 5

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    .line 115
    const/high16 v1, 0x42c80000    # 100.0f

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    .line 121
    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 125
    .local v0, "alignbuttonPadding":I
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 127
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 129
    :cond_0
    return-void
.end method

.method private setupScreenGridLayout()V
    .locals 3

    .prologue
    .line 132
    const/high16 v0, 0x42c80000    # 100.0f

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridShrinkFactorReverse:F

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridShrinkFactorReverse:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    .line 136
    return-void
.end method

.method private updateIconViews()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 361
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 364
    instance-of v8, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v8, :cond_1

    move-object v1, v0

    .line 365
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 366
    .local v1, "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    .line 360
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 367
    .restart local v0    # "childView":Landroid/view/View;
    :cond_1
    instance-of v8, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v8, :cond_2

    move-object v3, v0

    .line 368
    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    .line 369
    .local v3, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v3}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v8}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 371
    .end local v3    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    instance-of v8, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v8, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 374
    .local v4, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    if-eqz v4, :cond_0

    .line 375
    iget v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v10, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellWidth:I

    mul-int/2addr v10, v8

    iget v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    if-lt v8, v12, :cond_3

    iget v8, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mWidthGap:I

    iget v11, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v8, v11

    :goto_2
    add-int v7, v10, v8

    .line 377
    .local v7, "targetWidth":I
    iget v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    iget v10, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellHeight:I

    mul-int/2addr v10, v8

    iget v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    if-lt v8, v12, :cond_4

    iget v8, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mHeightGap:I

    iget v11, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v8, v11

    :goto_3
    add-int v6, v10, v8

    .line 379
    .local v6, "targetHeight":I
    iget v8, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v10, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    .line 380
    invoke-static {v8, v10, v7, v6}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v5

    .line 383
    .local v5, "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setResizeScaleResult(Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;)V

    .line 384
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v8}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V

    goto :goto_1

    .end local v5    # "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .end local v6    # "targetHeight":I
    .end local v7    # "targetWidth":I
    .restart local v0    # "childView":Landroid/view/View;
    :cond_3
    move v8, v9

    .line 375
    goto :goto_2

    .restart local v7    # "targetWidth":I
    :cond_4
    move v8, v9

    .line 377
    goto :goto_3

    .line 388
    .end local v0    # "childView":Landroid/view/View;
    .end local v4    # "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .end local v7    # "targetWidth":I
    :cond_5
    return-void
.end method


# virtual methods
.method addAlignLayoutBottom(Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 616
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    .line 617
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    .line 618
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    .line 620
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f020098

    .line 621
    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f080003

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    .line 620
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupAlignLayout(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 623
    return-void
.end method

.method addAlignLayoutTop(Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 606
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    .line 607
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    .line 608
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    .line 610
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f020099

    .line 611
    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 612
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f080004

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    .line 610
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupAlignLayout(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 613
    return-void
.end method

.method addPageDeleteBtn(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x1

    .line 585
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    .line 587
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 590
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 592
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f02006e

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 594
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->PAGE_DELETE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 598
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;)V

    .line 599
    return-void
.end method

.method addZeroPageSwitch(Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 10
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z
    .param p3, "ccl"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 537
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    .line 538
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    .line 539
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 542
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 543
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 546
    .local v2, "paddingforScale":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09011d

    .line 547
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 548
    .local v3, "paddingleft":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09011e

    .line 549
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 551
    .local v1, "paddingRight":I
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_2

    move v4, v1

    :goto_0
    add-int/2addr v4, v2

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_3

    .end local v3    # "paddingleft":I
    :goto_1
    add-int v6, v3, v2

    invoke-virtual {v5, v4, v7, v6, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 553
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 554
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 555
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->ZERO_PAGE_SWITCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 556
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    const v5, 0x7f100013

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setTextAppearance(I)V

    .line 559
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setMinHeight(I)V

    .line 561
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setScaleX(F)V

    .line 562
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setScaleY(F)V

    .line 564
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageSwitch()Z

    move-result v4

    if-nez v4, :cond_0

    .line 565
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setClickable(Z)V

    .line 568
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 571
    :cond_0
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    .line 572
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 573
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v6, 0x7f0d0022

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 575
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;)V

    .line 578
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 579
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 580
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 582
    :cond_1
    return-void

    .restart local v3    # "paddingleft":I
    :cond_2
    move v4, v3

    .line 551
    goto/16 :goto_0

    :cond_3
    move v3, v1

    goto/16 :goto_1
.end method

.method changeColorForBg(Z)V
    .locals 2
    .param p1, "whiteBg"    # Z

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 702
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 703
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 704
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->changeCrossHairFliter(Z)V

    .line 705
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 711
    :cond_1
    return-void
.end method

.method findNearestVacantAreaWithCell(IIII[IZ)V
    .locals 9
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I
    .param p6, "changeGrid"    # Z

    .prologue
    .line 490
    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eqz p6, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    :goto_0
    move-object v0, p5

    move v1, p3

    move v2, p4

    move v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v8

    .line 492
    .local v8, "foundCell":Z
    if-eqz v8, :cond_2

    .line 503
    :cond_0
    :goto_1
    return-void

    .line 490
    .end local v8    # "foundCell":Z
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    goto :goto_0

    .line 496
    .restart local v8    # "foundCell":Z
    :cond_2
    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eqz p6, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    :goto_2
    move-object v0, p5

    move v1, p3

    move v2, p4

    move v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v8

    .line 498
    if-nez v8, :cond_0

    .line 502
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, p5, v1

    aput v2, p5, v0

    goto :goto_1

    .line 496
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    goto :goto_2
.end method

.method getAlignLayoutList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentIconSize()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getContentTop()I

    move-result v0

    return v0
.end method

.method getOutSideItems(I)Ljava/util/List;
    .locals 1
    .param p1, "outSidePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/launcher3/util/ScreenGridUtilities;->getPairOutSideItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPageDeleteBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getTopPaddingCustomPage()I
    .locals 5

    .prologue
    .line 715
    const/high16 v2, 0x42c80000    # 100.0f

    .line 716
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 717
    .local v1, "screenGridShrinkFactorReverse":F
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090139

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 720
    .local v0, "screenGridHeightPadding":I
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isVisibleGridPanel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    :goto_0
    return v0

    .line 720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getZeroPageSwitch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method getZeroPageSwitchLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initChildren(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    new-instance v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-direct {v0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 141
    return-void
.end method

.method markCellsForGrid(IIII)V
    .locals 7
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .prologue
    .line 506
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    .line 507
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 526
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->onAttachedToWindow()V

    .line 528
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mSlop:F

    .line 529
    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCellDimensions()V

    .line 694
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->updateIconViews()V

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupOverviewLayout()V

    .line 697
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupScreenGridLayout()V

    .line 698
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    .line 160
    .local v0, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 259
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/CellLayout;->onLayout(ZIIII)V

    .line 261
    iget-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090117

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 265
    .local v0, "dividerHeight":I
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_5

    .line 266
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 267
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090118

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v1, v2

    .line 270
    .local v1, "pageDeleteBtnSize":I
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_4

    move v4, v1

    :goto_1
    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 274
    .end local v1    # "pageDeleteBtnSize":I
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 276
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 277
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    sub-int/2addr v4, v0

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    .line 277
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 280
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    sub-int/2addr v4, v5

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredHeight()I

    move-result v6

    .line 280
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 282
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 283
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v3, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 293
    .end local v0    # "dividerHeight":I
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->isGridChanging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestLayout()V

    .line 296
    :cond_2
    return-void

    .line 270
    .restart local v0    # "dividerHeight":I
    .restart local v1    # "pageDeleteBtnSize":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0

    .line 271
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    goto :goto_1

    .line 286
    .end local v1    # "pageDeleteBtnSize":I
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 287
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    sub-int/2addr v4, v0

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    .line 287
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isVisibleGridPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 254
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->onMeasure(II)V

    .line 255
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 170
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    .line 171
    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 173
    const/4 v0, 0x1

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 199
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 179
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc8

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->setLongPressTimeout(I)V

    .line 183
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 180
    :cond_2
    const/16 v1, 0x12c

    goto :goto_1

    .line 190
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 194
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 478
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeView(Landroid/view/View;)V

    .line 481
    :cond_0
    return-void
.end method

.method restoreGridSize(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 326
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eq v0, p2, :cond_1

    .line 327
    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    .line 328
    iput p2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    .line 330
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    .line 331
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 334
    invoke-direct {p0, v2, v2, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->reset(III)V

    .line 336
    const-string v0, "WorkspaceCellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreGridSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    return-void
.end method

.method setBgImage(IZ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "defaultPage"    # Z

    .prologue
    .line 210
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImageResource(IZZ)V

    .line 211
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    .line 212
    return-void
.end method

.method setBgImageResource(IZZ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "defaultPage"    # Z
    .param p3, "whiteBg"    # Z

    .prologue
    const v1, 0x7f02007f

    const v2, 0x7f02007e

    const/4 v4, 0x0

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cc

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 239
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    return-void

    .line 219
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cb

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 222
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    .line 223
    if-eqz p2, :cond_4

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_3

    const v1, 0x7f020081

    :goto_1
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v1, 0x7f020080

    goto :goto_1

    .line 227
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p3, :cond_5

    :goto_2
    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    .line 230
    :cond_6
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    .line 231
    if-eqz p2, :cond_8

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_7

    const v1, 0x7f0200ec

    :goto_3
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_7
    const v1, 0x7f0200eb

    goto :goto_3

    .line 235
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p3, :cond_9

    :goto_4
    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_4
.end method

.method public setCellDimensions()V
    .locals 7

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    .line 147
    .local v6, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mFixedCellWidth:I

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellWidth:I

    .line 148
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mFixedCellHeight:I

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellHeight:I

    .line 149
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mHeightGap:I

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mWidthGap:I

    .line 151
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    .line 152
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    .line 155
    return-void
.end method

.method protected setChildrenLayout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    .line 302
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    add-int/2addr p2, v0

    .line 303
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    sub-int/2addr p4, v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isVisibleGridPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    add-int/2addr p2, v0

    .line 309
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    sub-int/2addr p4, v0

    .line 312
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenLayout(IIII)V

    .line 313
    return-void
.end method

.method setCustomFlag(Z)V
    .locals 0
    .param p1, "needCustomLayout"    # Z

    .prologue
    .line 532
    iput-boolean p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    .line 533
    return-void
.end method

.method setEnabledOnAlignButton(Z)V
    .locals 6
    .param p1, "isTop"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    .line 674
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 676
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 677
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 678
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 679
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 680
    return-void

    :cond_0
    move v0, v2

    .line 674
    goto :goto_0

    :cond_1
    move v1, v2

    .line 675
    goto :goto_1

    :cond_2
    move v0, v4

    .line 676
    goto :goto_2

    :cond_3
    move v4, v3

    .line 679
    goto :goto_3
.end method

.method setEnabledOnAlignButton(ZZ)V
    .locals 4
    .param p1, "canAlignTop"    # Z
    .param p2, "canAlignBottom"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    .line 683
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 684
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 685
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 686
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 687
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 688
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 689
    return-void

    :cond_0
    move v0, v2

    .line 685
    goto :goto_0

    :cond_1
    move v1, v2

    .line 688
    goto :goto_1
.end method

.method setGridSizeForScreenGrid(IIZIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "animated"    # Z
    .param p4, "position"    # I
    .param p5, "diffX"    # I
    .param p6, "diffY"    # I

    .prologue
    .line 459
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->gridSizeChanged(Z)V

    .line 463
    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    .line 464
    iput p2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    .line 465
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    .line 466
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 468
    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p6, 0x1

    invoke-direct {p0, p4, v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->reset(III)V

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->requestLayout()V

    .line 470
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->invalidate()V

    .line 473
    :cond_1
    return-void
.end method

.method spanToPixel(II)[I
    .locals 5
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .prologue
    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellWidth()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getWidthGap()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellHeight()I

    move-result v2

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getHeightGap()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public touchPageDeleteBtn()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    .line 603
    return-void
.end method

.method updateItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 393
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 395
    .local v0, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 396
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 397
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 398
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 399
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    .line 400
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    .line 401
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V

    .line 403
    .end local v0    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method updateOccupied()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    .line 522
    :cond_0
    return-void
.end method
