.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;
.super Ljava/lang/Object;
.source "LedCoverCallerIDSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    move-object v0, p1

    .line 627
    check-cast v0, Landroid/widget/ImageView;

    .line 628
    .local v0, "edit":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v3

    const v4, 0x7f110440

    if-ne v3, v4, :cond_0

    .line 629
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 630
    .local v2, "position":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 631
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.android.app.ledcovergrace"

    .line 632
    const-string/jumbo v4, "com.samsung.android.app.ledcovergrace.creationpattern.LCoverCreatePatternActivity"

    .line 631
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string/jumbo v4, "arrayName"

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string/jumbo v4, "arrayID"

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v3, v3, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->startActivity(Landroid/content/Intent;)V

    .line 626
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "position":I
    :cond_0
    return-void
.end method
