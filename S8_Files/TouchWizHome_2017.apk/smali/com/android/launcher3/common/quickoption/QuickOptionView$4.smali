.class Lcom/android/launcher3/common/quickoption/QuickOptionView$4;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView;->hideAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$4;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionView;->mHideAnim:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$500(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 290
    return-void
.end method
