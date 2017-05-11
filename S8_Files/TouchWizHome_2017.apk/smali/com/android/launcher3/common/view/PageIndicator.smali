.class public Lcom/android/launcher3/common/view/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x64

.field private static final ANIM_SCALE:F = 0.5f

.field private static final PANEL_ANIMATION_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "PageIndicator"


# instance fields
.field private mActiveMarkerIndex:I

.field private mEnableGroupingSize:I

.field private mExistPlusPage:Z

.field private mExistZeroPage:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMarkerGap:I

.field private mMarkerMargin:I

.field private mMarkerStartOffset:I

.field private mMarkerWidth:I

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/PageIndicatorMarker;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxVisibleSize:I

.field private mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

.field private mWindowRange:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 71
    iput v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    .line 160
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->PageIndicator:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xf

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    .line 163
    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 166
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerGap:I

    .line 167
    const v2, 0x7f090120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerMargin:I

    .line 168
    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerWidth:I

    .line 170
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    aput v4, v2, v4

    .line 171
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v3, 0x1

    aput v4, v2, v3

    .line 172
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 173
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->setImportantForAccessibility(I)V

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/view/PageIndicator;)Lcom/android/launcher3/common/base/view/PagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/view/PageIndicator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/view/PageIndicator;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/view/PageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/view/PageIndicator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/PageIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->showPageNumber(I)V

    return-void
.end method

