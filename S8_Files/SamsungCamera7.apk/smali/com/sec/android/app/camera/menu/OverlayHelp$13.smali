.class Lcom/sec/android/app/camera/menu/OverlayHelp$13;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$200(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$13;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # setter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mInteractionGuideView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1702(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;

    .line 655
    :cond_2
    return-void
.end method
