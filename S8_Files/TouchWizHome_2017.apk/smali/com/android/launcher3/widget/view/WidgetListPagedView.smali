.class public Lcom/android/launcher3/widget/view/WidgetListPagedView;
.super Lcom/android/launcher3/widget/view/WidgetPagedView;
.source "WidgetListPagedView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/view/WidgetPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getWidgetItemFolderViewId()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f030048

    return v0
.end method

.method public getWidgetItemSingleViewId()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f030049

    return v0
.end method

.method public getWidgetPageLayoutId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f03004b

    return v0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .local v0, "lp1":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetListPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f09007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 54
    invoke-super {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onConfigurationChangedIfNeeded()V

    .line 55
    return-void
.end method
