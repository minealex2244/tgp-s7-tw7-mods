.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1654
    const/4 v2, -0x1

    if-ne p2, v2, :cond_c

    .line 1655
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1656
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setSaveButtonClicked(Z)V

    .line 1657
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set17(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1658
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get25(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 1659
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1754
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1755
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v2, v8, :cond_4

    .line 1756
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap21(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1796
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1797
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get25(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1798
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep2Dialog()V

    .line 1799
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1653
    :cond_2
    :goto_1
    return-void

    .line 1660
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set18(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 1661
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1662
    .local v1, "configDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0d1b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1663
    const v2, 0x7f0b0d1c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1664
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1665
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;)V

    const v3, 0x7f0b0428

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1724
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;)V

    const v3, 0x7f0b10f5

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1731
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1742
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1751
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1752
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1757
    .end local v1    # "configDialog":Landroid/app/AlertDialog$Builder;
    :cond_4
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v2, v8, :cond_5

    .line 1758
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap22(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    goto/16 :goto_0

    .line 1760
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get25(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1764
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-nez v2, :cond_8

    .line 1767
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    .line 1768
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1769
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get25(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    if-ne v2, v9, :cond_b

    .line 1770
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get17(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1784
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueChangedFlag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1785
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1786
    .local v0, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v2, "wifiap_power_mode_alarm_option"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1787
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1788
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTimeoutValueChangedFlag(Z)V

    goto/16 :goto_0

    .line 1764
    .end local v0    # "alarm_intent":Landroid/content/Intent;
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_6

    .line 1765
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveLast2gChannel(I)V

    goto/16 :goto_2

    .line 1778
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_a

    .line 1779
    const-string/jumbo v2, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWifiConfig.hiddenSSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeAllConnectedDevice()V

    .line 1782
    :cond_a
    sput-boolean v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 1783
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap13(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 1791
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1792
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap14(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1803
    :cond_c
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    .line 1804
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_1
.end method
