.class public Lcom/android/launcher3/folder/view/FolderBgView;
.super Landroid/widget/FrameLayout;
.source "FolderBgView.java"


# instance fields
.field private mHelpContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/view/FolderBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 46
    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    .line 47
    return-void
.end method

.method public onMoveFromFolderBottom()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    .line 81
    return-void
.end method

.method public onMoveFromFolderTop()V
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    .line 77
    return-void
.end method

.method public onMoveInFolder()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LightingEffectManager;->turnOffAllLight()V

    .line 73
    return-void
.end method

.method public setHelpTextContainerHeightAndGravity(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 65
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 69
    return-void
.end method

.method public showHelpForEdit(ZIZ)V
    .locals 4
    .param p1, "toBeShown"    # Z
    .param p2, "animDuration"    # I
    .param p3, "withLighting"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    .local v0, "toAlpha":F
    :goto_0
    if-lez p2, :cond_2

    .line 52
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 57
    :goto_1
    if-eqz p3, :cond_0

    .line 58
    sget-object v1, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    .line 60
    :cond_0
    return-void

    .line 50
    .end local v0    # "toAlpha":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    .restart local v0    # "toAlpha":F
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1
.end method
