.class Lcom/sec/android/app/camera/menu/OverlayHelp$10;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->createInteractionGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

.field final synthetic val$guideView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->val$guideView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 476
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 480
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->updatePageIndicator(I)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1500(Lcom/sec/android/app/camera/menu/OverlayHelp;I)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # setter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1402(Lcom/sec/android/app/camera/menu/OverlayHelp;I)I

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mIsLocaleRTL:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1300(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 487
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # setter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$902(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)Z

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->val$guideView:Landroid/view/View;

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0901e1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPagerAdapter:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->refreshAnimation(I)V

    .line 491
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0
.end method
