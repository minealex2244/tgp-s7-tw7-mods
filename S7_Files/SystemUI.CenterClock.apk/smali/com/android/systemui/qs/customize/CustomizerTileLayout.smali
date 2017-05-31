.class public Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.super Landroid/view/ViewGroup;
.source "CustomizerTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;
    }
.end annotation


# instance fields
.field protected mBottomPadding:I

.field protected final mBoundaryBox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected mCellHeight:I

.field protected mCellHorizontalMargin:I

.field private mCellMarginTop:I

.field protected mCellVerticalMargin:I

.field protected mCellWidth:I

.field private mCircle:Landroid/widget/FrameLayout;

.field private mCirclePos:I

.field protected mColumns:I

.field private mContext:Landroid/content/Context;

.field protected final mCrossIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mCrossIconSize:I

.field protected final mCustomTilesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mDividerHeight:I

.field protected mDragListener:Landroid/view/View$OnDragListener;

.field protected mMaxRows:I

.field private mParent:Landroid/view/ViewGroup;

.field protected mSidePadding:I

.field protected mTileIconSize:I

.field protected mTopPadding:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 1
    .param p1, "tileInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCirclePos:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->updateResources()Z

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View$OnDragListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "rows"    # I
    .param p4, "dragListener"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const-string/jumbo v0, "CustomizerTileLayout"

    const-string/jumbo v1, "CustomizerTileLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mParent:Landroid/view/ViewGroup;

    .line 92
    iput p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    .line 93
    iput-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    .line 94
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mParent:Landroid/view/ViewGroup;

    const v2, 0x7f0400eb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    return-void
.end method

