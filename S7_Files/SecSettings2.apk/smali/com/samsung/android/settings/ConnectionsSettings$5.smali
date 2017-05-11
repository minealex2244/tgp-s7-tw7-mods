.class Lcom/samsung/android/settings/ConnectionsSettings$5;
.super Ljava/lang/Object;
.source "ConnectionsSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ConnectionsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ConnectionsSettings;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    .prologue
    .line 708
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "AirplaneMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get1(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 711
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 722
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 724
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "WiFiSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 728
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 729
    :cond_3
    const-string/jumbo v1, "BluetoothSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 730
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get2(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 731
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 732
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 733
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 734
    :cond_5
    const-string/jumbo v1, "DeviceVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 735
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get3(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 736
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 737
    :cond_6
    const-string/jumbo v1, "DataUsage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 738
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "data_usage_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 739
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 740
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 741
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 745
    :cond_8
    const-string/jumbo v1, "MoreConnectionSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 746
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "wireless_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 747
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 748
    :cond_9
    const-string/jumbo v1, "NfcSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 749
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get5(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 750
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 751
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    :cond_a
    const-string/jumbo v1, "MobileHotspotAndTethering"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 755
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get6(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settingslib/RestrictedPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 756
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 757
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 758
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 759
    :cond_c
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 761
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 762
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 763
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/ConnectionsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
