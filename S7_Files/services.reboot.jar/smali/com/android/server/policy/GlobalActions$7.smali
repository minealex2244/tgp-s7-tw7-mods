.class Lcom/android/server/policy/GlobalActions$7;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 4389
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4392
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBixbyReceiver : onReceive : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    const-string/jumbo v4, "actionType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4394
    .local v3, "which":Ljava/lang/String;
    const-string/jumbo v4, "com.intent.action.BIXBY_GLOBAL_ACTIONS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4395
    const-string/jumbo v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_BIXBY_GLOBAL_ACTIONS receivedwhich = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "actionType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    if-eqz v3, :cond_1

    .line 4397
    const-string/jumbo v4, "poweroff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4398
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    sget v4, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v4, v5, :cond_2

    .line 4399
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "power off 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4390
    :cond_1
    :goto_0
    return-void

    .line 4402
    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    invoke-static {v4, v5}, Lcom/android/server/policy/GlobalActions;->-wrap1(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    .line 4403
    :cond_3
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "power off 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownByBixby()V

    .line 4405
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4406
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4409
    :cond_4
    const-string/jumbo v4, "restart"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4410
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    sget v4, Lcom/android/server/policy/GlobalActions;->sIsSelectedItemTagForBixby:I

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    if-ne v4, v5, :cond_6

    .line 4411
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "restart 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4414
    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mRestartIconResId:I

    invoke-static {v4, v5}, Lcom/android/server/policy/GlobalActions;->-wrap1(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    .line 4415
    :cond_7
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "restart 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootByBixby()V

    .line 4417
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4418
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4421
    :cond_8
    const-string/jumbo v4, "confirmed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4422
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4423
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "confirm 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4425
    :cond_9
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4428
    :cond_a
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "confirm 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4429
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    goto/16 :goto_0

    .line 4431
    :cond_b
    const-string/jumbo v4, "cancel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4432
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4433
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_d

    .line 4434
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4435
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "cancel 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4437
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-set6(Z)Z

    goto/16 :goto_0

    .line 4439
    :cond_c
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "cancel 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4442
    :cond_d
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 4443
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4444
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "cancel 3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4446
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-set7(Z)Z

    goto/16 :goto_0

    .line 4448
    :cond_e
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "cancel 4"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4453
    :cond_f
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "cancel 5"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    goto/16 :goto_0

    .line 4456
    :cond_10
    const-string/jumbo v4, "emergencyOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4457
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v5, v5, Lcom/android/server/policy/GlobalActions;->mEmergencyIconResId:I

    invoke-static {v4, v5}, Lcom/android/server/policy/GlobalActions;->-wrap1(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v4

    if-nez v4, :cond_11

    return-void

    .line 4458
    :cond_11
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "emergencyOn"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4459
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    .line 4460
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4461
    .local v2, "intentOn":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4462
    const-string/jumbo v4, "skipdialog"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4463
    const-string/jumbo v4, "flag"

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4464
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4467
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    .line 4468
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4469
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4471
    .end local v2    # "intentOn":Landroid/content/Intent;
    :cond_12
    const-string/jumbo v4, "emergencyOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4472
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "emergencyOff"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    .line 4474
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4475
    .local v1, "intentOff":Landroid/content/Intent;
    const-string/jumbo v4, "enabled"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4476
    const-string/jumbo v4, "flag"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4477
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4480
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get64(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdownConfirmByBixby(Z)V

    .line 4481
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Lcom/android/server/policy/GlobalActions;->isDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4482
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
