.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 574
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.osp.app.signin"

    .line 576
    const-string/jumbo v3, "com.osp.app.signin.UserValidateCheck"

    .line 575
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string/jumbo v2, "MODE"

    const-string/jumbo v3, "REMOTE_CONTROLS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string/jumbo v2, "RL_MODE"

    const-string/jumbo v3, "UNLOCK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