.method private addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZI)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .param p3, "allowAnimations"    # Z
    .param p4, "lastIndex"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 353
    if-ne p1, v2, :cond_1

    move p1, v2

    .line 356
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v4, p1

    if-ge v3, v4, :cond_2

    .line 386
    :cond_0
    :goto_1
    return-void

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 354
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq p1, v2, :cond_3

    iget-object v2, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/common/view/PageIndicator;->canNotEditMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    :cond_3
    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    if-ge p1, v2, :cond_4

    .line 365
    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    .line 368
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030036

    .line 369
    invoke-virtual {v2, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 371
    .local v1, "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    iget-object v2, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v3, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v4, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 373
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->supportWhiteBg()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 374
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->changeColorForBg(Z)V

    .line 377
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorMarkerClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 378
    .local v0, "listener":Landroid/view/View$OnClickListener;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setClickable(Z)V

    .line 379
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setSoundEffectsEnabled(Z)V

    .line 380
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v3, p1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 383
    if-eqz p4, :cond_6

    if-ne p1, p4, :cond_0

    .line 384
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/launcher3/common/view/PageIndicator;->offsetWindowCenterTo(Z)V

    goto :goto_1
.end method

.method private canNotEditMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "type"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    .prologue
    .line 430
    sget-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq p2, v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq p2, v0, :cond_1

    .line 433
    :cond_0
    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableLayoutTransitions()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 187
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 188
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 190
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 191
    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 179
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 180
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 182
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 183
    return-void
.end method

.method private getAdjustedPageIndex(I)I
    .locals 6
    .param p1, "pageIndex"    # I

    .prologue
    .line 316
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v4, :cond_1

    .line 317
    const/4 v0, 0x0

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getCustomPageCount()I

    move-result v5

    sub-int v3, v4, v5

    .line 321
    .local v3, "normalPages":I
    move v0, p1

    .line 322
    .local v0, "adjustedPageIndex":I
    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    div-int v1, v3, v4

    .line 324
    .local v1, "defaultGroup":I
    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 325
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v4, :cond_2

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 328
    :cond_2
    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    iget v5, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    rem-int v5, v3, v5

    sub-int v2, v4, v5

    .line 329
    .local v2, "defaultGroupNum":I
    mul-int v4, v1, v2

    if-gt v0, v4, :cond_3

    .line 330
    add-int/lit8 v4, v0, -0x1

    div-int/2addr v4, v1

    add-int/lit8 v0, v4, 0x1

    .line 335
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v4, :cond_0

    .line 336
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 332
    :cond_3
    mul-int v4, v1, v2

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v1, 0x1

    div-int/2addr v4, v5

    add-int/2addr v4, v2

    add-int/lit8 v0, v4, 0x1

    goto :goto_1
.end method

.method private getCustomPageCount()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->getCustomPageCount()I

    move-result v0

    return v0
.end method

.method private getPageIndex(I)I
    .locals 7
    .param p1, "pageIndicatorIndex"    # I

    .prologue
    .line 288
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v4, :cond_1

    .line 289
    const/4 v3, 0x0

    .line 312
    :cond_0
    :goto_0
    return v3

    .line 292
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getCustomPageCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 293
    .local v2, "normalPages":I
    move v3, p1

    .line 294
    .local v3, "pageIndex":I
    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    div-int v0, v2, v4

    .line 296
    .local v0, "defaultGroup":I
    if-lez v0, :cond_0

    .line 297
    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    iget v5, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    rem-int v5, v2, v5

    sub-int v1, v4, v5

    .line 298
    .local v1, "defaultGroupNum":I
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v4, :cond_2

    .line 299
    add-int/lit8 v3, v3, 0x1

    .line 301
    :cond_2
    if-gt v3, v1, :cond_3

    .line 302
    add-int/lit8 v4, v3, -0x1

    mul-int/2addr v4, v0

    add-int/lit8 v3, v4, 0x1

    .line 307
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v4, :cond_0

    .line 308
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 304
    :cond_3
    mul-int v4, v0, v1

    add-int/lit8 v5, v0, 0x1

    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    goto :goto_1
.end method

.method private getPageIndicatorMarkerClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 470
    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/view/PageIndicator$1;-><init>(Lcom/android/launcher3/common/view/PageIndicator;)V

    .line 497
    .local v0, "listener":Landroid/view/View$OnClickListener;
    return-object v0
.end method

.method private getPageNumberTopMargin()I
    .locals 6

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 575
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f090122

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 576
    .local v0, "indicatorPopupGap":I
    const v5, 0x7f090123

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 577
    .local v1, "indicatorPopupSize":I
    const v5, 0x7f09013d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 578
    .local v4, "statusbarSize":I
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 580
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->getLocationInWindow([I)V

    .line 581
    const/4 v5, 0x1

    aget v5, v2, v5

    sub-int/2addr v5, v0

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    return v5
.end method

.method private offsetWindowCenterTo(Z)V
    .locals 15
    .param p1, "allowAnimations"    # Z

    .prologue
    .line 208
    iget v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    if-gez v12, :cond_0

    .line 209
    const-string v12, "PageIndicator"

    const-string v13, "ActiveMarkerIndex is invalid"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    const/4 v11, 0x0

    .line 213
    .local v11, "windowStart":I
    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 214
    .local v9, "windowEnd":I
    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    if-ne v12, v11, :cond_1

    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    if-eq v12, v9, :cond_4

    :cond_1
    const/4 v10, 0x1

    .line 217
    .local v10, "windowMoved":Z
    :goto_0
    if-nez p1, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->disableLayoutTransitions()V

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v12

    add-int/lit8 v1, v12, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 224
    .local v3, "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 225
    .local v5, "markerIndex":I
    if-ge v5, v11, :cond_3

    .line 226
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/PageIndicator;->removeView(Landroid/view/View;)V

    .line 222
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 214
    .end local v1    # "i":I
    .end local v3    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    .end local v5    # "markerIndex":I
    .end local v10    # "windowMoved":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 230
    .restart local v1    # "i":I
    .restart local v10    # "windowMoved":Z
    :cond_5
    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerGap:I

    .line 231
    .local v4, "markerGap":I
    iget v6, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerMargin:I

    .line 232
    .local v6, "markerMargin":I
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 233
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v0}, Lcom/android/launcher3/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 234
    iget v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerWidth:I

    iget v13, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerGap:I

    add-int/2addr v12, v13

    iget-object v13, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerMargin:I

    iget-object v14, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 235
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v13, v14

    add-int v7, v12, v13

    .line 236
    .local v7, "maxWidth":I
    iget v12, v0, Landroid/graphics/Point;->x:I

    if-le v7, v12, :cond_6

    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_6

    .line 237
    iget v12, v0, Landroid/graphics/Point;->x:I

    iget-object v13, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    div-int v8, v12, v13

    .line 238
    .local v8, "resizeWidth":I
    iget v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerWidth:I

    sub-int v4, v8, v12

    .line 239
    const/4 v6, 0x0

    .line 243
    .end local v8    # "resizeWidth":I
    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_b

    .line 244
    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 246
    .restart local v3    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    invoke-virtual {v3}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 247
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerWidth:I

    add-int/2addr v12, v4

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 248
    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v1, v12, :cond_9

    .line 249
    const/4 v12, 0x0

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 253
    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    if-gt v11, v1, :cond_8

    if-ge v1, v9, :cond_8

    .line 256
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/PageIndicator;->indexOfChild(Landroid/view/View;)I

    move-result v12

    if-gez v12, :cond_7

    .line 257
    invoke-virtual {p0, v3, v1}, Lcom/android/launcher3/common/view/PageIndicator;->addView(Landroid/view/View;I)V

    .line 259
    :cond_7
    iget v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    if-ne v1, v12, :cond_a

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-eq v12, v13, :cond_a

    .line 260
    invoke-virtual {v3, v10}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->activate(Z)V

    .line 243
    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 251
    :cond_9
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 262
    :cond_a
    invoke-virtual {v3, v10}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_4

    .line 267
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_b
    if-nez p1, :cond_c

    .line 268
    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->enableLayoutTransitions()V

    .line 271
    :cond_c
    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x0

    aput v11, v12, v13

    .line 272
    iget-object v12, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x1

    aput v9, v12, v13

    .line 273
    return-void
.end method

.method private setPagedView(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 2
    .param p1, "pagedView"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    .line 344
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/PagedView;->getSupportCustomPageCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    .line 345
    return-void
.end method

.method private showPageNumber(I)V
    .locals 10
    .param p1, "number"    # I

    .prologue
    const/4 v8, 0x0

    .line 537
    if-ltz p1, :cond_0

    if-nez p1, :cond_1

    iget-boolean v6, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-eqz v6, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-boolean v6, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-nez v6, :cond_2

    .line 542
    add-int/lit8 p1, p1, 0x1

    .line 545
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/view/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030037

    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 547
    .local v1, "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0f00bb

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 551
    .local v5, "tx":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v6, "ar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "fa"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 553
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "pageNum":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    new-instance v4, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 560
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v6, 0x31

    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getPageNumberTopMargin()I

    move-result v7

    invoke-virtual {v4, v6, v8, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 561
    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 562
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 564
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 565
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v6, Lcom/android/launcher3/common/view/PageIndicator$2;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher3/common/view/PageIndicator$2;-><init>(Lcom/android/launcher3/common/view/PageIndicator;Landroid/widget/Toast;)V

    const-wide/16 v8, 0x258

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 555
    .end local v2    # "mHandler":Landroid/os/Handler;
    .end local v3    # "pageNum":Ljava/lang/String;
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "pageNum":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateActiveMarker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->disableLayoutTransitions()V

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 198
    .local v1, "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    if-ne v0, v2, :cond_0

    .line 199
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->activate(Z)V

    .line 196
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_1

    .line 204
    .end local v1    # "marker":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->enableLayoutTransitions()V

    .line 205
    return-void
.end method


# virtual methods
.method public addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZLcom/android/launcher3/common/base/view/PagedView;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .param p3, "allowAnimations"    # Z
    .param p4, "pagedView"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 348
    invoke-direct {p0, p4}, Lcom/android/launcher3/common/view/PageIndicator;->setPagedView(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZI)V

    .line 350
    return-void
.end method

.method public addMarkers(Ljava/util/ArrayList;ZLcom/android/launcher3/common/base/view/PagedView;)V
    .locals 4
    .param p2, "allowAnimations"    # Z
    .param p3, "pagedView"    # Lcom/android/launcher3/common/base/view/PagedView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;",
            ">;Z",
            "Lcom/android/launcher3/common/base/view/PagedView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;>;"
    invoke-direct {p0, p3}, Lcom/android/launcher3/common/view/PageIndicator;->setPagedView(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 391
    const v2, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v1, p2, v3}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZI)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v1

    .line 518
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 519
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 520
    .local v0, "child":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->changeColorForBg(Z)V

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v0    # "child":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_0
    return-void
.end method

.method dumpState(Ljava/lang/String;)V
    .locals 6
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 501
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tmMarkers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 505
    .local v1, "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\twindow: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mWindowRange:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 508
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tchildren: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 509
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 511
    .restart local v1    # "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    .end local v1    # "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tactive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public getMarkerStartOffset()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    return v0
.end method

.method public getMarkers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/PageIndicatorMarker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxVisibleSize()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMaxVisibleSize:I

    return v0
.end method

.method public getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 12
    .param p1, "isShowAnim"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 585
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 586
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [F

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    aput v4, v8, v9

    if-eqz p1, :cond_1

    move v4, v5

    :goto_1
    aput v4, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 588
    .local v1, "pvhShowAlpha":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [F

    if-eqz p1, :cond_2

    move v4, v6

    :goto_2
    aput v4, v8, v9

    if-eqz p1, :cond_3

    move v4, v5

    :goto_3
    aput v4, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 590
    .local v2, "pvhShowScaleX":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [F

    if-eqz p1, :cond_4

    move v4, v6

    :goto_4
    aput v4, v8, v9

    if-eqz p1, :cond_5

    :goto_5
    aput v5, v8, v10

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 592
    .local v3, "pvhShowScaleY":Landroid/animation/PropertyValuesHolder;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 593
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 594
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    aput-object v3, v4, v11

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 597
    new-instance v4, Lcom/android/launcher3/common/view/PageIndicator$3;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/common/view/PageIndicator$3;-><init>(Lcom/android/launcher3/common/view/PageIndicator;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 611
    return-object v0

    .end local v1    # "pvhShowAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhShowScaleX":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "pvhShowScaleY":Landroid/animation/PropertyValuesHolder;
    :cond_0
    move v4, v5

    .line 586
    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v1    # "pvhShowAlpha":Landroid/animation/PropertyValuesHolder;
    :cond_2
    move v4, v5

    .line 588
    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_3

    .restart local v2    # "pvhShowScaleX":Landroid/animation/PropertyValuesHolder;
    :cond_4
    move v4, v5

    .line 590
    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_5
.end method

.method public isGrouping()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    if-eqz v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mPagedView:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->getCustomPageCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 531
    .local v0, "normalPages":I
    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mEnableGroupingSize:I

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    .line 533
    .end local v0    # "normalPages":I
    :cond_0
    return v1
.end method

.method public removeAllMarkers()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->removeAllViews()V

    .line 453
    return-void
.end method

.method public removeMarker(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "allowAnimations"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 440
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistPlusPage:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    sub-int v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 442
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/PageIndicator;->canNotEditMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    :cond_0
    :goto_1
    return-void

    .line 440
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 446
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/view/PageIndicator;->offsetWindowCenterTo(Z)V

    goto :goto_1
.end method

.method public setActiveMarker(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 456
    iget v0, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/view/PageIndicator;->getAdjustedPageIndex(I)I

    move-result p1

    .line 457
    iput p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mActiveMarkerIndex:I

    .line 458
    invoke-direct {p0}, Lcom/android/launcher3/common/view/PageIndicator;->updateActiveMarker()V

    .line 459
    return-void
.end method

.method public setMarkerStartOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 462
    iput p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    .line 463
    return-void
.end method

.method public setPlusPage(Z)V
    .locals 0
    .param p1, "page"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistPlusPage:Z

    .line 281
    return-void
.end method

.method public setZeroPageMarker(Z)V
    .locals 0
    .param p1, "existZeroPage"    # Z

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    .line 427
    return-void
.end method

.method public updateHomeMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    .prologue
    .line 403
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 404
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkerStartOffset:I

    add-int/2addr v6, p1

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/view/PageIndicator;->getAdjustedPageIndex(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 403
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 406
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 407
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 408
    iget-object v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 409
    .local v1, "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    if-ne v0, p1, :cond_1

    .line 410
    iget-object v4, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v5, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v6, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 407
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher3/common/view/PageIndicator;->mExistZeroPage:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 413
    new-instance v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v2, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 415
    .local v2, "markerRes":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    iget-object v4, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v5, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v6, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_1

    .line 416
    .end local v2    # "markerRes":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->getMarkerType()Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    if-ne v4, v5, :cond_0

    .line 417
    new-instance v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->DEFAULT:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v2, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 419
    .restart local v2    # "markerRes":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    iget-object v4, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v5, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v6, v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_1

    .line 423
    .end local v1    # "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    .end local v2    # "markerRes":Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    :cond_3
    return-void
.end method

.method public updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    .prologue
    .line 396
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->getAdjustedPageIndex(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 398
    iget-object v1, p0, Lcom/android/launcher3/common/view/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicatorMarker;

    .line 399
    .local v0, "m":Lcom/android/launcher3/common/view/PageIndicatorMarker;
    iget-object v1, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    iget-object v2, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    iget-object v3, p2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/view/PageIndicatorMarker;->setMarkerDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    .line 400
    return-void
.end method
