.class Lcom/android/systemui/qs/QSDetailClipper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSDetailClipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailClipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailClipper;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailClipper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetailClipper;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper$3;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$3;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->-get2(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$3;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->-get1(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$3;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetailClipper;->-set0(Lcom/android/systemui/qs/QSDetailClipper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 97
    return-void
.end method
