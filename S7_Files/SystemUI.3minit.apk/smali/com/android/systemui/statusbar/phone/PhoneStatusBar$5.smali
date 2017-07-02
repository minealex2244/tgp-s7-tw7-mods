.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 671
    const-string/jumbo v3, "persist.sys.show_multiuserui"

    .line 672
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120077

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 671
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 673
    .local v1, "isTwoPhoneMode":Z
    const v2, 0x7f0206c7

    .line 674
    .local v2, "modeIconId":I
    if-eqz v1, :cond_a

    .line 675
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 676
    .local v0, "currentId":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "two_call_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set16(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 677
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "two_sms_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set17(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 678
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "two_account"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_2
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set19(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 679
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "two_register"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_3
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set18(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 680
    const-string/jumbo v3, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTwoPhoneSettingObserver: callEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get48(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 681
    const-string/jumbo v7, ", userCreated = "

    .line 680
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 681
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get51(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    .line 680
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 681
    const-string/jumbo v7, ", msgEnabled = "

    .line 680
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 681
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    .line 680
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get51(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 683
    if-nez v0, :cond_6

    .line 684
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get48(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get49(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 685
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateTwoPhoneModeIcon(ZI)V

    .line 691
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateTwoPhoneModeIcon(ZI)V

    .line 670
    .end local v0    # "currentId":I
    :goto_4
    return-void

    .restart local v0    # "currentId":I
    :cond_1
    move v3, v5

    .line 676
    goto/16 :goto_0

    :cond_2
    move v3, v5

    .line 677
    goto/16 :goto_1

    :cond_3
    move v3, v5

    .line 678
    goto/16 :goto_2

    :cond_4
    move v3, v5

    .line 679
    goto :goto_3

    .line 693
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateTwoPhoneModeIcon(ZI)V

    .line 699
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateTwoPhoneModeIcon(ZI)V

    goto :goto_4

    .line 702
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get48(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get49(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get50(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 703
    const v2, 0x7f0206c5

    .line 707
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateTwoPhoneModeIcon(ZI)V

    .line 713
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateTwoPhoneModeIcon(ZI)V

    goto :goto_4

    .line 705
    :cond_8
    const v2, 0x7f0206c6

    goto :goto_5

    .line 716
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateTwoPhoneModeIcon(ZI)V

    .line 722
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateTwoPhoneModeIcon(ZI)V

    goto :goto_4

    .line 725
    .end local v0    # "currentId":I
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateTwoPhoneModeIcon(ZI)V

    .line 731
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateTwoPhoneModeIcon(ZI)V

    goto :goto_4
.end method
