.class Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;
.super Ljava/lang/Object;
.source "AppsScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AppsScreenGridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x16

    const/16 v7, 0x15

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 406
    if-eq p2, v7, :cond_0

    if-ne p2, v8, :cond_2

    :cond_0
    move v1, v5

    .line 409
    .local v1, "consume":Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_1

    if-nez v1, :cond_3

    .line 455
    :cond_1
    :goto_1
    return v1

    .end local v1    # "consume":Z
    :cond_2
    move v1, v4

    .line 406
    goto :goto_0

    .line 414
    .restart local v1    # "consume":Z
    :cond_3
    const/4 v2, 0x0

    .line 416
    .local v2, "gridBtnLayout":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 417
    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsScreenGridPanel$4;->this$0:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    # getter for: Lcom/android/launcher3/allapps/AppsScreenGridPanel;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->access$000(Lcom/android/launcher3/allapps/AppsScreenGridPanel;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsScreenGridPanel()Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->getGridBtnLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 420
    :cond_4
    if-eqz v2, :cond_1

    .line 424
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_5

    .line 425
    if-ne p2, v7, :cond_6

    .line 426
    const/16 p2, 0x16

    .line 432
    :cond_5
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 434
    .local v3, "index":I
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 436
    :pswitch_0
    if-eqz v3, :cond_1

    .line 437
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 440
    invoke-virtual {v0, v4}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 427
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "index":I
    :cond_6
    if-ne p2, v8, :cond_5

    .line 428
    const/16 p2, 0x15

    goto :goto_2

    .line 445
    .restart local v3    # "index":I
    :pswitch_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 446
    .restart local v0    # "childView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 448
    invoke-virtual {v0, v4}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 434
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