.method private createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 4
    .param p1, "tileInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .prologue
    .line 110
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizeTileView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V

    .line 111
    .local v0, "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->customTileHandleStateChange(Lcom/android/systemui/qs/QSTile$State;)V

    .line 112
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 113
    return-object v0
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 509
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getColumnStart(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 607
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHorizontalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getRowTop(I)I
    .locals 2
    .param p1, "row"    # I

    .prologue
    .line 602
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addBackgroundBox(IILandroid/view/View$OnDragListener;)V
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "listener"    # Landroid/view/View$OnDragListener;

    .prologue
    const/4 v7, 0x0

    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, "total":I
    const-string/jumbo v4, "CustomizerTileLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addBackgroundBox listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "row = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "col = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    mul-int v3, p1, p2

    .line 397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 398
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400e1

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 399
    .local v0, "backgroundBox":Landroid/widget/FrameLayout;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 401
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "backgroundBox":Landroid/widget/FrameLayout;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400e2

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 407
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 408
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    .line 411
    add-int/lit8 v4, p1, -0x1

    add-int/lit8 v5, p2, -0x1

    mul-int v3, v4, v5

    .line 412
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 413
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400e6

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 414
    .local v1, "crossIcon":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 392
    .end local v1    # "crossIcon":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 5
    .param p1, "tileInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .prologue
    .line 119
    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    .line 122
    .local v0, "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 123
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    .line 125
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 126
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    .line 127
    .local v1, "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 128
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V
    .locals 12
    .param p1, "tileInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .param p2, "position"    # I
    .param p3, "withAnimation"    # Z

    .prologue
    .line 146
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 147
    .local v6, "total":I
    if-le p2, v6, :cond_0

    .line 148
    move p2, v6

    .line 150
    :cond_0
    move v2, p2

    .line 152
    .local v2, "idx":I
    const-string/jumbo v7, "CustomizerTileLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addTile position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "total = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "idx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " spec = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "withAnimation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-direct {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;-><init>()V

    .line 155
    .local v3, "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v7, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v7, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 156
    iget-object v7, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    .line 158
    iget-object v7, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v7, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 160
    if-eqz p3, :cond_2

    .line 161
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 163
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    if-ge v2, v6, :cond_1

    .line 164
    move v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v7, v6, -0x1

    if-le v1, v7, :cond_1

    .line 165
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v4, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 166
    .local v4, "nextView":Landroid/view/View;
    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "x"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 167
    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "y"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    .end local v4    # "nextView":Landroid/view/View;
    :cond_1
    new-instance v7, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;

    invoke-direct {v7, p0, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    const-wide/16 v8, 0x96

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 199
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 144
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :goto_1
    return-void

    .line 201
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->createCustomizeTileView(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v5

    .line 202
    .local v5, "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    iput-object v5, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 203
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTag(Ljava/lang/Object;)V

    .line 204
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 205
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public addTiles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;>;"
    return-void
.end method

.method public dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 5
    .param p1, "tileInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .prologue
    .line 317
    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dropTile tileInfo =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v0

    .line 319
    .local v0, "position":I
    if-gez v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v1, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 321
    .local v1, "tiveView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dropTile tiveView =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setAlpha(F)V

    .line 323
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->requestLayout()V

    .line 316
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCustomTileInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 328
    const-string/jumbo v1, "CustomizerTileLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInfo position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 331
    .local v0, "total":I
    add-int/lit8 v1, v0, -0x1

    if-le p1, v1, :cond_0

    .line 332
    add-int/lit8 p1, v0, -0x1

    .line 333
    const-string/jumbo v1, "CustomizerTileLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position is invalid position is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object v1
.end method

.method public getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    return-object v0
.end method

.method public indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I
    .locals 5
    .param p1, "info"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .prologue
    .line 346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 348
    .local v0, "diffInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "diffInfo.spec = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v1

    .line 346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v0    # "diffInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    :cond_1
    const-string/jumbo v2, "CustomizerTileLayout"

    const-string/jumbo v3, "diffInfo.spec is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v2, -0x1

    return v2
.end method

.method public moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 12
    .param p1, "fromtileInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .param p2, "to"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v2

    .line 259
    .local v2, "from":I
    if-gez v2, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 263
    .local v6, "total":I
    add-int/lit8 v7, v6, -0x1

    if-le p2, v7, :cond_1

    add-int/lit8 p2, v6, -0x1

    .line 265
    :cond_1
    const-string/jumbo v7, "CustomizerTileLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTile from = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "total = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "fromtileInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move v1, p2

    .line 267
    .local v1, "emptyPos":I
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 268
    .local v0, "animator":Landroid/animation/AnimatorSet;
    if-ge v2, p2, :cond_2

    .line 269
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_3

    .line 270
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 271
    .local v5, "nextView":Landroid/view/View;
    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "x"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 272
    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "y"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v3    # "i":I
    .end local v5    # "nextView":Landroid/view/View;
    :cond_2
    move v3, v2

    .restart local v3    # "i":I
    :goto_1
    if-le v3, p2, :cond_3

    .line 276
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 277
    .restart local v5    # "nextView":Landroid/view/View;
    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "x"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 278
    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "y"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 275
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 281
    .end local v5    # "nextView":Landroid/view/View;
    :cond_3
    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 283
    new-instance v7, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;

    invoke-direct {v7, p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;I)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 294
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 295
    .local v4, "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 296
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 105
    const-string/jumbo v0, "CustomizerTileLayout"

    const-string/jumbo v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getWidth()I

    move-result v21

    .line 515
    .local v21, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getLayoutDirection()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    .line 516
    .local v13, "isRtl":Z
    :goto_0
    const/16 v17, 0x0

    .line 517
    .local v17, "row":I
    const/4 v7, 0x0

    .line 519
    .local v7, "column":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 521
    .local v15, "numTiles":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v15, :cond_4

    .line 522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v7, v0, :cond_0

    .line 523
    add-int/lit8 v17, v17, 0x1

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v22, v0

    sub-int v7, v7, v22

    .line 526
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-object/from16 v18, v0

    .line 528
    .local v18, "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getColumnStart(I)I

    move-result v14

    .line 529
    .local v14, "left":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getRowTop(I)I

    move-result v19

    .line 531
    .local v19, "top":I
    if-eqz v13, :cond_3

    .line 532
    sub-int v16, v21, v14

    .line 533
    .local v16, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    move/from16 v22, v0

    sub-int v14, v16, v22

    .line 537
    :goto_2
    if-eqz v18, :cond_1

    .line 538
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTranslationX(F)V

    .line 539
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setTranslationY(F)V

    .line 540
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    move/from16 v3, v22

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->layout(IIII)V

    .line 521
    :cond_1
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 515
    .end local v7    # "column":I
    .end local v12    # "i":I
    .end local v13    # "isRtl":Z
    .end local v14    # "left":I
    .end local v15    # "numTiles":I
    .end local v16    # "right":I
    .end local v17    # "row":I
    .end local v18    # "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    .end local v19    # "top":I
    :cond_2
    const/4 v13, 0x0

    .restart local v13    # "isRtl":Z
    goto/16 :goto_0

    .line 535
    .restart local v7    # "column":I
    .restart local v12    # "i":I
    .restart local v14    # "left":I
    .restart local v15    # "numTiles":I
    .restart local v17    # "row":I
    .restart local v18    # "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    .restart local v19    # "top":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    move/from16 v22, v0

    add-int v16, v14, v22

    .restart local v16    # "right":I
    goto :goto_2

    .line 544
    .end local v14    # "left":I
    .end local v16    # "right":I
    .end local v18    # "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    .end local v19    # "top":I
    :cond_4
    const/16 v17, 0x0

    .line 545
    const/4 v7, 0x0

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 547
    .local v6, "boxNum":I
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v6, :cond_7

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v7, v0, :cond_5

    .line 549
    add-int/lit8 v17, v17, 0x1

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v22, v0

    sub-int v7, v7, v22

    .line 552
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getColumnStart(I)I

    move-result v14

    .line 553
    .restart local v14    # "left":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getRowTop(I)I

    move-result v19

    .line 555
    .restart local v19    # "top":I
    if-eqz v13, :cond_6

    .line 556
    sub-int v16, v21, v14

    .line 557
    .restart local v16    # "right":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    move/from16 v22, v0

    sub-int v14, v16, v22

    .line 561
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 562
    .local v5, "box":Landroid/widget/FrameLayout;
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v19

    move/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v5, v14, v0, v1, v2}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 547
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 559
    .end local v5    # "box":Landroid/widget/FrameLayout;
    .end local v16    # "right":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    move/from16 v22, v0

    add-int v16, v14, v22

    .restart local v16    # "right":I
    goto :goto_4

    .line 565
    .end local v14    # "left":I
    .end local v16    # "right":I
    .end local v19    # "top":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v26

    add-int v25, v25, v26

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 568
    .local v20, "total":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getHeight()I

    move-result v11

    .line 571
    .local v11, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    sub-int v22, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v23, v0

    div-int v9, v22, v23

    .line 572
    .local v9, "diffX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    sub-int v22, v11, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    move/from16 v23, v0

    div-int v10, v22, v23

    .line 575
    .local v10, "diffY":I
    const/16 v17, 0x1

    .line 576
    const/4 v7, 0x1

    .line 577
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v20

    if-ge v12, v0, :cond_9

    .line 578
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v7, v0, :cond_8

    .line 579
    add-int/lit8 v17, v17, 0x1

    .line 580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    sub-int v7, v7, v22

    .line 582
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    move/from16 v22, v0

    mul-int v23, v9, v7

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v14, v22, v23

    .line 583
    .restart local v14    # "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    move/from16 v22, v0

    mul-int v23, v10, v17

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v19, v22, v23

    .line 584
    .restart local v19    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 585
    .local v8, "crossIcon":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    move/from16 v22, v0

    add-int v22, v22, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    move/from16 v23, v0

    add-int v23, v23, v19

    move/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v8, v14, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 577
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 513
    .end local v8    # "crossIcon":Landroid/view/View;
    .end local v14    # "left":I
    .end local v19    # "top":I
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 473
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 474
    .local v8, "width":I
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    div-int v5, v9, v10

    .line 477
    .local v5, "rows":I
    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v8, v9

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    add-int/lit8 v10, v10, -0x1

    div-int/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHorizontalMargin:I

    .line 479
    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 481
    .local v4, "numTiles":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 482
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v6, v9, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 483
    .local v6, "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    if-eqz v6, :cond_0

    .line 484
    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    .line 481
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 486
    :cond_1
    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v9}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v10}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/android/systemui/qs/customize/CustomizeTileView;->measure(II)V

    goto :goto_1

    .line 490
    .end local v6    # "tileView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 491
    .local v1, "boxNum":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 492
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 493
    .local v0, "box":Landroid/widget/FrameLayout;
    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v9}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v10}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/widget/FrameLayout;->measure(II)V

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 496
    .end local v0    # "box":Landroid/widget/FrameLayout;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 498
    .local v7, "totalCrossIcons":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_4

    .line 499
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 500
    .local v2, "crossIcon":Landroid/view/View;
    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    invoke-static {v9}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    invoke-static {v10}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/view/View;->measure(II)V

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 503
    .end local v2    # "crossIcon":Landroid/view/View;
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v10}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v10

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    invoke-static {v11}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->exactly(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/FrameLayout;->measure(II)V

    .line 504
    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    iget v11, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setMeasuredDimension(II)V

    .line 472
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 380
    const-string/jumbo v0, "CustomizerTileLayout"

    const-string/jumbo v1, "removeAllViews clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIcon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 384
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 379
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V
    .locals 12
    .param p1, "tileInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .param p2, "withAnimation"    # Z

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v2

    .line 212
    .local v2, "idx":I
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 214
    .local v6, "total":I
    const-string/jumbo v7, "CustomizerTileLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeTile index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "tile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object v4, p1

    .line 217
    .local v4, "removeTileInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 219
    .local v5, "removeView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    if-eqz p2, :cond_1

    .line 220
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 222
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    move v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_0

    .line 223
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v3, v7, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 224
    .local v3, "nextView":Landroid/view/View;
    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "x"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 225
    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    const-string/jumbo v9, "y"

    const/4 v7, 0x2

    new-array v10, v7, [F

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v3    # "nextView":Landroid/view/View;
    :cond_0
    new-instance v7, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;

    invoke-direct {v7, p0, v2, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/CustomizeTileView;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    const-wide/16 v8, 0x96

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 247
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 209
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 250
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 5
    .param p1, "tileInfo"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)I

    move-result v0

    .line 302
    .local v0, "position":I
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v1, v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 305
    .local v1, "tiveView":Lcom/android/systemui/qs/customize/CustomizeTileView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setAlpha(F)V

    .line 306
    const-string/jumbo v2, "CustomizerTileLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectTile position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 309
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 300
    :cond_1
    return-void
.end method

.method public setCircleVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 388
    :cond_0
    return-void

    .line 389
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateResources()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 420
    const-string/jumbo v6, "CustomizerTileLayout"

    const-string/jumbo v7, "updateResources tileLayout"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 422
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    .line 423
    .local v2, "orientation":I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    move v1, v4

    .line 424
    .local v1, "isLandscape":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v6

    const-string/jumbo v7, "qs_tile_column_landscape"

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 427
    .local v0, "columns":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d020b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mDividerHeight:I

    .line 428
    const v6, 0x7f0d0240

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTopPadding:I

    .line 429
    const v6, 0x7f0d0241

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBottomPadding:I

    .line 431
    packed-switch v0, :pswitch_data_0

    .line 455
    :goto_2
    :pswitch_0
    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    int-to-float v6, v6

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    .line 456
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellVerticalMargin:I

    .line 457
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    .line 458
    const v6, 0x7f0d01f7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellMarginTop:I

    .line 459
    const v6, 0x7f0d0204

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mTileIconSize:I

    .line 460
    const v6, 0x7f0d0247

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCrossIconSize:I

    .line 461
    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    if-eq v6, v0, :cond_2

    .line 462
    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    .line 463
    const-string/jumbo v5, "CustomizerTileLayout"

    const-string/jumbo v6, "updateResources tileLayout is called cause columns is changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->requestLayout()V

    .line 465
    return v4

    .end local v0    # "columns":I
    .end local v1    # "isLandscape":Z
    :cond_0
    move v1, v5

    .line 423
    goto/16 :goto_0

    .line 425
    .restart local v1    # "isLandscape":Z
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v6

    const-string/jumbo v7, "qs_tile_column"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "columns":I
    goto/16 :goto_1

    .line 433
    :pswitch_1
    const v6, 0x7f0d01ec

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 434
    const v6, 0x7f0d01f1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto :goto_2

    .line 437
    :pswitch_2
    const v6, 0x7f0d01ed

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 438
    const v6, 0x7f0d01f2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto/16 :goto_2

    .line 441
    :pswitch_3
    const v6, 0x7f0d01ee

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 442
    const v6, 0x7f0d01f3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto/16 :goto_2

    .line 445
    :pswitch_4
    const v6, 0x7f0d01ef

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 446
    const v6, 0x7f0d01f4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto/16 :goto_2

    .line 449
    :pswitch_5
    const v6, 0x7f0d01f0

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    .line 450
    const v6, 0x7f0d01f5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mSidePadding:I

    goto/16 :goto_2

    .line 467
    :cond_2
    return v5

    .line 431
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
