.class Lcom/android/settings/DeviceInfoSettings$5;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DeviceInfoSettings;

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 1979
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 1980
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "AboutStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1981
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "status_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1982
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 1983
    :cond_1
    const-string/jumbo v3, "Status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1984
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1985
    :cond_2
    const-string/jumbo v3, "SIMCardStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1986
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "status_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1987
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1988
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings"

    .line 1989
    const-string/jumbo v4, "com.android.settings.Settings$SimStatusActivity"

    .line 1988
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1990
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3, v0}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 1991
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1992
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v3, "IMEIInformation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1993
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "status_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1994
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1995
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings"

    .line 1996
    const-string/jumbo v4, "com.android.settings.Settings$ImeiInformationActivity"

    .line 1995
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1997
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v3, v0}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 1998
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1999
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v3, "LegalInformation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2000
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "container"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2001
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2002
    :cond_5
    const-string/jumbo v3, "DeviceName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2003
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2004
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "device_name"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2005
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2007
    :cond_6
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2008
    :cond_7
    const-string/jumbo v3, "DeviceNameChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2009
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get0(Lcom/android/settings/DeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2010
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get0(Lcom/android/settings/DeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2011
    .end local v1    # "msg":Landroid/os/Message;
    :cond_8
    const-string/jumbo v3, "ModelNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2012
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2013
    :cond_9
    const-string/jumbo v3, "SoftwareInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2014
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "software_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2015
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2016
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2017
    :cond_a
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2018
    :cond_b
    const-string/jumbo v3, "BatteryInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2019
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v4, "battery_info"

    invoke-virtual {v3, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 2020
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2021
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2022
    :cond_c
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v3}, Lcom/android/settings/DeviceInfoSettings;->-get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
