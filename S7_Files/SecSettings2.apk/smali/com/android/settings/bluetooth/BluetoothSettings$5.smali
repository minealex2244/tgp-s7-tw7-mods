.class Lcom/android/settings/bluetooth/BluetoothSettings$5;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1355
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set2(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 1356
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v9

    .line 1357
    .local v9, "isEnabled":Z
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v8

    .line 1358
    .local v8, "isDiscovering":Z
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const-string/jumbo v0, "BluetoothSettings"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1361
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1556
    :cond_1
    :goto_0
    return-void

    .line 1365
    :cond_2
    const-string/jumbo v0, "BluetoothOn"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1366
    if-nez v9, :cond_3

    .line 1367
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 1369
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Root"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto :goto_0

    .line 1373
    :cond_4
    const-string/jumbo v0, "BluetoothOff"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1374
    if-eqz v9, :cond_5

    .line 1375
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 1377
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Root"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto :goto_0

    .line 1381
    :cond_6
    const-string/jumbo v0, "BluetoothStartScanning"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1382
    if-nez v9, :cond_7

    .line 1383
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    .line 1385
    :cond_7
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto/16 :goto_0

    .line 1387
    :cond_8
    const-string/jumbo v0, "BluetoothStopScanning"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1388
    if-nez v9, :cond_9

    .line 1389
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "On"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1391
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1393
    :cond_9
    if-eqz v8, :cond_a

    .line 1394
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto/16 :goto_0

    .line 1396
    :cond_a
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "BluetoothScanning"

    const-string/jumbo v3, "On"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1398
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1401
    :cond_b
    const-string/jumbo v0, "BluetoothDiscoverableModeOn"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1402
    if-nez v9, :cond_c

    .line 1403
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1404
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1410
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1406
    :cond_c
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1412
    :cond_d
    const-string/jumbo v0, "BluetoothDeviceConnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1413
    if-nez v9, :cond_e

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1415
    :cond_e
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_10

    .line 1416
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1424
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1425
    :cond_f
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1427
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1428
    return-void

    .line 1418
    :cond_10
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1420
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1421
    return-void

    .line 1431
    :cond_11
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    .line 1432
    .local v7, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v7, :cond_14

    .line 1433
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    .line 1434
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "AlreadyPaired"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1437
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1438
    return-void

    .line 1440
    :cond_12
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1441
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "AlreadyConnected"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1444
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1446
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_0

    .line 1449
    :cond_14
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto/16 :goto_0

    .line 1451
    .end local v7    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_15
    const-string/jumbo v0, "BluetoothDeviceDisconnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1452
    if-nez v9, :cond_16

    .line 1453
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1454
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1455
    return-void

    .line 1458
    :cond_16
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_18

    .line 1459
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1467
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1468
    :cond_17
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1470
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1471
    return-void

    .line 1461
    :cond_18
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1463
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1464
    return-void

    .line 1474
    :cond_19
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    .line 1475
    .restart local v7    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v7, :cond_1b

    .line 1476
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1477
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto/16 :goto_0

    .line 1479
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "AlradyConnected"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1482
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1485
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1488
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1490
    .end local v7    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_1c
    const-string/jumbo v0, "BluetoothControlHistory"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1491
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1e

    .line 1492
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1493
    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1494
    const v3, 0x7f0b03d5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1492
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1500
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1501
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "BluetoothControlHistory"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1503
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1496
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1497
    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1498
    const v3, 0x7f0b03d5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1496
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 1504
    :cond_1f
    const-string/jumbo v0, "BluetoothPairedDeviceSetting"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_21

    .line 1506
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1514
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1515
    :cond_20
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Exist"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1517
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1518
    return-void

    .line 1508
    :cond_21
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1510
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1511
    return-void

    .line 1521
    :cond_22
    if-nez v9, :cond_23

    .line 1522
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v3, "On"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1524
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1525
    return-void

    .line 1528
    :cond_23
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    .line 1529
    .restart local v7    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v7, :cond_26

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_26

    .line 1530
    new-instance v2, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 1531
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "device"

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1533
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set3(Z)Z

    .line 1535
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_25

    .line 1536
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1537
    const-class v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1538
    const v3, 0x7f0b11ff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1536
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1544
    :goto_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1545
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "yes"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1548
    :cond_24
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1540
    :cond_25
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1541
    const-class v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1542
    const v3, 0x7f0b11ff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1540
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_3

    .line 1550
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_26
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v3, "Match"

    const-string/jumbo v4, "no"

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1553
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0
.end method
