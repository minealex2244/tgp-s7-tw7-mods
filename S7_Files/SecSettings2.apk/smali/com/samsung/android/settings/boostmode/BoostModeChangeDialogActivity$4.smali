.class Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;
.super Ljava/lang/Object;
.source "BoostModeChangeDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 256
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    :cond_1
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1030128

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 259
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 260
    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    const v6, 0x7f0b0a59

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 259
    const v5, 0x7f0b0a4d

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 262
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    .line 263
    return-void

    .line 266
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.sm.BOOSTMODE_CUSTOM_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string/jumbo v2, "boost_mode"

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 270
    const-string/jumbo v2, "fromWhere"

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    .line 255
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method