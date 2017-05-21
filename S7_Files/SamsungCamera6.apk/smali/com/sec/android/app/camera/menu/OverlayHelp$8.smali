.class Lcom/sec/android/app/camera/menu/OverlayHelp$8;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mIslastPageReached:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$800(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->setInteractionGuideEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$900(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->isNeedShowHRMSensorCaptureGuide()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$000(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    const/16 v1, 0xaf

    # setter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1102(Lcom/sec/android/app/camera/menu/OverlayHelp;I)I

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->createHRMSensorCaptureGuide()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1200(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->isNeedShowPalmCaptureGuide()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1300(Lcom/sec/android/app/camera/menu/OverlayHelp;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->removeInteractionGuide()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$000(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    const/16 v1, 0xb0

    # setter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCommandId:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1102(Lcom/sec/android/app/camera/menu/OverlayHelp;I)I

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->createPalmCaptureGuide()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->hideHelp(Z)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$400(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mOverlayHelpHideListener:Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$400(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;->onOverlayHelpHide()V

    goto :goto_0

    .line 415
    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1500(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$8;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayHelp;->mCurrentIndex:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1500(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method
