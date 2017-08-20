.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mBackgroundScrim:Landroid/graphics/drawable/Drawable;

.field private mBackgroundScrimAnimator:Landroid/animation/Animator;

.field private mBlockTwiceTouchOnCloseAllButton:Z

.field private mDividerSize:I

.field private mEmptyView:Landroid/widget/TextView;

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mHandler:Landroid/os/Handler;

.field private mHasNavibar:Z

.field private mLastTaskLaunchedWasFreeform:Z

.field private mRecentsButtonsContainer:Landroid/view/ViewGroup;

.field private mRecentsCloseAllButton:Landroid/widget/Button;

.field private mRecentsCloseAllContainer:Landroid/view/ViewGroup;

.field private mRecentsMoreButton:Landroid/widget/ImageButton;

.field private mRecentsToggleButton:Landroid/widget/Button;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mStackActionButton:Landroid/widget/TextView;

.field private mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTextShadowColor:I

.field private mTextShadowDistance:F

.field private mTextShadowSize:F

.field private mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBlockTwiceTouchOnCloseAllButton:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/RecentsView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/RecentsView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mBlockTwiceTouchOnCloseAllButton:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 143
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 147
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    .line 150
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 151
    const/16 v3, 0x33

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 150
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    .line 171
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mHasNavibar:Z

    .line 174
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mHandler:Landroid/os/Handler;

    .line 191
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->setWillNotDraw(Z)V

    .line 193
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 194
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v2, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .line 195
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    .line 196
    new-instance v2, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    .line 197
    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 199
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 221
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04011c

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    .line 222
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowSize:F

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0327

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowDistance:F

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowColor:I

    .line 228
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mHasNavibar:Z

    .line 189
    return-void
.end method

.method private animateBackgroundScrim(FI)V
    .locals 6
    .param p1, "alpha"    # F
    .param p2, "duration"    # I

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 1099
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 1101
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x424c0000    # 51.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 1102
    .local v0, "fromAlpha":I
    mul-float v2, p1, v4

    float-to-int v1, v2

    .line 1103
    .local v1, "toAlpha":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1104
    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 1103
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    .line 1105
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1106
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    if-le v1, v0, :cond_0

    .line 1107
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 1106
    :goto_0
    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1109
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrimAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1098
    return-void

    .line 1108
    :cond_0
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private getStackActionButtonBoundsFromStackLayout()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 1116
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1117
    .local v0, "actionButtonRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1118
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    sub-int v1, v3, v4

    .line 1121
    .local v1, "left":I
    :goto_0
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 1122
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1121
    add-int v2, v3, v4

    .line 1123
    .local v2, "top":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 1124
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1123
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1125
    return-object v0

    .line 1119
    .end local v1    # "left":I
    .end local v2    # "top":I
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1120
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 1119
    sub-int v1, v3, v4

    .restart local v1    # "left":I
    goto :goto_0
.end method

