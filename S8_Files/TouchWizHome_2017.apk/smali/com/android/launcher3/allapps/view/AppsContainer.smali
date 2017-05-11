.class public Lcom/android/launcher3/allapps/view/AppsContainer;
.super Landroid/widget/FrameLayout;
.source "AppsContainer.java"


# instance fields
.field private mClearAreaFadeInEnd:I

.field private mClearAreaFadeInRange:F

.field private mClearAreaFadeInStart:I

.field private mClearRect:Landroid/graphics/Rect;

.field private mController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mExternalPageIndicator:Landroid/view/View;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPageIndicatorScaleRatio:F

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    .line 59
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mPageIndicatorScaleRatio:F

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearAreaFadeInStart:I

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearAreaFadeInEnd:I

    .line 64
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearAreaFadeInStart:I

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearAreaFadeInEnd:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearAreaFadeInRange:F

    .line 65
    return-void
.end method


# virtual methods
.method public bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 102
    instance-of v0, p1, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lcom/android/launcher3/allapps/controller/AppsController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 105
    :cond_0
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 187
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->canMoveTray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onInterceptTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 71
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPageIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "pageIndicator":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    .line 82
    .end local v0    # "pageIndicator":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->canMoveTray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 5
    .param p1, "alpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 94
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 95
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x0

    sub-float v2, v4, p1

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mPageIndicatorScaleRatio:F

    mul-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 97
    .local v0, "indicatorAlpha":F
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 99
    .end local v0    # "indicatorAlpha":F
    :cond_0
    return-void
.end method

.method public setDrawBoundaryY(FZZ)V
    .locals 8
    .param p1, "offsetY"    # F
    .param p2, "updateImmediately"    # Z
    .param p3, "disallowVisible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_6

    .line 134
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    float-to-int v0, v4

    .line 135
    .local v0, "boundaryY":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 136
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 137
    if-gtz v0, :cond_5

    .line 144
    .local v2, "visible":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    :cond_1
    if-nez v2, :cond_2

    .line 145
    const/16 v2, 0x8

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsContainer;->setVisibility(I)V

    .line 152
    :cond_3
    if-eqz p2, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->invalidate()V

    .line 155
    :cond_4
    return-void

    .end local v2    # "visible":I
    :cond_5
    move v2, v3

    .line 137
    goto :goto_0

    .line 139
    .end local v0    # "boundaryY":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 140
    .restart local v0    # "boundaryY":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 141
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mClearRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsContainer;->getHeight()I

    move-result v4

    if-lt v0, v4, :cond_7

    .restart local v2    # "visible":I
    :goto_1
    goto :goto_0

    .end local v2    # "visible":I
    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method public setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 0
    .param p1, "trayManager"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 109
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_0
    return-void
.end method
