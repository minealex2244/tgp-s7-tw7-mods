.class Lcom/android/launcher3/home/ScreenGridPanel$1;
.super Ljava/lang/Object;
.source "ScreenGridPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/ScreenGridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ScreenGridPanel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ScreenGridPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    .local v2, "buttonName":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 263
    .local v3, "cellXY":[I
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    .line 264
    .local v6, "gridX":I
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v7

    .line 266
    .local v7, "gridY":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # invokes: Lcom/android/launcher3/home/ScreenGridPanel;->getGridInfoIndex(II)I
    invoke-static {v8, v6, v7}, Lcom/android/launcher3/home/ScreenGridPanel;->access$000(Lcom/android/launcher3/home/ScreenGridPanel;II)I

    move-result v5

    .line 267
    .local v5, "gridIndex":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$100(Lcom/android/launcher3/home/ScreenGridPanel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 268
    .local v0, "appsGridX":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$100(Lcom/android/launcher3/home/ScreenGridPanel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    .line 270
    .local v1, "appsGridY":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    invoke-virtual {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080090

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 271
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 270
    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "gridExplainString":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 275
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->isChangeGridState()Z

    move-result v8

    if-nez v8, :cond_0

    .line 276
    const/4 v8, 0x0

    aget v8, v3, v8

    if-ne v8, v6, :cond_1

    const/4 v8, 0x1

    aget v8, v3, v8

    if-ne v8, v7, :cond_1

    .line 277
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 278
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/view/View;

    move-result-object v8

    const v9, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 279
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    iget-object v9, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/home/ScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    .line 292
    :goto_0
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # invokes: Lcom/android/launcher3/home/ScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V
    invoke-static {v8, v2}, Lcom/android/launcher3/home/ScreenGridPanel;->access$800(Lcom/android/launcher3/home/ScreenGridPanel;Ljava/lang/String;)V

    .line 293
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v7, v9}, Lcom/android/launcher3/home/HomeController;->changeGrid(IIZ)V

    .line 295
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v7, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertClickGridButtonLog(IIZ)V

    .line 297
    :cond_0
    return-void

    .line 282
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 283
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 284
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$600(Lcom/android/launcher3/home/ScreenGridPanel;)I

    move-result v8

    if-ne v0, v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$700(Lcom/android/launcher3/home/ScreenGridPanel;)I

    move-result v8

    if-eq v1, v8, :cond_3

    .line 286
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_1
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    iget-object v9, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/launcher3/home/ScreenGridPanel;->access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/home/ScreenGridPanel;->setApplyDescription(Landroid/view/View;Z)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel$1;->this$0:Lcom/android/launcher3/home/ScreenGridPanel;

    # getter for: Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
