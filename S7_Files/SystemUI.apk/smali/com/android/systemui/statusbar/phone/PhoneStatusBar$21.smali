.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 4748
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4751
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4752
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4754
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 4755
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->getSendingUserId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap4(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4756
    const/4 v1, 0x0

    .line 4757
    .local v1, "flags":I
    const-string/jumbo v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4758
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v4, "recentapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4759
    const/4 v1, 0x2

    .line 4761
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4749
    .end local v1    # "flags":I
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 4763
    :catch_0
    move-exception v2

    .line 4764
    .local v2, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 4767
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :cond_2
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4768
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4769
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4770
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap14(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4771
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V

    goto :goto_0

    .line 4773
    :cond_3
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4774
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 4777
    :cond_4
    const-string/jumbo v4, "com.android.systemui.statusbar.OPERATOR_LOGO_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4778
    const-string/jumbo v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    const-string/jumbo v4, "BOTH"

    sget-object v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4780
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateOperatorLogoVisibility()V

    .line 4785
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateOperatorLogoVisibility()V

    goto :goto_0

    .line 4786
    :cond_5
    const-string/jumbo v4, "HOME"

    sget-object v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4787
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateOperatorLogoVisibility()V

    goto/16 :goto_0

    .line 4792
    :cond_6
    const-string/jumbo v4, "LOCK"

    sget-object v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4793
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateOperatorLogoVisibility()V

    goto/16 :goto_0

    .line 4798
    :cond_7
    const-string/jumbo v4, "com.sec.aecmonitor.ONE_CYCLE_FINISH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4799
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get46(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v4

    if-nez v4, :cond_8

    .line 4800
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 4802
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get24(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;)V

    .line 4812
    const-wide/16 v6, 0x12c

    .line 4802
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