.method private getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 836
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v0

    .line 837
    .local v0, "location":[I
    const/4 v3, 0x0

    aget v1, v0, v3

    .line 838
    .local v1, "viewX":I
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 839
    .local v2, "viewY":I
    new-instance v3, Landroid/graphics/Rect;

    .line 840
    int-to-float v4, v1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 841
    int-to-float v5, v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 839
    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private hideStackActionButton(IZ)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .prologue
    .line 974
    return-void
.end method

.method private hideStackActionButton(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "translate"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 988
    return-void
.end method

.method private showStackActionButton(IZ)V
    .locals 0
    .param p1, "duration"    # I
    .param p2, "translate"    # Z

    .prologue
    .line 939
    return-void
.end method

.method private updateRecentsButtonsLayout()V
    .locals 5

    .prologue
    const v4, 0x7f0b010a

    const v3, 0x7f0b0109

    .line 1247
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    .line 1248
    .local v0, "setting":Lcom/android/systemui/recents/model/RecentsSettingHelper;
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v1, :cond_1

    .line 1249
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->needDarkFont()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1255
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v1, :cond_3

    .line 1256
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->needDarkFont()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1259
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsToggleButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1262
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_4

    .line 1263
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1264
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllButton:Landroid/widget/Button;

    const v2, 0x7f02042a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1246
    :cond_4
    :goto_2
    return-void

    .line 1250
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto :goto_0

    .line 1257
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsToggleButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 1266
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllButton:Landroid/widget/Button;

    const v2, 0x7f020429

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V
    .locals 16
    .param p1, "newDockStates"    # [Lcom/android/systemui/recents/model/TaskStack$DockState;
    .param p2, "isDefaultDockState"    # Z
    .param p3, "overrideAreaAlpha"    # I
    .param p4, "overrideHintAlpha"    # I
    .param p5, "animateAlpha"    # Z
    .param p6, "animateBounds"    # Z

    .prologue
    .line 1019
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1018
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/systemui/recents/misc/Utilities;->arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v14

    .line 1020
    .local v14, "newDockStatesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v15

    .line 1021
    .local v15, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_5

    .line 1022
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 1023
    .local v2, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    iget-object v1, v2, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .line 1024
    .local v1, "viewState":Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    if-eqz p1, :cond_1

    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1030
    const/4 v3, -0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_2

    .line 1031
    move/from16 v11, p3

    .line 1033
    .local v11, "areaAlpha":I
    :goto_1
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_3

    .line 1034
    move/from16 v12, p4

    .line 1036
    .local v12, "hintAlpha":I
    :goto_2
    if-eqz p2, :cond_4

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getPreDockedBounds(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 1040
    .local v4, "bounds":Landroid/graphics/Rect;
    :goto_3
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_0

    .line 1041
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1042
    iget-object v3, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1045
    :cond_0
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v7, 0xfa

    move-object v3, v1

    move v5, v11

    move v6, v12

    move/from16 v9, p5

    move/from16 v10, p6

    .line 1044
    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    .line 1021
    .end local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "areaAlpha":I
    .end local v12    # "hintAlpha":I
    :goto_4
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 1027
    .restart local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :cond_1
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1026
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    goto :goto_4

    .line 1032
    :cond_2
    iget v11, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .restart local v11    # "areaAlpha":I
    goto :goto_1

    .line 1035
    :cond_3
    iget v12, v1, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .restart local v12    # "hintAlpha":I
    goto :goto_2

    .line 1038
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v4

    .line 1039
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/RecentsView;->mDividerSize:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1038
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object v4

    .restart local v4    # "bounds":Landroid/graphics/Rect;
    goto :goto_3

    .line 1017
    .end local v1    # "viewState":Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    .end local v2    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "areaAlpha":I
    .end local v12    # "hintAlpha":I
    :cond_5
    return-void
.end method

.method private updateVisibleFreeformRegions([Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V
    .locals 13
    .param p1, "newDockStates"    # [Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    .param p2, "isDefaultFreeformState"    # Z
    .param p3, "overrideAreaAlpha"    # I
    .param p4, "overrideHintAlpha"    # I
    .param p5, "animateAlpha"    # Z
    .param p6, "animateBounds"    # Z

    .prologue
    .line 1058
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_1

    .line 1063
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1062
    invoke-static {p1, v5}, Lcom/android/systemui/recents/misc/Utilities;->arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v11

    .line 1064
    .local v11, "newFreeformStatesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleFreeformStates()Ljava/util/ArrayList;

    move-result-object v12

    .line 1065
    .local v12, "visFreeformStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v10, v5, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_6

    .line 1066
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 1067
    .local v9, "freeformState":Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    iget-object v1, v9, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    .line 1068
    .local v1, "viewState":Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;
    if-eqz p1, :cond_2

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1074
    const/4 v5, -0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_3

    .line 1075
    move/from16 v3, p3

    .line 1077
    .local v3, "areaAlpha":I
    :goto_1
    const/4 v5, -0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_4

    .line 1078
    move/from16 v4, p4

    .line 1080
    .local v4, "hintAlpha":I
    :goto_2
    if-eqz p2, :cond_5

    .line 1081
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v9, v5, v6}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->getPreFreeformedBounds(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 1083
    .local v2, "bounds":Landroid/graphics/Rect;
    :goto_3
    iget-object v5, v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    if-eq v5, p0, :cond_0

    .line 1084
    iget-object v5, v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1085
    iget-object v5, v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1088
    :cond_0
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v5, 0xfa

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1087
    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    .line 1065
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "areaAlpha":I
    .end local v4    # "hintAlpha":I
    :goto_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1059
    .end local v1    # "viewState":Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;
    .end local v9    # "freeformState":Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    .end local v10    # "i":I
    .end local v11    # "newFreeformStatesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    .end local v12    # "visFreeformStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    :cond_1
    return-void

    .line 1071
    .restart local v1    # "viewState":Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;
    .restart local v9    # "freeformState":Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    .restart local v10    # "i":I
    .restart local v11    # "newFreeformStatesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    .restart local v12    # "visFreeformStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    :cond_2
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1070
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    goto :goto_4

    .line 1076
    :cond_3
    iget v3, v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    .restart local v3    # "areaAlpha":I
    goto :goto_1

    .line 1079
    :cond_4
    iget v4, v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    .restart local v4    # "hintAlpha":I
    goto :goto_2

    .line 1082
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v9, v5, v6}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->getFreeformedBounds(II)Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2    # "bounds":Landroid/graphics/Rect;
    goto :goto_3

    .line 1057
    .end local v1    # "viewState":Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "areaAlpha":I
    .end local v4    # "hintAlpha":I
    .end local v9    # "freeformState":Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    :cond_6
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1341
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1343
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "RecentsView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    const-string/jumbo v2, " awaitingFirstLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1345
    const-string/jumbo v2, " insets="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1346
    const-string/jumbo v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1349
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v2, :cond_0

    .line 1350
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/model/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1352
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v2, :cond_1

    .line 1353
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1339
    :cond_1
    return-void

    .line 1344
    :cond_2
    const-string/jumbo v2, "N"

    goto :goto_0
.end method

.method public getBackgroundScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public hideEmptyView()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->bringToFront()V

    .line 404
    return-void
.end method

.method public isLastTaskLaunchedFreeform()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    return v0
.end method

.method public launchFocusedTask(I)Z
    .locals 8
    .param p1, "logEvent"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 322
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 324
    .local v1, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .line 325
    const/4 v4, -0x1

    move v6, v5

    .line 324
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 329
    iget-object v3, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-static {v0, p1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 331
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 334
    .end local v1    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    return v5
.end method

.method public launchPreviousTask()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 341
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 342
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 345
    .local v1, "taskView":Lcom/android/systemui/recents/views/TaskView;
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZI)V

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 354
    :goto_0
    return v7

    .line 351
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 357
    .end local v1    # "taskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_1
    return v5
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 510
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 415
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 416
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 417
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 414
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 626
    const/16 v0, 0xc8

    .line 631
    .local v0, "taskViewExitToHomeDuration":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 625
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    .line 870
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 871
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v1, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 873
    const/high16 v1, 0x3f800000    # 1.0f

    .line 874
    const/16 v2, 0x12c

    .line 873
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    .prologue
    .line 903
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    .prologue
    .line 584
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-nez v4, :cond_0

    return-void

    .line 588
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 591
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 592
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startTaskInDockedMode(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    new-instance v2, Lcom/android/systemui/recents/views/RecentsView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V

    .line 605
    .local v2, "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v3

    .line 607
    .local v3, "taskRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .line 608
    new-instance v5, Lcom/android/systemui/recents/views/RecentsView$2;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;Landroid/graphics/Rect;)V

    .line 607
    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v0

    .line 616
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;

    move-result-object v4

    .line 617
    const/4 v5, 0x1

    .line 615
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 583
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v2    # "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v3    # "taskRect":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .prologue
    const/4 v0, 0x0

    .line 568
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v1, :cond_1

    .line 569
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 571
    :cond_1
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_2

    .line 572
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 575
    :cond_2
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v1, :cond_3

    .line 576
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    .line 575
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    .line 577
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 578
    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iget v7, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskStack:I

    .line 579
    iget-boolean v8, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    .line 577
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;IZ)V

    .line 566
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    const/4 v2, 0x1

    .line 911
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->isRecentsActivityVisible:Z

    if-nez v0, :cond_0

    .line 912
    return-void

    .line 915
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 917
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_2

    .line 918
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 920
    :cond_2
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v0, :cond_3

    .line 921
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 909
    :cond_3
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    .prologue
    .line 895
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;

    .prologue
    .line 928
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 927
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 879
    const/16 v0, 0x64

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->hideStackActionButton(IZ)V

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mBlockTwiceTouchOnCloseAllButton:Z

    .line 878
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 886
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 887
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 885
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    .prologue
    const/4 v4, 0x0

    .line 851
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 852
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 854
    new-instance v1, Lcom/android/systemui/recents/views/RecentsView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsView$6;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 860
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    .line 866
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 850
    return-void

    .line 862
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 863
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 864
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;->velocity:F

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/view/ViewPropertyAnimator;FFF)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    .prologue
    const/4 v2, 0x0

    .line 845
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 846
    iget v1, p1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;->distanceFromTop:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v0

    sub-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 844
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/InvertColorEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/InvertColorEvent;

    .prologue
    .line 1335
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsLayout()V

    .line 1334
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 1304
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    .line 1306
    :cond_2
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;->focus:Z

    if-eqz v1, :cond_3

    .line 1307
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsToggleButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1308
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsToggleButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 1314
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;->show:Z

    if-eqz v1, :cond_5

    return-void

    .line 1309
    :cond_4
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1310
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_1

    .line 1315
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_6

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;->show:Z

    if-eqz v1, :cond_7

    .line 1318
    :cond_6
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;->show:Z

    if-eqz v1, :cond_8

    .line 1319
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0500ba

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1323
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_2
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1324
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1325
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1327
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;->show:Z

    if-eqz v1, :cond_9

    .line 1328
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1303
    :goto_3
    return-void

    .line 1315
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_7
    return-void

    .line 1321
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0500b2

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_2

    .line 1330
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1272
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 1274
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1275
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1276
    return-void

    .line 1279
    :cond_2
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->focus:Z

    if-eqz v1, :cond_3

    .line 1280
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 1283
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->show:Z

    if-eqz v1, :cond_4

    return-void

    .line 1284
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v7, :cond_5

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->show:Z

    if-eqz v1, :cond_6

    .line 1287
    :cond_5
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->show:Z

    if-eqz v1, :cond_7

    .line 1288
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0500bb

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1292
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1293
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1294
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1296
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->show:Z

    if-eqz v1, :cond_8

    .line 1297
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1271
    :goto_1
    return-void

    .line 1284
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_6
    return-void

    .line 1290
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0500b3

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 1299
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    .prologue
    .line 669
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_3

    .line 670
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_1

    .line 671
    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v7, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 672
    .local v7, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    const/4 v0, 0x0

    aput-object v7, v1, v0

    .line 673
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 674
    const/4 v6, 0x1

    move-object v0, p0

    .line 672
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 675
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 676
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 675
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions([Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    .line 709
    .end local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 667
    :cond_0
    return-void

    .line 677
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eqz v0, :cond_2

    .line 678
    iget-object v8, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v8, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 679
    .local v8, "freeformState":Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    const/4 v0, 0x0

    aput-object v8, v1, v0

    .line 680
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 681
    const/4 v6, 0x1

    move-object v0, p0

    .line 679
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions([Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    .line 682
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 683
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 682
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    goto :goto_0

    .line 685
    .end local v8    # "freeformState":Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 686
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 687
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .line 686
    const/4 v2, 0x1

    .line 688
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 685
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getFreeformStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    move-result-object v1

    .line 690
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    .line 691
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    .line 690
    const/4 v2, 0x1

    .line 692
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 689
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions([Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    goto :goto_0

    .line 696
    :cond_3
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_4

    .line 702
    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v7, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 703
    .restart local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    const/4 v0, 0x0

    aput-object v7, v1, v0

    .line 704
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 705
    const/4 v6, 0x1

    move-object v0, p0

    .line 703
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    goto/16 :goto_0

    .line 697
    .end local v7    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 698
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 699
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    .line 698
    const/4 v2, 0x1

    .line 700
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 697
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    goto/16 :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v4, v3

    move v5, v2

    .line 819
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    move-object v0, p0

    move v4, v3

    move v5, v2

    .line 822
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions([Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    .line 826
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_1

    .line 827
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 829
    :cond_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v0, :cond_2

    .line 830
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 817
    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 21
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    .line 723
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v4, :cond_3

    .line 725
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v15, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 728
    .local v15, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 729
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    .line 728
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 733
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 736
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v18

    .line 737
    .local v18, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v5, v15, Lcom/android/systemui/recents/model/TaskStack$DockState;->createMode:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startTaskInDockedMode(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 739
    new-instance v19, Lcom/android/systemui/recents/views/RecentsView$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    .line 750
    .local v19, "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v20

    .line 752
    .local v20, "taskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .line 753
    new-instance v5, Lcom/android/systemui/recents/views/RecentsView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v5, v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;Landroid/graphics/Rect;)V

    .line 752
    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v17

    .line 761
    .local v17, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsView;->mTransitionHelper:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;

    move-result-object v4

    .line 762
    const/4 v5, 0x1

    .line 760
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 764
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    .line 767
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 766
    const/16 v6, 0x10e

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 808
    .end local v15    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v17    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v18    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v19    # "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v20    # "taskRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 810
    const/high16 v5, 0x3f800000    # 1.0f

    .line 809
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 811
    const-wide/16 v8, 0x86

    .line 809
    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 812
    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 809
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 722
    :cond_1
    return-void

    .line 769
    .restart local v15    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .restart local v18    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 770
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 769
    invoke-direct {v5, v6, v8, v9}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;-><init>(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 773
    .end local v15    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v18    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_3
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_4

    .line 774
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 773
    if-eqz v4, :cond_4

    .line 776
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 779
    .local v16, "freeformState":Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    .line 780
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    .line 779
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions([Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    .line 782
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/recents/views/RecentsView;->getTaskRect(Lcom/android/systemui/recents/views/TaskView;)Landroid/graphics/Rect;

    move-result-object v7

    .line 783
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 784
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 783
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v11, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 791
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v16    # "freeformState":Lcom/android/systemui/recents/model/TaskStack$FreeformState;
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 792
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v8, p0

    .line 791
    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 794
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 795
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v8, p0

    .line 794
    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions([Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    .line 798
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v4, :cond_6

    .line 799
    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 801
    :cond_6
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v4, :cond_0

    .line 802
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 635
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    .line 636
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaAlpha:I

    .line 637
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->hintTextAlpha:I

    move-object v0, p0

    move v5, v2

    .line 635
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleDockRegions([Lcom/android/systemui/recents/model/TaskStack$DockState;ZIIZZ)V

    .line 642
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getFreeformStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    move-result-object v1

    .line 643
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    .line 644
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    move-object v0, p0

    move v5, v2

    .line 642
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->updateVisibleFreeformRegions([Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mStackActionButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 651
    const/4 v1, 0x0

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 652
    const-wide/16 v2, 0x64

    .line 650
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 653
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 658
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_2

    .line 659
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v6}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 661
    :cond_2
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v0, :cond_3

    .line 662
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v6}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 634
    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 423
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 424
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 525
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 527
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v1

    .line 528
    .local v1, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 529
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v3, v3, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->draw(Landroid/graphics/Canvas;)V

    .line 528
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 532
    :cond_0
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_1

    .line 533
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleFreeformStates()Ljava/util/ArrayList;

    move-result-object v2

    .line 534
    .local v2, "visFreeformStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 535
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v3, v3, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->draw(Landroid/graphics/Canvas;)V

    .line 534
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 524
    .end local v2    # "visFreeformStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 466
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 467
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, p2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, p3

    invoke-virtual {v7, p2, p3, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->layout(IIII)V

    .line 471
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 472
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v5, v7, v8

    .line 473
    .local v5, "leftRightInsets":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v6, v7, v8

    .line 474
    .local v6, "topBottomInsets":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 475
    .local v3, "childWidth":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 476
    .local v0, "childHeight":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, p2

    .line 477
    sub-int v8, p4, p2

    sub-int/2addr v8, v5

    sub-int/2addr v8, v3

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 476
    add-int v1, v7, v8

    .line 478
    .local v1, "childLeft":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p3

    .line 479
    sub-int v8, p5, p3

    sub-int/2addr v8, v6

    sub-int/2addr v8, v0

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 478
    add-int v2, v7, v8

    .line 480
    .local v2, "childTop":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v7, v1, v2, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 491
    .end local v0    # "childHeight":I
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v3    # "childWidth":I
    .end local v5    # "leftRightInsets":I
    .end local v6    # "topBottomInsets":I
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    if-eqz v7, :cond_2

    .line 492
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 496
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v4

    .line 497
    .local v4, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v7, v4, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    if-eqz v7, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 465
    .end local v4    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_2
    :goto_0
    return-void

    .line 500
    .restart local v4    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v3, 0x8

    const/high16 v4, -0x80000000

    .line 432
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 433
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 435
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 436
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 441
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 442
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 441
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->measureChild(Landroid/view/View;II)V

    .line 453
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 455
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v2, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateCloseAllContainerView()V

    .line 431
    :cond_2
    return-void
.end method

.method public onReload(ZZ)V
    .locals 5
    .param p1, "isResumingFromVisible"    # Z
    .param p2, "isTaskStackEmpty"    # Z

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 237
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 239
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-nez v2, :cond_0

    .line 240
    const/4 p1, 0x0

    .line 241
    .local p1, "isResumingFromVisible":Z
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 242
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setSystemInsets(Landroid/graphics/Rect;)V

    .line 243
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 247
    .end local p1    # "isResumingFromVisible":Z
    :cond_0
    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mAwaitingFirstLayout:Z

    .line 248
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mLastTaskLaunchedWasFreeform:Z

    .line 251
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v2, :cond_1

    .line 252
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->hasSamsungMembers:Z

    if-eqz v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 258
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mBlockTwiceTouchOnCloseAllButton:Z

    .line 262
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onReload(Z)V

    .line 264
    if-eqz p1, :cond_4

    .line 266
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->animateBackgroundScrim(FI)V

    .line 235
    :goto_2
    return-void

    .line 247
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 271
    :cond_4
    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v2, :cond_5

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v2, :cond_5

    if-eqz p2, :cond_6

    .line 273
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 275
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mBackgroundScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setRecentsContainerView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "btnContainer"    # Landroid/view/ViewGroup;
    .param p2, "closeAllContainer"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f020427

    const/4 v0, 0x1

    .line 1138
    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    .line 1139
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1140
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    .line 1141
    const v2, 0x7f130318

    .line 1140
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllButton:Landroid/widget/Button;

    .line 1142
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/recents/views/RecentsView$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/RecentsView$9;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/recents/views/RecentsView$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/RecentsView$10;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1181
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    .line 1182
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1183
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    const v2, 0x7f13031b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    .line 1184
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/systemui/recents/views/RecentsView$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/RecentsView$11;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    :cond_2
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1208
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    const v2, 0x7f13031a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsToggleButton:Landroid/widget/Button;

    .line 1212
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    .line 1213
    const-string/jumbo v3, "show_button_background"

    .line 1212
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 1214
    .local v0, "show":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 1215
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 1216
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1218
    :cond_4
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsToggleButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 1219
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsToggleButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1223
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsLayout()V

    .line 1137
    return-void

    .line 1212
    .end local v0    # "show":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showEmptyView(I)V
    .locals 7
    .param p1, "msgResId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 382
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 384
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->bringToFront()V

    .line 387
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    .line 388
    .local v0, "setting":Lcom/android/systemui/recents/model/RecentsSettingHelper;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->needDarkFont()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0109

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowSize:F

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowDistance:F

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mTextShadowColor:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 381
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b010a

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public showMenuIfNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 1131
    const/4 v0, 0x1

    return v0

    .line 1133
    :cond_0
    return v1
.end method

.method public updateCloseAllContainerView()V
    .locals 7

    .prologue
    .line 1227
    iget-boolean v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mHasNavibar:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 1228
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v6

    iget v1, v6, Landroid/content/res/Configuration;->orientation:I

    .line 1229
    .local v1, "orientation":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1230
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 1231
    .local v3, "paddingLeft":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 1234
    .local v5, "paddingTop":I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 1235
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    .line 1236
    .local v4, "paddingRight":I
    :goto_0
    const/4 v2, 0x0

    .line 1241
    .local v2, "paddingBottom":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1242
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsCloseAllContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1226
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "orientation":I
    .end local v2    # "paddingBottom":I
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingRight":I
    .end local v5    # "paddingTop":I
    :cond_0
    return-void

    .line 1235
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "orientation":I
    .restart local v3    # "paddingLeft":I
    .restart local v5    # "paddingTop":I
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v4, v6, Landroid/graphics/Rect;->right:I

    .restart local v4    # "paddingRight":I
    goto :goto_0

    .line 1238
    .end local v4    # "paddingRight":I
    :cond_2
    const/4 v4, 0x0

    .line 1239
    .restart local v4    # "paddingRight":I
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    .restart local v2    # "paddingBottom":I
    goto :goto_1

    .end local v2    # "paddingBottom":I
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    .restart local v2    # "paddingBottom":I
    goto :goto_1
.end method

.method public updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 2
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "setStackViewTasks"    # Z

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 285
    if-eqz p2, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->hideEmptyView()V

    .line 283
    :goto_0
    return-void

    .line 293
    :cond_1
    const v0, 0x7f0f0453

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    .line 543
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleDockStates()Ljava/util/ArrayList;

    move-result-object v2

    .line 544
    .local v2, "visDockStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$DockState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 545
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v4, v4, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    iget-object v0, v4, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 546
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-ne v0, p1, :cond_0

    .line 547
    return v5

    .line 544
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 551
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_3

    .line 552
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mTouchHandler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getVisibleFreeformStates()Ljava/util/ArrayList;

    move-result-object v3

    .line 553
    .local v3, "visFreeformStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 554
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v4, v4, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget-object v0, v4, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 555
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-ne v0, p1, :cond_2

    .line 556
    return v5

    .line 553
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 561
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "visFreeformStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack$FreeformState;>;"
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    return v4
.end method
