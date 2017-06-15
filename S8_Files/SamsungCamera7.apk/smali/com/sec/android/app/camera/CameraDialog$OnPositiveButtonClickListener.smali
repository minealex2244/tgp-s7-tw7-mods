.class Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPositiveButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraDialog;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CameraDialog;)V
    .locals 0

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p2, "x1"    # Lcom/sec/android/app/camera/CameraDialog$1;

    .prologue
    .line 1313
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1316
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    aget-object v3, v9, v10

    .line 1317
    .local v3, "id":Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    sget-object v9, Lcom/sec/android/app/camera/CameraDialog$12;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1517
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getPositiveEventIdByDialogIdArray(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 1518
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v9}, Lcom/sec/android/app/camera/CameraDialog;->access$1000(Lcom/sec/android/app/camera/CameraDialog;)V

    .line 1519
    return-void

    .line 1319
    :pswitch_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1320
    .local v5, "marketIntent":Landroid/content/Intent;
    const-string v9, "samsungapps://CategoryList/0000004068"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1321
    const v9, 0x4000020

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1322
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1324
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9, v5}, Lcom/sec/android/app/camera/CameraDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1325
    :catch_0
    move-exception v1

    .line 1326
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "CameraDialog"

    const-string v10, "SHOOTING_MODE_INVALID_VERSION - Activity is not installed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1332
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "marketIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    .line 1333
    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->isExternalMemoryAvailable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1334
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto :goto_0

    .line 1335
    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v9, 0x0

    .line 1336
    invoke-static {v9}, Lcom/sec/android/app/camera/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1337
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto/16 :goto_0

    .line 1339
    :cond_2
    const-string v9, "782"

    const-string v10, "7821"

    invoke-static {v9, v10}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1344
    :pswitch_3
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    sget-object v10, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/Camera;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 1345
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    .line 1346
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    const/4 v10, 0x0

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setChangeStorageSettingDialogEnabled(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/CameraDialog;->access$1100(Lcom/sec/android/app/camera/CameraDialog;Z)V

    goto/16 :goto_0

    .line 1349
    :pswitch_4
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1352
    :pswitch_5
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 1353
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->onSwitchCameraSelected()Z

    goto/16 :goto_0

    .line 1357
    :pswitch_6
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    goto/16 :goto_0

    .line 1360
    :pswitch_7
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_0

    .line 1363
    :pswitch_8
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.((Camera) getActivity()).getCameraSettings().ACCESSIBILITY_SETTINGS"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v4, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/camera/CameraDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1366
    :catch_1
    move-exception v1

    .line 1367
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "CameraDialog"

    const-string v10, "ACCESSIBILITY_GUIDE - Activity is not installed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1372
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_9
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->resetSetting()V

    goto/16 :goto_0

    .line 1375
    :pswitch_a
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7ea

    invoke-static {v9, v3, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1376
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1377
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-static {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->setLocationRequest()V

    .line 1379
    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    const/4 v10, 0x0

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/CameraDialog;->access$1300(Lcom/sec/android/app/camera/CameraDialog;Z)V

    goto/16 :goto_0

    .line 1382
    :pswitch_b
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7ea

    invoke-static {v9, v3, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1383
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1384
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/Util;->setHighAccuracyLocationMode(Landroid/content/Context;)V

    .line 1386
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    const/4 v10, 0x0

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/CameraDialog;->access$1300(Lcom/sec/android/app/camera/CameraDialog;Z)V

    goto/16 :goto_0

    .line 1389
    :pswitch_c
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7ea

    invoke-static {v9, v3, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1390
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1391
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-static {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->setLocationRequest()V

    .line 1393
    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->getDialogCheckBoxValueForLocationTag()Z
    invoke-static {v9}, Lcom/sec/android/app/camera/CameraDialog;->access$1400(Lcom/sec/android/app/camera/CameraDialog;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V
    invoke-static {v10, v9}, Lcom/sec/android/app/camera/CameraDialog;->access$1300(Lcom/sec/android/app/camera/CameraDialog;Z)V

    .line 1394
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setNetworkPermissionEnabled(Z)V

    goto/16 :goto_0

    .line 1393
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 1397
    :pswitch_d
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7ea

    invoke-static {v9, v3, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1398
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1399
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/Util;->setHighAccuracyLocationMode(Landroid/content/Context;)V

    .line 1401
    :cond_7
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->getDialogCheckBoxValueForLocationTag()Z
    invoke-static {v9}, Lcom/sec/android/app/camera/CameraDialog;->access$1400(Lcom/sec/android/app/camera/CameraDialog;)Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V
    invoke-static {v10, v9}, Lcom/sec/android/app/camera/CameraDialog;->access$1300(Lcom/sec/android/app/camera/CameraDialog;Z)V

    .line 1402
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setNetworkPermissionEnabled(Z)V

    goto/16 :goto_0

    .line 1401
    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    .line 1405
    :pswitch_e
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7ea

    invoke-static {v9, v3, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1406
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1407
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/Util;->setHighAccuracyLocationMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1412
    :pswitch_f
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7ea

    invoke-static {v9, v3, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1413
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setGPS(Z)V

    .line 1414
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->setHighAccuracyLocationMode()V

    goto/16 :goto_0

    .line 1419
    :pswitch_10
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    const/4 v10, 0x0

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/CameraDialog;->access$1300(Lcom/sec/android/app/camera/CameraDialog;Z)V

    goto/16 :goto_0

    .line 1422
    :pswitch_11
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->startContactUsActivity()V

    goto/16 :goto_0

    .line 1425
    :pswitch_12
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog;->mSeparatedShootingModeMessage:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/CameraDialog;->access$1500(Lcom/sec/android/app/camera/CameraDialog;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1426
    .local v6, "message":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1427
    .local v0, "commandId":I
    const/4 v9, 0x1

    aget-object v7, v6, v9

    .line 1429
    .local v7, "shootingModeName":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9, v0, v7}, Lcom/sec/android/app/camera/Camera;->startSeparatedShootingMode(ILjava/lang/String;)V

    .line 1430
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    goto/16 :goto_0

    .line 1433
    .end local v0    # "commandId":I
    .end local v6    # "message":[Ljava/lang/String;
    .end local v7    # "shootingModeName":Ljava/lang/String;
    :pswitch_13
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1434
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v9, "samsungapps://SubCategoryList/0000005082"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1435
    const v9, 0x4000020

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1437
    :try_start_2
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    const/16 v10, 0x7df

    invoke-virtual {v9, v4, v10}, Lcom/sec/android/app/camera/CameraDialog;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1438
    :catch_2
    move-exception v1

    .line 1439
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "CameraDialog"

    const-string v10, "SECURE_LOCK_IN_DOWNLOAD_EFFECT - Activity is not installed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1444
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_14
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1445
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v8

    .line 1446
    .local v8, "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    iget-object v9, v8, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerType(Ljava/lang/String;)I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 1457
    :goto_3
    const v9, 0x4000020

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1459
    :try_start_3
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    const/16 v10, 0x7df

    invoke-virtual {v9, v4, v10}, Lcom/sec/android/app/camera/CameraDialog;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1460
    :catch_3
    move-exception v1

    .line 1461
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "CameraDialog"

    const-string v10, "SECURE_LOCK_IN_DOWNLOAD_STICKER - Activity is not installed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1448
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_15
    const-string v9, "samsungapps://CategoryList/0000005218"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 1452
    :pswitch_16
    const-string v9, "samsungapps://CategoryList/0000005219"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 1466
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "stickerPackage":Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;
    :pswitch_17
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1467
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v9, "samsungapps://CategoryList/0000004068"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1468
    const v9, 0x4000020

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1470
    :try_start_4
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/camera/CameraDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1471
    :catch_4
    move-exception v1

    .line 1472
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "CameraDialog"

    const-string v10, "SECURE_LOCK_IN_DOWNLOAD_SHOOTINGMODE - Activity is not installed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1477
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_18
    new-instance v4, Landroid/content/Intent;

    const-string v9, "samsung.intentfilter.visionintelligence.camera"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1478
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v9, "LAUNCH_MODE"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1479
    const-string v9, "INTELLIGENT_MODE"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1481
    :try_start_5
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/camera/CameraDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1482
    :catch_5
    move-exception v2

    .line 1483
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    const-string v9, "CameraDialog"

    const-string v10, "Activity is not found"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1488
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_19
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "hrm_sensor_capture_unavailable_guide_popup"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1491
    :pswitch_1a
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7ea

    invoke-static {v9, v3, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1492
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1493
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/Util;->setHighAccuracyLocationMode(Landroid/content/Context;)V

    .line 1494
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-static {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->setLocationRequest()V

    goto/16 :goto_0

    .line 1498
    :pswitch_1b
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    const/4 v10, 0x0

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setQuickLaunchDialogEnabled(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/app/camera/CameraDialog;->access$1200(Lcom/sec/android/app/camera/CameraDialog;Z)V

    .line 1499
    const-string v9, "741"

    const-string v10, "7402"

    invoke-static {v9, v10}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1503
    :pswitch_1c
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v10

    invoke-static {v9, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->startApplicationSettingInfo(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 1506
    :pswitch_1d
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7ea

    invoke-static {v9, v3, v10}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1507
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setNetworkPermissionEnabled(Z)V

    .line 1508
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1509
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/Util;->setHighAccuracyLocationMode(Landroid/content/Context;)V

    .line 1510
    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-static {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->setLocationRequest()V

    .line 1511
    invoke-static {}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getInstance()Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    move-result-object v10

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraDialog$OnPositiveButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/Camera;

    invoke-static {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->loadWatermarkText(Landroid/content/Context;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 1317
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_a
        :pswitch_c
        :pswitch_1b
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1c
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch

    .line 1446
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method
