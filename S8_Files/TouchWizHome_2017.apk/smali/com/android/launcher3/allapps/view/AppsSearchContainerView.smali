.class public Lcom/android/launcher3/allapps/view/AppsSearchContainerView;
.super Lcom/android/launcher3/common/base/view/BaseContainerView;
.source "AppsSearchContainerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/common/base/view/LauncherTransitionable;
.implements Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;


# static fields
.field private static final GALAXYAPPS:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final MAX_NUM_MERGES_PHONE:I = 0x2

.field private static final MIN_ROWS_IN_MERGED_SECTION_PHONE:I = 0x3


# instance fields
.field private mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

.field private final mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

.field private mContainerView:Landroid/view/View;

.field private mContent:Landroid/view/View;

.field private final mIconLastTouchPos:Landroid/graphics/Point;

.field private mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mNumAppsPerRow:I

.field private mNumPredictedAppsPerRow:I

.field mRecentAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerViewTopBottomPadding:I

.field private mSearchBarContainerView:Landroid/view/ViewGroup;

.field private mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

.field private mSearchBarView:Landroid/view/View;

.field private mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSearchSubTitle:Landroid/widget/TextView;

.field private mSearchSubTitleBar:Landroid/widget/LinearLayout;

.field private mSearchSubTitleText:Landroid/widget/TextView;

.field mergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

.field thread:Lcom/android/launcher3/appssearch/UpdateCheckThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 159
    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->thread:Lcom/android/launcher3/appssearch/UpdateCheckThread;

    .line 169
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    .line 171
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    move-object v1, p1

    .line 184
    check-cast v1, Lcom/android/launcher3/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 185
    new-instance v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {v1, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 190
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 191
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 193
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getLayoutManager()Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 195
    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecyclerViewTopBottomPadding:I

    .line 197
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/view/AppsSearchContainerView;)Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    return-object v0
.end method

.method private getRecentApp()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    .line 588
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->restoreRecentApps()Ljava/util/Set;

    move-result-object v0

    .line 589
    .local v0, "set":Ljava/util/Set;
    if-eqz v0, :cond_0

    .line 602
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setRecentAppMap(Ljava/util/ArrayList;)V

    .line 605
    :cond_0
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 492
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    .line 493
    .local v3, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 494
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 496
    .local v8, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 533
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x0

    :goto_1
    return v9

    .line 498
    :pswitch_1
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 500
    new-instance v5, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 501
    .local v5, "tmpRect":Landroid/graphics/Rect;
    iget-object v9, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 503
    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 504
    const/4 v9, 0x1

    goto :goto_1

    .line 508
    .end local v5    # "tmpRect":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_3

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 510
    :cond_3
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 511
    const/4 v9, 0x1

    goto :goto_1

    .line 516
    :pswitch_2
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_4

    .line 517
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 518
    .local v6, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    sub-float v1, v9, v10

    .line 519
    .local v1, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float v2, v9, v10

    .line 520
    .local v2, "dy":F
    float-to-double v10, v1

    float-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v0, v10

    .line 521
    .local v0, "distance":F
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_4

    .line 523
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    .line 524
    .local v4, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 525
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 530
    .end local v0    # "distance":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v4    # "launcher":Lcom/android/launcher3/Launcher;
    .end local v6    # "viewConfig":Landroid/view/ViewConfiguration;
    :cond_4
    :pswitch_3
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private restoreRecentApps()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 680
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "recentAppForSearch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private saveRecentApp(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, "recentMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 667
    .local v3, "keySet":Ljava/util/Set;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 668
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 669
    .local v2, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v2, :cond_0

    .line 670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 673
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 674
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "recentAppForSearch"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 675
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 676
    return-void
.end method

