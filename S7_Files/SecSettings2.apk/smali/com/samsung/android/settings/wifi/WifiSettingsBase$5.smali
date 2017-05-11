.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1809
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    .line 1811
    .local v6, "stateId":Ljava/lang/String;
    const-string/jumbo v7, "WifiSettingsBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mEmCallback, stateId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const-string/jumbo v7, "WiFiTurnOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1814
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1815
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1816
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1817
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1821
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1808
    :cond_1
    :goto_0
    return-void

    .line 1823
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1825
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1827
    :cond_3
    const-string/jumbo v7, "WiFiTurnOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1828
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1829
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1830
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1831
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1835
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1837
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1839
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1841
    :cond_6
    const-string/jumbo v7, "WiFiScan"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1842
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1843
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startScan()V

    .line 1844
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1845
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "ON"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1849
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1851
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "ON"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1853
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1855
    :cond_9
    const-string/jumbo v7, "WiFiSelectScanedAp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1856
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    .line 1857
    .local v5, "param":Ljava/lang/String;
    const-string/jumbo v7, "WifiSettingsBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mEmCallback, param: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    if-eqz v5, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1866
    const/4 v3, 0x0

    .line 1867
    .local v3, "isFound":Z
    const/4 v4, -0x1

    .line 1869
    .local v4, "networkId":I
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v2

    .line 1870
    .local v2, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accessPoint$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1871
    .local v0, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1872
    const/4 v3, 0x1

    .line 1873
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v4

    .line 1878
    .end local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_b
    if-eqz v3, :cond_c

    const/4 v7, -0x1

    if-ne v4, v7, :cond_e

    .line 1879
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "Name"

    const-string/jumbo v9, "Match"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1881
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1882
    return-void

    .line 1860
    .end local v1    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v2    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v3    # "isFound":Z
    .end local v4    # "networkId":I
    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "Name"

    const-string/jumbo v9, "Exists"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1862
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1863
    return-void

    .line 1885
    .restart local v1    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v2    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .restart local v3    # "isFound":Z
    .restart local v4    # "networkId":I
    :cond_e
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->connect(I)V

    .line 1887
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1888
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1892
    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1893
    .end local v1    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v2    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v3    # "isFound":Z
    .end local v4    # "networkId":I
    .end local v5    # "param":Ljava/lang/String;
    :cond_10
    const-string/jumbo v7, "WiFiRemoveConnectAp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1894
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1895
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    .line 1896
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1897
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1901
    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1903
    :cond_12
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1905
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1907
    :cond_13
    const-string/jumbo v7, "WiFiSelectConnectedAp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1908
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1909
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v2

    .line 1910
    .restart local v2    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "accessPoint$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1911
    .restart local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1912
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1917
    .end local v0    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_15
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1918
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1922
    :cond_16
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1924
    .end local v1    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v2    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    :cond_17
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1926
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1928
    :cond_18
    const-string/jumbo v7, "WiFiAdvanced"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1929
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiAdvancedScreen()V

    .line 1930
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1931
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "ON"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1935
    :cond_19
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1936
    :cond_1a
    const-string/jumbo v7, "WiFiDirectSettings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1937
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pManager;->semIsWifiP2pEnabled()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1940
    :cond_1b
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1941
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MobileHotspot"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1943
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1952
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onP2pMenuPressed()V

    goto/16 :goto_0

    .line 1938
    :cond_1c
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->semEnableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_1

    .line 1944
    :cond_1d
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1945
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MobileHotspot"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiDirectSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1947
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    .line 1949
    :cond_1e
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2
.end method
