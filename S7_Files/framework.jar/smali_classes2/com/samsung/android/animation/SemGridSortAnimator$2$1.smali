.class Lcom/samsung/android/animation/SemGridSortAnimator$2$1;
.super Ljava/lang/Object;
.source "SemGridSortAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemGridSortAnimator$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemGridSortAnimator$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemGridSortAnimator$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemGridSortAnimator$2;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemGridSortAnimator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/animation/SemGridSortAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemGridSortAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemGridSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/animation/SemGridSortAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemGridSortAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemGridSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemGridSortAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemGridSortAnimator;->-wrap0(Lcom/samsung/android/animation/SemGridSortAnimator;)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method