.method private startGalaxyAppsSearch(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Lcom/android/launcher3/appssearch/UpdateCheckThread;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/launcher3/appssearch/UpdateCheckThread;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->thread:Lcom/android/launcher3/appssearch/UpdateCheckThread;

    .line 710
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->thread:Lcom/android/launcher3/appssearch/UpdateCheckThread;

    invoke-virtual {v0}, Lcom/android/launcher3/appssearch/UpdateCheckThread;->start()V

    .line 712
    :cond_0
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addApps(Ljava/util/List;)V

    .line 223
    return-void
.end method

.method public clearSearchResult()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 566
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 567
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->onSearchResultsChanged()V

    .line 568
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setSearchText(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 575
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 576
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 577
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showSearchTitle(Z)V

    .line 578
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getRecentAppListSize()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showHistoryTitle(Z)V

    .line 580
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 428
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 430
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 431
    .local v2, "unicodeChar":I
    if-lez v2, :cond_1

    .line 432
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 433
    .local v1, "isKeyNotWhitespace":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 434
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 435
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 434
    invoke-virtual {v3, p0, v4, v5, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 436
    .local v0, "gotKey":Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 437
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->focusSearchField()V

    .line 442
    .end local v0    # "gotKey":Z
    .end local v1    # "isKeyNotWhitespace":Z
    .end local v2    # "unicodeChar":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/BaseContainerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 432
    .restart local v2    # "unicodeChar":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContainerView:Landroid/view/View;

    return-object v0
.end method

.method public getRecentAppListSize()I
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchBarContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    return-object v0
.end method

.method public getSearchBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarView:Landroid/view/View;

    return-object v0
.end method

.method public newDefaultAppSearchController(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
    .locals 3
    .param p1, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 287
    new-instance v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;Lcom/android/launcher3/allapps/controller/AppsController;)V

    return-object v0
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V

    .line 359
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onFinishInflate()V

    .line 302
    const v3, 0x7f0f003b

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContent:Landroid/view/View;

    .line 306
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$1;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchContainerView;)V

    .line 314
    .local v0, "focusProxyListener":Landroid/view/View$OnFocusChangeListener;
    const v3, 0x7f0f0037

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    .line 315
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 316
    const v3, 0x7f0f003c

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContainerView:Landroid/view/View;

    .line 317
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContainerView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 320
    const v3, 0x7f0f0038

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    .line 321
    const v3, 0x7f0f003a

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    .line 322
    const v3, 0x7f0f0039

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitle:Landroid/widget/TextView;

    .line 325
    const v3, 0x7f0f0044

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    .line 326
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    .line 327
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 328
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 329
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setHasFixedSize(Z)V

    .line 330
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 334
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    new-instance v4, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$2;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$2;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchContainerView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 343
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 346
    .local v1, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isLargeTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    .local v2, "mergeSectionsFully":Z
    :cond_1
    :goto_0
    new-instance v3, Lcom/android/launcher3/allapps/view/FullMergeAlgorithm;

    invoke-direct {v3}, Lcom/android/launcher3/allapps/view/FullMergeAlgorithm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    .line 349
    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    .line 350
    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumPredictedAppsPerRow:I

    .line 354
    return-void

    .line 346
    .end local v2    # "mergeSectionsFully":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onGalaxyAppsSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->clearGalaxyItems()V

    .line 556
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const-string v1, "com.sec.android.app.samsungapps"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppInstalled(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->startGalaxyAppsSearch(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 558
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 480
    if-eqz p3, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->reset()V

    .line 483
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->reset()V

    .line 485
    :cond_0
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 471
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 476
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 366
    .local v0, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setNumAppsPerRow(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;I)V

    .line 367
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setNumAppsPerRow(I)V

    .line 368
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumPredictedAppsPerRow:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setNumAppsPerRow(IILcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;)V

    .line 370
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onMeasure(II)V

    .line 371
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 538
    if-eqz p2, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 540
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setLastSearchQuery(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->onSearchResultsChanged()V

    .line 542
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->clearGalaxyItems()V

    .line 543
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 544
    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showSearchTitle(Z)V

    .line 545
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "found":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    .end local v0    # "found":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showSearchTitle(Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 462
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 422
    return-void
.end method

.method public removeApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->removeApps(Ljava/util/List;)V

    .line 237
    return-void
.end method

.method public removeRecentAppMap(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 5
    .param p1, "apps"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 715
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 716
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getRecentAppListSize()I

    move-result v3

    .line 717
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v2, "newRecentMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v1, 0x0

    .line 719
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 720
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 721
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 719
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 727
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 728
    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setRecentAppMap()V

    .line 731
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "newRecentMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v3    # "size":I
    :cond_2
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->scrollToTop()V

    .line 264
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setApps(Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getRecentApp()V

    .line 216
    :cond_0
    return-void
.end method

.method public setClearRecentAppList()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 616
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setRecentAppMap()V

    .line 617
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showHistoryTitle(Z)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->notifyDataSetChanged()V

    .line 622
    :cond_1
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setPredictedApps(Ljava/util/List;)V

    .line 206
    return-void
.end method

.method public setRecentAppMap()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setRecentAppMap(Ljava/util/ArrayList;)V

    .line 685
    return-void
.end method

.method public setSearchBarController(Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;)V
    .locals 3
    .param p1, "searchController"    # Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    .line 247
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1, v2, p0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    .line 250
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "searchBarView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 252
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 253
    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarView:Landroid/view/View;

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setHasSearchBar()V

    goto :goto_0
.end method

.method public showHistoryTitle(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v3, 0x8

    .line 688
    if-eqz p1, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSearchTitle(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 698
    if-eqz p1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public startAppsSearch()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->focusSearchField()V

    .line 297
    :cond_0
    return-void
.end method

.method public updateAndSaveRecentApps(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 9
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v8, 0x0

    .line 625
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 626
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 627
    .local v5, "size":I
    if-eqz v5, :cond_1

    .line 628
    move v2, v5

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 629
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 630
    .local v3, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v3, :cond_0

    .line 631
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 632
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 634
    :cond_0
    iget v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v2, v6, :cond_3

    .line 635
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 640
    .end local v2    # "i":I
    .end local v3    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 641
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->saveRecentApp(Ljava/util/ArrayList;)V

    .line 663
    .end local v5    # "size":I
    :cond_2
    :goto_1
    return-void

    .line 628
    .restart local v2    # "i":I
    .restart local v3    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v5    # "size":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 643
    .end local v2    # "i":I
    .end local v3    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v5    # "size":I
    :cond_4
    const/4 v4, 0x0

    .line 644
    .local v4, "sPoint":Z
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 645
    .local v1, "count":I
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    if-lez v2, :cond_7

    .line 646
    if-eqz v4, :cond_6

    .line 647
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 648
    .local v0, "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v0, :cond_5

    .line 649
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 645
    .end local v0    # "appInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 653
    :cond_6
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 654
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 655
    const/4 v4, 0x1

    goto :goto_3

    .line 658
    :cond_7
    if-eqz v4, :cond_2

    .line 659
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 660
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->saveRecentApp(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public updateApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    .line 230
    return-void
.end method
