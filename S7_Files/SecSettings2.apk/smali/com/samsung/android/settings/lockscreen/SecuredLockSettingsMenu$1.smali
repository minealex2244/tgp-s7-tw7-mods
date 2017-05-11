.class Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;
.super Ljava/lang/Object;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 958
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    .line 959
    .local v7, "stateId":Ljava/lang/String;
    const-string/jumbo v12, "MakePatternVisibleOn"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 960
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 962
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 965
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 967
    :cond_2
    const-string/jumbo v12, "MakePatternVisibleOff"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 968
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-nez v12, :cond_3

    .line 970
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 972
    :cond_3
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 973
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 975
    :cond_4
    const-string/jumbo v12, "LockAutomatically"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 976
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsListPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 977
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 978
    :cond_5
    const-string/jumbo v12, "LockAutomaticallySet"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 980
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    .line 981
    .local v2, "durationParam":Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 982
    .local v0, "LockAutoVal":J
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1019
    :cond_6
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-nez v12, :cond_b

    .line 1020
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "0"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1021
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 982
    :cond_7
    const-string/jumbo v12, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 984
    :try_start_0
    const-string/jumbo v12, ", "

    const-string/jumbo v13, ""

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 985
    const/16 v12, 0x6d

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 986
    const/16 v12, 0x64

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 987
    .local v8, "timerDay":Ljava/lang/String;
    const/16 v12, 0x64

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x68

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 988
    .local v9, "timerHour":Ljava/lang/String;
    const/16 v12, 0x68

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x6d

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 989
    .local v10, "timerMinute":Ljava/lang/String;
    const/16 v12, 0x6d

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x73

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 991
    .local v11, "timerSecond":Ljava/lang/String;
    const-string/jumbo v12, "0"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string/jumbo v12, "0"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    if-eqz v12, :cond_a

    .line 996
    const/4 v5, 0x0

    .line 997
    .local v5, "min":I
    const/4 v6, 0x0

    .line 998
    .local v6, "sec":I
    if-eqz v10, :cond_8

    .line 1000
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    .line 1005
    :cond_8
    :goto_2
    if-eqz v11, :cond_9

    .line 1007
    :try_start_2
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 1012
    :cond_9
    :goto_3
    mul-int/lit8 v12, v5, 0x3c

    mul-int/lit16 v12, v12, 0x3e8

    mul-int/lit16 v13, v6, 0x3e8

    add-int/2addr v12, v13

    int-to-long v0, v12

    goto/16 :goto_1

    .line 992
    .end local v5    # "min":I
    .end local v6    # "sec":I
    :cond_a
    :try_start_3
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 993
    return-void

    .line 1001
    .restart local v5    # "min":I
    .restart local v6    # "sec":I
    :catch_0
    move-exception v3

    .line 1002
    .local v3, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_2

    .line 1008
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1009
    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_3

    .line 1022
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "min":I
    .end local v6    # "sec":I
    .end local v8    # "timerDay":Ljava/lang/String;
    .end local v9    # "timerHour":Ljava/lang/String;
    .end local v10    # "timerMinute":Ljava/lang/String;
    .end local v11    # "timerSecond":Ljava/lang/String;
    :cond_b
    const-wide/16 v12, 0x1388

    cmp-long v12, v0, v12

    if-nez v12, :cond_c

    .line 1023
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "5000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1024
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1025
    :cond_c
    const-wide/16 v12, 0x3a98

    cmp-long v12, v0, v12

    if-nez v12, :cond_d

    .line 1026
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "15000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1027
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1028
    :cond_d
    const-wide/16 v12, 0x7530

    cmp-long v12, v0, v12

    if-nez v12, :cond_e

    .line 1029
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "30000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1030
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1031
    :cond_e
    const-wide/32 v12, 0xea60

    cmp-long v12, v0, v12

    if-nez v12, :cond_f

    .line 1032
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "60000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1033
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1034
    :cond_f
    const-wide/32 v12, 0x1d4c0

    cmp-long v12, v0, v12

    if-nez v12, :cond_10

    .line 1035
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "120000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1036
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1037
    :cond_10
    const-wide/32 v12, 0x493e0

    cmp-long v12, v0, v12

    if-nez v12, :cond_11

    .line 1038
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "300000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1039
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1040
    :cond_11
    const-wide/32 v12, 0x927c0

    cmp-long v12, v0, v12

    if-nez v12, :cond_12

    .line 1041
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "600000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1042
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1043
    :cond_12
    const-wide/32 v12, 0x1b7740

    cmp-long v12, v0, v12

    if-nez v12, :cond_13

    .line 1044
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v13

    const-string/jumbo v14, "1800000"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1045
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1048
    :cond_13
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1050
    .end local v0    # "LockAutoVal":J
    .end local v2    # "durationParam":Ljava/lang/String;
    :cond_14
    const-string/jumbo v12, "LockInstantlyWithPowerKeyOn"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1051
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1053
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1055
    :cond_15
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1056
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1058
    :cond_16
    const-string/jumbo v12, "LockInstantlyWithPowerKeyOff"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1059
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-nez v12, :cond_17

    .line 1061
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1063
    :cond_17
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1064
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1066
    :cond_18
    const-string/jumbo v12, "AutoFactoryResetOn"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 1067
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 1069
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1071
    :cond_19
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1072
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1074
    :cond_1a
    const-string/jumbo v12, "AutoFactoryResetOff"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 1075
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 1077
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1079
    :cond_1b
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1080
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1082
    :cond_1c
    const-string/jumbo v12, "SmartLock"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1083
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get6(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/Preference;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1084
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1014
    .restart local v0    # "LockAutoVal":J
    .restart local v2    # "durationParam":Ljava/lang/String;
    :catch_2
    move-exception v4

    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_1
.end method
