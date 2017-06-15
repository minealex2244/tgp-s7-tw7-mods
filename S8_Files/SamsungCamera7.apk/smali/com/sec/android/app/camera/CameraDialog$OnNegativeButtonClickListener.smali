.class Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;
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
    name = "OnNegativeButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraDialog;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CameraDialog;)V
    .locals 0

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/CameraDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/CameraDialog;
    .param p2, "x1"    # Lcom/sec/android/app/camera/CameraDialog$1;

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/sec/android/app/camera/CameraDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1258
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->values()[Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v0, v5, v6

    .line 1259
    .local v0, "id":Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    sget-object v5, Lcom/sec/android/app/camera/CameraDialog$12;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 1308
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getNegativeEventIdByDialogIdArray(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 1309
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->dismissCameraDialog()V
    invoke-static {v3}, Lcom/sec/android/app/camera/CameraDialog;->access$1000(Lcom/sec/android/app/camera/CameraDialog;)V

    .line 1310
    return-void

    .line 1261
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1264
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setChangeStorageSettingDialogEnabled(Z)V
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/CameraDialog;->access$1100(Lcom/sec/android/app/camera/CameraDialog;Z)V

    goto :goto_0

    .line 1267
    :sswitch_2
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "double_tab_launch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1269
    .local v2, "quickLaunchValue":I
    if-ne v2, v3, :cond_1

    .line 1270
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "double_tab_launch"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1274
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setQuickLaunchDialogEnabled(Z)V
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/CameraDialog;->access$1200(Lcom/sec/android/app/camera/CameraDialog;Z)V

    .line 1275
    const-string v3, "741"

    const-string v4, "7401"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1272
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "double_tab_launch"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1278
    .end local v2    # "quickLaunchValue":I
    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1281
    :sswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1284
    :sswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto/16 :goto_0

    .line 1288
    :sswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/CameraDialog;->access$1300(Lcom/sec/android/app/camera/CameraDialog;Z)V

    goto/16 :goto_0

    .line 1292
    :sswitch_7
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->getDialogCheckBoxValueForLocationTag()Z
    invoke-static {v6}, Lcom/sec/android/app/camera/CameraDialog;->access$1400(Lcom/sec/android/app/camera/CameraDialog;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setLocationTagDialogEnabled(Z)V
    invoke-static {v5, v3}, Lcom/sec/android/app/camera/CameraDialog;->access$1300(Lcom/sec/android/app/camera/CameraDialog;Z)V

    .line 1293
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    .line 1294
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setNetworkPermissionEnabled(Z)V

    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 1292
    goto :goto_2

    .line 1297
    :sswitch_8
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1300
    :sswitch_9
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1301
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "location_dialog_id"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1302
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1303
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$OnNegativeButtonClickListener;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1259
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x8 -> :sswitch_4
        0xb -> :sswitch_1
        0xe -> :sswitch_0
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x1f -> :sswitch_6
        0x20 -> :sswitch_7
        0x21 -> :sswitch_2
        0x2b -> :sswitch_8
        0x2c -> :sswitch_9
    .end sparse-switch
.end method
