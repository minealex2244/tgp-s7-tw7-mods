.class public Lcom/android/systemui/recents/views/RecentsSlidingView;
.super Landroid/view/ViewGroup;
.source "RecentsSlidingView.java"


# static fields
.field public static mCurPage:I

.field public static mLastScrollY:I

.field public static mTargetPage:I


# instance fields
.field mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

.field mAppListViewContainer:Landroid/view/View;

.field mCloseAllButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDecorView:Landroid/view/View;

.field mIsInMultiWindowMode:Z

.field mIsScrollAnimating:Z

.field private mMeasuredHeight:I

.field mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

.field public mScroller:Landroid/widget/Scroller;

.field mStrMoreApps:Ljava/lang/String;

.field mStrRecents:Ljava/lang/String;

.field mToggleButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    .line 77
    return-void
.end method

.method private handleAppListViewAttach(Z)V
    .locals 4
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    const v1, 0x7f040119

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    const v1, 0x7f13031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsAppListView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->bindViews(Landroid/view/View;)V

    .line 118
    :cond_0
    if-eqz p1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->addView(Landroid/view/View;)V

    .line 121
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "add app list view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->removeView(Landroid/view/View;)V

    .line 126
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "remove app list view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleToggleButton(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f02fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrRecents:Ljava/lang/String;

    .line 87
    const v1, 0x7f0f05de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    .line 90
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    .line 82
    return-void
.end method

.method private isRecentsPage(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x0

    .line 396
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onPageChanged(I)V
    .locals 6
    .param p1, "newPage"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onPageChanged(%d)\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v5}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 219
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v5}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v4}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->resetScroll()V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrRecents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    .line 100
    const v0, 0x7f130318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    .line 101
    const v0, 0x7f13031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsSlidingView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsSlidingView$1;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollTo(II)V

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->invalidate()V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    sput v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    .line 253
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    sput v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    .line 255
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 257
    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsSlidingView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 194
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 173
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 172
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    .prologue
    .line 341
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onBusEvent(LaunchTaskEvent) - target=%d\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    packed-switch v0, :pswitch_data_0

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 373
    new-instance v1, Lcom/android/systemui/recents/views/RecentsSlidingView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView$2;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 340
    :goto_0
    return-void

    .line 345
    :pswitch_1
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 348
    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iget-boolean v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    .line 347
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 351
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 352
    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iget-boolean v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    .line 351
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollVerticalFirstPage()V

    goto :goto_0

    .line 360
    :pswitch_2
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 363
    :cond_1
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollVerticalFirstPage()V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 94
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 150
    const-string/jumbo v2, "RecentsSlidingView"

    const-string/jumbo v3, "onLayout(%b, %d, %d, %d, %d)\n"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int v0, v2, v1

    .line 153
    .local v0, "child_top":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, p2, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "child_top":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 141
    const-string/jumbo v1, "RecentsSlidingView"

    const-string/jumbo v2, "onMeasure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 290
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onMultiWindowModeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->reload(Z)V

    .line 289
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 160
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "onSizeChanged(%d, %d -> %d, %d)\n"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    .line 164
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->isRecentsPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetScroll()V

    .line 158
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollTo(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 183
    const-string/jumbo v0, "RecentsSlidingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged() - visibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-nez p2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 190
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 182
    return-void
.end method

.method public reload(Z)V
    .locals 6
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 266
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "reload() - isInMultiWindowMode=%b\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    .line 269
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 276
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleAppListViewAttach(Z)V

    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleToggleButton(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetScroll()V

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->reload()V

    .line 265
    :cond_1
    return-void
.end method

.method public resetScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v1, "resetScroll()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sput v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    .line 301
    sput v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    .line 302
    sput v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    .line 303
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/recents/views/RecentsSlidingView;->scrollTo(II)V

    .line 298
    return-void
.end method

.method public scrollVerticalFirstPage()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    if-eqz v0, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    if-eqz v0, :cond_1

    .line 329
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(I)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    sget v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    sget v3, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    neg-int v4, v3

    const/16 v5, 0x64

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->invalidate()V

    .line 324
    return-void
.end method

.method public toggleScrollVertical()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 308
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsScrollAnimating:Z

    if-eqz v0, :cond_0

    .line 309
    return-void

    .line 312
    :cond_0
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    if-lez v0, :cond_2

    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    neg-int v4, v0

    .line 313
    .local v4, "toScroll":I
    :goto_0
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    sput v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    .line 314
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCurPage:I

    sget v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    if-eq v0, v2, :cond_1

    .line 315
    sget v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mTargetPage:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(I)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mScroller:Landroid/widget/Scroller;

    sget v2, Lcom/android/systemui/recents/views/RecentsSlidingView;->mLastScrollY:I

    const/16 v5, 0x12c

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->invalidate()V

    .line 320
    const-string/jumbo v0, "RecentsSlidingView"

    const-string/jumbo v2, "toggleScrollVertical() - startScroll(%d, %d, %d, %d, %d)\n"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 321
    iget v5, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    iget v5, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v3, v5

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v3, v5

    .line 320
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 312
    .end local v4    # "toScroll":I
    :cond_2
    iget v4, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mMeasuredHeight:I

    .restart local v4    # "toScroll":I
    goto :goto_0

    :cond_3
    move v0, v6

    .line 313
    goto :goto_1
.end method
