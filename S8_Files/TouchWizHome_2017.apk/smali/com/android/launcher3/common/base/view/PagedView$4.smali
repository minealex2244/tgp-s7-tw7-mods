.class Lcom/android/launcher3/common/base/view/PagedView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/PagedView;->animateDragViewToOriginalPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 2212
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView$4;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$4;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    # invokes: Lcom/android/launcher3/common/base/view/PagedView;->onPostReorderingAnimationCompleted()V
    invoke-static {v0}, Lcom/android/launcher3/common/base/view/PagedView;->access$400(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 2216
    return-void
.end method
