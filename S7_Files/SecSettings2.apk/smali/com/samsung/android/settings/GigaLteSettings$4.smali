.class Lcom/samsung/android/settings/GigaLteSettings$4;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaLteSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/GigaLteSettings;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get3(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_bonding"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->-wrap3(Lcom/samsung/android/settings/GigaLteSettings;Z)V

    .line 308
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaLteSettings;->showProgressDialog()V

    .line 284
    return-void

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaLteSettings;->-set1(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaLteSettings;->-set0(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get7(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaLteSettings;->-set2(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaLteSettings;->-set2(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 302
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 303
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaLteSettings;->-set0(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    .line 304
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get7(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings$4;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->-wrap3(Lcom/samsung/android/settings/GigaLteSettings;Z)V

    goto :goto_0
.end method