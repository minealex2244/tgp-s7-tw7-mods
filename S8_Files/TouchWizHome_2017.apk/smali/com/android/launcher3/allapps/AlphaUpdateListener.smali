.class Lcom/android/launcher3/allapps/AlphaUpdateListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# static fields
.field private static final ALPHA_CUTOFF_THRESHOLD:F = 0.01f


# instance fields
.field private mAccessibilityEnabled:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "accessibilityEnabled"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/allapps/AlphaUpdateListener;->mView:Landroid/view/View;

    .line 45
    iput-boolean p2, p0, Lcom/android/launcher3/allapps/AlphaUpdateListener;->mAccessibilityEnabled:Z

    .line 46
    return-void
.end method

.method public static updateVisibility(Landroid/view/View;Z)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "accessibilityEnabled"    # Z

    .prologue
    const v2, 0x3c23d70a    # 0.01f

    .line 51
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 52
    .local v0, "invisibleState":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 51
    .end local v0    # "invisibleState":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 54
    .restart local v0    # "invisibleState":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphaUpdateListener;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/AlphaUpdateListener;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 63
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/allapps/AlphaUpdateListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    return-void
.end method