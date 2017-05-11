.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 8445
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 46
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 8448
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 8449
    .local v18, "action":Ljava/lang/String;
    const/16 v34, 0x0

    .line 8450
    .local v34, "outDevice":I
    const/16 v29, 0x0

    .line 8451
    .local v29, "inDevice":I
    const/16 v40, 0x0

    .line 8452
    .local v40, "state":I
    const-string/jumbo v2, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8453
    const-string/jumbo v2, "android.intent.extra.DOCK_STATE"

    .line 8454
    const/4 v5, 0x0

    .line 8453
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 8456
    .local v26, "dockState":I
    packed-switch v26, :pswitch_data_0

    .line 8471
    const/16 v23, 0x0

    .line 8474
    .local v23, "config":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    if-nez v26, :cond_0

    .line 8475
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "EXTRA_DOCK_STATE_DESK onSendBecomingNoisyIntent "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v5, 0x800

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap36(Lcom/android/server/audio/AudioService;I)V

    .line 8483
    :cond_0
    const/4 v2, 0x3

    move/from16 v0, v26

    if-eq v0, v2, :cond_2

    const/16 v2, 0x69

    move/from16 v0, v26

    if-eq v0, v2, :cond_2

    .line 8484
    if-nez v26, :cond_1

    .line 8485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/16 v5, 0x69

    if-eq v2, v5, :cond_2

    .line 8486
    :cond_1
    const/4 v2, 0x3

    move/from16 v0, v23

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8490
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v26

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-set9(Lcom/android/server/audio/AudioService;I)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .local v4, "state":I
    move/from16 v3, v34

    .line 8447
    .end local v23    # "config":I
    .end local v26    # "dockState":I
    .end local v34    # "outDevice":I
    .local v3, "outDevice":I
    :goto_1
    return-void

    .line 8458
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v26    # "dockState":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :pswitch_0
    const/16 v23, 0x7

    .line 8459
    .restart local v23    # "config":I
    goto :goto_0

    .line 8461
    .end local v23    # "config":I
    :pswitch_1
    const/16 v23, 0x6

    .line 8462
    .restart local v23    # "config":I
    goto :goto_0

    .line 8464
    .end local v23    # "config":I
    :pswitch_2
    const/16 v23, 0x8

    .line 8465
    .restart local v23    # "config":I
    goto :goto_0

    .line 8467
    .end local v23    # "config":I
    :pswitch_3
    const/16 v23, 0x9

    .line 8468
    .restart local v23    # "config":I
    goto :goto_0

    .line 8491
    .end local v23    # "config":I
    .end local v26    # "dockState":I
    :cond_3
    const-string/jumbo v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8492
    const-string/jumbo v2, "android.bluetooth.profile.extra.STATE"

    .line 8493
    const/4 v5, 0x0

    .line 8492
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8494
    .end local v40    # "state":I
    .restart local v4    # "state":I
    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/bluetooth/BluetoothDevice;

    .line 8495
    .local v21, "btDevice":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bt device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "disconnection intent received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v4}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto :goto_1

    .line 8497
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v21    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_4
    const-string/jumbo v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8498
    const/16 v20, 0x0

    .line 8499
    .local v20, "broadcast":Z
    const/16 v38, -0x1

    .line 8500
    .local v38, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get57(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 8501
    :try_start_0
    const-string/jumbo v2, "android.bluetooth.profile.extra.STATE"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 8503
    .local v22, "btState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get57(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 8504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_5

    .line 8505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    .line 8507
    :cond_5
    :goto_2
    const/16 v20, 0x1

    .line 8509
    :cond_6
    packed-switch v22, :pswitch_data_1

    .line 8531
    :cond_7
    :goto_3
    const/16 v20, 0x0

    :cond_8
    :goto_4
    monitor-exit v5

    .line 8535
    if-eqz v20, :cond_5b

    .line 8536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move/from16 v0, v38

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap19(Lcom/android/server/audio/AudioService;I)V

    .line 8539
    new-instance v33, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8540
    .local v33, "newIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v33

    move/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap56(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8506
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v33    # "newIntent":Landroid/content/Intent;
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_6

    goto :goto_2

    .line 8511
    :pswitch_4
    const/16 v38, 0x1

    .line 8512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_8

    .line 8513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_8

    .line 8514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_8

    .line 8515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x2

    invoke-static {v2, v6}, Lcom/android/server/audio/AudioService;->-set32(Lcom/android/server/audio/AudioService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 8500
    .end local v22    # "btState":I
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .line 8519
    .restart local v22    # "btState":I
    :pswitch_5
    const/16 v38, 0x0

    .line 8520
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/android/server/audio/AudioService;->-set32(Lcom/android/server/audio/AudioService;I)I

    .line 8521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    goto :goto_4

    .line 8524
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_7

    .line 8525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_7

    .line 8526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get56(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_7

    .line 8527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x2

    invoke-static {v2, v6}, Lcom/android/server/audio/AudioService;->-set32(Lcom/android/server/audio/AudioService;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 8543
    .end local v20    # "broadcast":Z
    .end local v22    # "btState":I
    .end local v38    # "scoAudioState":I
    :cond_a
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get45(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8545
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 8547
    :cond_b
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8548
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_c
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 8549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get45(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 8551
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 8553
    :cond_d
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8554
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_e
    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 8555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap26(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8556
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_f
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 8557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get75(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 8560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    .line 8561
    const/16 v3, 0xf

    .line 8562
    const/4 v4, 0x0

    .line 8563
    const/4 v5, 0x0

    .line 8564
    const/4 v6, 0x0

    .line 8565
    const/4 v7, 0x0

    .line 8566
    const/4 v8, 0x0

    .line 8560
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-wrap55(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8568
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set43(Lcom/android/server/audio/AudioService;Z)Z

    .line 8570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 8573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap45(Lcom/android/server/audio/AudioService;Z)V

    .line 8575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v37

    .line 8576
    .local v37, "ringVolume":I
    if-nez v37, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_11

    .line 8577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get68(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v5, 0x2

    aget-object v2, v2, v5

    const-string/jumbo v5, "AudioService"

    const/16 v6, 0xa

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 8581
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    .line 8586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get68(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v7, v5, v6

    .line 8582
    const/16 v3, 0xa

    .line 8583
    const/4 v4, 0x2

    .line 8584
    const/4 v5, 0x0

    .line 8585
    const/4 v6, 0x0

    .line 8586
    const/4 v8, 0x0

    .line 8581
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-wrap55(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap22(Lcom/android/server/audio/AudioService;Z)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8592
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v37    # "ringVolume":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_12
    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 8594
    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v43

    .line 8595
    .local v43, "userId":I
    if-ltz v43, :cond_13

    .line 8597
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v43

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v45

    .line 8598
    .local v45, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v45

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap27(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 8600
    .end local v45    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_13
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    .line 8601
    const-string/jumbo v5, "no_record_audio"

    const/4 v6, 0x1

    .line 8600
    move/from16 v0, v43

    invoke-virtual {v2, v5, v6, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8602
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v43    # "userId":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_14
    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 8604
    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v43

    .line 8605
    .restart local v43    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    .line 8606
    const-string/jumbo v5, "no_record_audio"

    const/4 v6, 0x0

    .line 8605
    move/from16 v0, v43

    invoke-virtual {v2, v5, v6, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8607
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v43    # "userId":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_15
    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 8608
    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8609
    .end local v40    # "state":I
    .restart local v4    # "state":I
    const/16 v2, 0xa

    if-eq v4, v2, :cond_16

    .line 8610
    const/16 v2, 0xd

    if-ne v4, v2, :cond_17

    .line 8611
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->disconnectAllBluetoothProfiles()V

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_17
    move/from16 v3, v34

    .line 8610
    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8615
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_18
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 8616
    const-string/jumbo v2, "dev_shutdown=true"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)I

    move-result v25

    .line 8619
    .local v25, "device":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get68(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    const/4 v5, 0x3

    aget-object v2, v2, v5

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$FineVolumeState;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v2

    if-eqz v2, :cond_19

    .line 8620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8, v5}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_19
    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .line 8619
    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8623
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v25    # "device":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_1a
    const-string/jumbo v2, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 8624
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    .line 8625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v5, 0x2000000

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;I)Z

    move-result v30

    .line 8626
    .local v30, "isConnected":Z
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "### WiFi Display device state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const v5, 0x2008000

    move/from16 v0, v40

    invoke-static {v2, v5, v0}, Lcom/android/server/audio/AudioService;->-wrap8(Lcom/android/server/audio/AudioService;II)I

    .line 8628
    const/4 v2, 0x1

    move/from16 v0, v40

    if-ne v0, v2, :cond_1b

    if-eqz v30, :cond_20

    .line 8641
    :cond_1b
    if-nez v40, :cond_1e

    if-eqz v30, :cond_1e

    .line 8642
    const-string/jumbo v2, "audioParam;ScreenMirroringState=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, ""

    const/high16 v7, 0x2000000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, "0"

    const v7, 0x8000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get44(Lcom/android/server/audio/AudioService;)I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get44(Lcom/android/server/audio/AudioService;)I

    move-result v2

    invoke-static {}, Landroid/media/AudioManager;->semGetVideoCallMode()I

    move-result v5

    if-ne v2, v5, :cond_1d

    .line 8648
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    .line 8649
    const/16 v3, 0xf

    .line 8650
    const/4 v4, 0x0

    .line 8651
    const/4 v5, 0x0

    .line 8652
    const/4 v6, 0x0

    .line 8653
    const/4 v7, 0x0

    .line 8654
    const/4 v8, 0x0

    .line 8648
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-wrap55(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8656
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    .line 8657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audioParam;SplitSound="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v5, v5, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8663
    :cond_1e
    :goto_5
    const/4 v2, 0x1

    move/from16 v0, v40

    if-ne v0, v2, :cond_1f

    if-eqz v30, :cond_21

    .line 8666
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set19(Lcom/android/server/audio/AudioService;Z)Z

    .line 8668
    :goto_6
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSupportDisplayVolumeControl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get42(Lcom/android/server/audio/AudioService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8629
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_20
    const-string/jumbo v2, "count"

    const/16 v5, 0x780

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 8630
    .local v32, "nBufCnt":I
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EXTERNAL_WIFI_CONNECTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wfdBufferCount="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, ""

    const/high16 v7, 0x2000000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v8, ""

    const-string/jumbo v10, ""

    const/high16 v11, 0x2000000

    invoke-direct {v6, v7, v11, v8, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, "0"

    const v7, 0x8000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v8, "0"

    const-string/jumbo v10, "remote-submix"

    const v11, 0x8000

    invoke-direct {v6, v7, v11, v8, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8634
    const-string/jumbo v2, "audioParam;ScreenMirroringState=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 8664
    .end local v32    # "nBufCnt":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "isSupportDisplayVolumeControl"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set19(Lcom/android/server/audio/AudioService;Z)Z

    goto/16 :goto_6

    .line 8672
    .end local v30    # "isConnected":Z
    :cond_22
    const-string/jumbo v2, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 8673
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8674
    .end local v40    # "state":I
    .restart local v4    # "state":I
    const/4 v2, 0x1

    if-ne v4, v2, :cond_23

    .line 8675
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "GCastDevice is connected."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, "0"

    const v7, 0x8000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v8, "0"

    const-string/jumbo v10, "remote-submix"

    const v11, 0x8000

    invoke-direct {v6, v7, v11, v8, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8677
    const-string/jumbo v2, "audioParam;ScreenMirroringState=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8679
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_23
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "GCastDevice is disconnected."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8680
    const-string/jumbo v2, "audioParam;ScreenMirroringState=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 8681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, "0"

    const v7, 0x8000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8685
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_24
    const-string/jumbo v2, "com.sec.android.intent.action.SPLIT_SOUND"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 8686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "enabled"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v2, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .line 8685
    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8689
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_25
    const-string/jumbo v2, "com.samsung.android.app.audio.epinforequest"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 8690
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8696
    .end local v40    # "state":I
    .restart local v4    # "state":I
    const/4 v2, -0x1

    if-ne v4, v2, :cond_26

    .line 8697
    const-string/jumbo v2, "earcare=reset"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8699
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    if-ne v4, v2, :cond_27

    const/4 v2, 0x1

    :goto_7
    invoke-static {v5, v2}, Lcom/android/server/audio/AudioService;->-set16(Lcom/android/server/audio/AudioService;Z)Z

    .line 8700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap21(Lcom/android/server/audio/AudioService;)V

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8699
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_27
    const/4 v2, 0x0

    goto :goto_7

    .line 8705
    .end local v4    # "state":I
    .restart local v40    # "state":I
    :cond_28
    const-string/jumbo v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 8706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    .line 8707
    const/16 v3, 0x69

    .line 8708
    const/4 v4, 0x2

    .line 8709
    const/4 v5, 0x0

    .line 8710
    const/4 v6, 0x0

    .line 8711
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 8706
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->-wrap55(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8715
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_29
    const-string/jumbo v2, "com.sec.tms.audio.server"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 8716
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8717
    .end local v40    # "state":I
    .restart local v4    # "state":I
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8718
    const-string/jumbo v2, "app"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 8719
    .local v19, "app":Ljava/lang/String;
    if-eqz v19, :cond_32

    .line 8720
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8721
    const-string/jumbo v2, "server"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 8722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v5, 0x4000000

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;I)Z

    move-result v30

    .line 8723
    .restart local v30    # "isConnected":Z
    const/4 v2, 0x2

    if-ne v4, v2, :cond_2a

    if-eqz v30, :cond_2a

    .line 8725
    const-string/jumbo v2, ""

    const-string/jumbo v5, ""

    .line 8724
    const/high16 v6, 0x4000000

    .line 8725
    const/4 v7, 0x0

    .line 8724
    invoke-static {v6, v7, v2, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 8726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 8727
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, ""

    const/high16 v7, 0x4000000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8726
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8728
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_2a
    const/4 v2, 0x1

    if-ne v4, v2, :cond_2b

    if-eqz v30, :cond_2c

    :cond_2b
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8730
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_2c
    const-string/jumbo v2, ""

    const-string/jumbo v5, ""

    .line 8729
    const/high16 v6, 0x4000000

    .line 8730
    const/4 v7, 0x1

    .line 8729
    invoke-static {v6, v7, v2, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 8731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 8732
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, ""

    const/high16 v7, 0x4000000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8733
    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v8, ""

    .line 8734
    const-string/jumbo v10, ""

    .line 8733
    const/high16 v11, 0x4000000

    invoke-direct {v6, v7, v11, v8, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 8731
    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8736
    .end local v3    # "outDevice":I
    .end local v30    # "isConnected":Z
    .restart local v34    # "outDevice":I
    :cond_2d
    const-string/jumbo v2, "client"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 8737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v5, -0x7fc00000

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;I)Z

    move-result v30

    .line 8738
    .restart local v30    # "isConnected":Z
    const/4 v2, 0x2

    if-ne v4, v2, :cond_2e

    if-eqz v30, :cond_2e

    .line 8740
    const-string/jumbo v2, ""

    const-string/jumbo v5, ""

    .line 8739
    const/high16 v6, -0x7fc00000

    .line 8740
    const/4 v7, 0x0

    .line 8739
    invoke-static {v6, v7, v2, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 8741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 8742
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, ""

    const/high16 v7, -0x7fc00000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8741
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8743
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_2e
    const/4 v2, 0x1

    if-ne v4, v2, :cond_2f

    if-eqz v30, :cond_30

    :cond_2f
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8745
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_30
    const-string/jumbo v2, ""

    const-string/jumbo v5, ""

    .line 8744
    const/high16 v6, -0x7fc00000

    .line 8745
    const/4 v7, 0x1

    .line 8744
    invoke-static {v6, v7, v2, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 8746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 8747
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, ""

    const/high16 v7, -0x7fc00000

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8748
    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v8, ""

    .line 8749
    const-string/jumbo v10, ""

    .line 8748
    const/high16 v11, -0x7fc00000

    invoke-direct {v6, v7, v11, v8, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 8746
    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8753
    .end local v3    # "outDevice":I
    .end local v30    # "isConnected":Z
    .restart local v34    # "outDevice":I
    :cond_31
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tms evt app wrong : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8756
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_32
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "tms evt app is null "

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8761
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v19    # "app":Ljava/lang/String;
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_33
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 8762
    const-string/jumbo v2, "reason"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 8763
    .local v36, "reason":I
    const/4 v2, 0x3

    move/from16 v0, v36

    if-ne v0, v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    const/16 v5, 0x200

    invoke-virtual {v2, v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 8765
    :cond_34
    const/4 v2, 0x5

    move/from16 v0, v36

    if-ne v0, v2, :cond_5b

    .line 8766
    const-string/jumbo v2, "emergency_mode=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8764
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_35
    const-string/jumbo v2, "emergency_mode=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .line 8763
    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8771
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v36    # "reason":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_36
    const-string/jumbo v2, "com.sec.factory.app.factorytest.FTA_ON"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 8772
    const-string/jumbo v2, "audioParam;factoryteststate=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8774
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_37
    const-string/jumbo v2, "com.sec.factory.app.factorytest.FTA_OFF"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 8775
    const-string/jumbo v2, "audioParam;factoryteststate=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8779
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_38
    const-string/jumbo v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 8780
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8781
    .end local v40    # "state":I
    .restart local v4    # "state":I
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ANLG_DOCK_HEADSET evt state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v5, 0x800

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;I)Z

    move-result v30

    .line 8783
    .restart local v30    # "isConnected":Z
    if-nez v4, :cond_39

    if-eqz v30, :cond_39

    .line 8785
    const-string/jumbo v2, ""

    const-string/jumbo v5, ""

    .line 8784
    const/16 v6, 0x800

    .line 8785
    const/4 v7, 0x0

    .line 8784
    invoke-static {v6, v7, v2, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 8786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 8787
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, ""

    const/16 v7, 0x800

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8786
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8788
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_39
    const/4 v2, 0x1

    if-ne v4, v2, :cond_3a

    if-eqz v30, :cond_3b

    :cond_3a
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8790
    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    :cond_3b
    const-string/jumbo v2, ""

    const-string/jumbo v5, ""

    .line 8789
    const/16 v6, 0x800

    .line 8790
    const/4 v7, 0x1

    .line 8789
    invoke-static {v6, v7, v2, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 8791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 8792
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, ""

    const/16 v7, 0x800

    invoke-static {v5, v7, v6}, Lcom/android/server/audio/AudioService;->-wrap15(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8793
    new-instance v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v8, ""

    .line 8794
    const-string/jumbo v10, ""

    .line 8793
    const/16 v11, 0x800

    invoke-direct {v6, v7, v11, v8, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 8791
    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8797
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v30    # "isConnected":Z
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_3c
    const-string/jumbo v2, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 8798
    const-string/jumbo v2, "state"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 8799
    .end local v40    # "state":I
    .restart local v4    # "state":I
    const-string/jumbo v2, "smartdock"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v39

    .line 8801
    .local v39, "smartdock":Z
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceiver: EXTERNAL_USB_HEADSET_PLUG  state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", smartdock : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8803
    if-eqz v39, :cond_5c

    .line 8804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    .line 8805
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "EXTERNAL_USB_HEADSET_PLUG, get USB Info mExternalUsbInfo fail"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v5, Ljava/lang/String;

    const-string/jumbo v6, "2:44100:44100:1:0:0:48000:16"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set11(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 8808
    :cond_3d
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EXTERNAL_USB_HEADSET_PLUG, mExternalUsbInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8809
    const/16 v3, 0x4000

    .line 8811
    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    const-string/jumbo v7, "AudioService"

    invoke-static/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->-wrap71(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8815
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v39    # "smartdock":Z
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_3e
    const-string/jumbo v2, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 8816
    const-string/jumbo v2, "CONNECTION_MODE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 8817
    .local v24, "connectionMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audioParam;wfdFixedVolume="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8820
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v24    # "connectionMode":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_3f
    const-string/jumbo v2, "android.settings.MONO_AUDIO_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 8822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mono"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set26(Lcom/android/server/audio/AudioService;I)I

    .line 8823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get46(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap66(Lcom/android/server/audio/AudioService;I)V

    .line 8825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get59(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    move-result-object v2

    const-string/jumbo v5, "mono_audio_db"

    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->removeValue(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8828
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_40
    const-string/jumbo v2, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 8829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set29(Lcom/android/server/audio/AudioService;I)I

    .line 8830
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "on receive : mNbQualityMode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get49(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap68(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8834
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_41
    const-string/jumbo v2, "com.android.phone.NOISE_REDUCTION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 8835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;I)I

    .line 8836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get31(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap58(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8840
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_42
    const-string/jumbo v2, "com.android.phone.NATURAL_SOUND"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 8841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set28(Lcom/android/server/audio/AudioService;I)I

    .line 8842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get48(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap67(Lcom/android/server/audio/AudioService;I)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8846
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_43
    const-string/jumbo v2, "android.settings.ALL_SOUND_MUTE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 8848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mute"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set2(Lcom/android/server/audio/AudioService;I)I

    .line 8849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap57(Lcom/android/server/audio/AudioService;)V

    .line 8851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get59(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    move-result-object v2

    const-string/jumbo v5, "all_sound_off"

    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->removeValue(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8854
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_44
    const-string/jumbo v2, "com.android.systemui.statusbar.ANIMATING"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 8855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set39(Lcom/android/server/audio/AudioService;Z)Z

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8856
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_45
    const-string/jumbo v2, "com.android.systemui.statusbar.COLLAPSED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 8857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set39(Lcom/android/server/audio/AudioService;Z)Z

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8859
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_46
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 8861
    const-string/jumbo v2, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 8862
    .local v41, "strState":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v2

    if-nez v2, :cond_47

    .line 8863
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "autorejection on"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8864
    const-string/jumbo v2, "autorejection=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_47
    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .line 8862
    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8869
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v41    # "strState":Ljava/lang/String;
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_48
    const-string/jumbo v2, "com.samsung.flipfolder.OPEN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 8870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "flipOpen"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set17(Lcom/android/server/audio/AudioService;Z)Z

    .line 8871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "folder_open="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8875
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_49
    const-string/jumbo v2, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 8876
    const-string/jumbo v2, "persona_id"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 8877
    .local v9, "lockedPersonaId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v44

    .line 8878
    .local v44, "userIdForCurrentAudioFocus":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->getGainRequestForCurrentAudioFocus()I

    move-result v28

    .line 8880
    .local v28, "gainRequest":I
    const/4 v2, 0x2

    move/from16 v0, v28

    if-eq v0, v2, :cond_4a

    .line 8881
    const/4 v2, 0x3

    move/from16 v0, v28

    if-ne v0, v2, :cond_4b

    .line 8883
    :cond_4a
    return-void

    .line 8882
    :cond_4b
    const/4 v2, 0x4

    move/from16 v0, v28

    if-eq v0, v2, :cond_4a

    .line 8886
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AS.onReceive() persona not active: lockedPersonaId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8887
    const-string/jumbo v6, "; userIdForCurrentAudioFocus="

    .line 8886
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8890
    const/4 v2, -0x1

    if-eq v9, v2, :cond_4c

    move/from16 v0, v44

    if-ne v9, v0, :cond_4c

    .line 8892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    .line 8894
    const/16 v6, 0x6e

    .line 8895
    const/4 v7, 0x0

    .line 8896
    const/4 v8, 0x0

    .line 8899
    const/4 v10, 0x0

    .line 8900
    const/4 v11, 0x0

    .line 8892
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->-wrap55(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_4c
    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .line 8890
    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8906
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v9    # "lockedPersonaId":I
    .end local v28    # "gainRequest":I
    .end local v44    # "userIdForCurrentAudioFocus":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_4d
    const-string/jumbo v2, "com.samsung.intent.action.WB_AMR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 8908
    const-string/jumbo v2, "EXTRA_STATE"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 8909
    .local v27, "extra_state":I
    const/16 v2, 0x8

    move/from16 v0, v27

    if-ne v0, v2, :cond_4e

    .line 8910
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "wb_amr swb"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8911
    const-string/jumbo v2, "wb_amr=swb"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8912
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_4e
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_4f

    .line 8913
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "wb_amr on"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8914
    const-string/jumbo v2, "wb_amr=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8916
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_4f
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "wb_amr off"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8917
    const-string/jumbo v2, "wb_amr=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8920
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v27    # "extra_state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_50
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get7()Z

    move-result v2

    if-eqz v2, :cond_51

    const-string/jumbo v2, "com.samsung.intent.action.SECPHONE_READY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 8922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v5, 0xc

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;I)Z

    move-result v30

    .line 8923
    .restart local v30    # "isConnected":Z
    if-eqz v30, :cond_5b

    .line 8924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioService;->setEarphoneStateForSARTest(Z)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8927
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v30    # "isConnected":Z
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_51
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 8928
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/audio/MediaFocusControl;->unregisterPhoneStateListener(Landroid/content/Context;)V

    .line 8930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/audio/MediaFocusControl;->registerPhoneStateListener(Landroid/content/Context;)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8932
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_52
    const-string/jumbo v2, "sec.app.policy.UPDATE.audio"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 8934
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "Reload effect white list"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap48(Lcom/android/server/audio/AudioService;)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8938
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_53
    const-string/jumbo v2, "com.sec.media.action.AUDIOCORE_LOGGING"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 8940
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v5, "[logging] receive ACTING_AUDIOCORE_LOGGING"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "logging"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 8942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap54(Lcom/android/server/audio/AudioService;)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8946
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_54
    const-string/jumbo v2, "com.samsung.intent.action.SOUND_OFF_TOAST"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 8947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get78(Lcom/android/server/audio/AudioService;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_55

    .line 8948
    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v2

    const v5, 0x103012b

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 8949
    .local v17, "ToastContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const v5, 0x10408e9

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/audio/AudioService;->-set45(Lcom/android/server/audio/AudioService;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8953
    .end local v17    # "ToastContext":Landroid/content/Context;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get78(Lcom/android/server/audio/AudioService;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 8954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get78(Lcom/android/server/audio/AudioService;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8951
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get78(Lcom/android/server/audio/AudioService;)Landroid/widget/Toast;

    move-result-object v2

    const v5, 0x10408e9

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_8

    .line 8958
    :cond_56
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 8959
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v35

    .line 8960
    .local v35, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.UID"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    .line 8961
    .local v42, "uid":I
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") is removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8962
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 8963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get63(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundKitchen;

    move-result-object v2

    move/from16 v0, v42

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->removeItem(I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 8964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v11, 0x75

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->-wrap55(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->showMultisoundToast()V

    .line 8970
    :cond_57
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Landroid/util/SparseIntArray;

    move-result-object v2

    move/from16 v0, v42

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 8972
    const-string/jumbo v2, "com.samsung.android.soundassistant"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 8973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-wrap24(Lcom/android/server/audio/AudioService;)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8968
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get63(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundKitchen;

    move-result-object v2

    const/16 v5, 0x64

    move/from16 v0, v42

    invoke-virtual {v2, v0, v5}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolume(II)V

    goto :goto_9

    .line 8975
    .end local v35    # "pkgName":Ljava/lang/String;
    .end local v42    # "uid":I
    :cond_59
    const-string/jumbo v2, "android.intent.action.Launch_Setting"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 8976
    new-instance v31, Landroid/content/Intent;

    invoke-direct/range {v31 .. v31}, Landroid/content/Intent;-><init>()V

    .line 8977
    .local v31, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$MultiSoundSettingsActivity"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8980
    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .end local v31    # "mIntent":Landroid/content/Intent;
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_5a
    const-string/jumbo v2, "android.intent.action.TurnOff_MultiSound"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 8981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    .line 8982
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 8981
    const/16 v11, 0x75

    const/4 v12, 0x2

    .line 8982
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 8981
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->-wrap55(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .end local v3    # "outDevice":I
    .end local v4    # "state":I
    .restart local v34    # "outDevice":I
    .restart local v40    # "state":I
    :cond_5b
    move/from16 v4, v40

    .end local v40    # "state":I
    .restart local v4    # "state":I
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .end local v3    # "outDevice":I
    .restart local v34    # "outDevice":I
    .restart local v39    # "smartdock":Z
    :cond_5c
    move/from16 v3, v34

    .end local v34    # "outDevice":I
    .restart local v3    # "outDevice":I
    goto/16 :goto_1

    .line 8456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 8509
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
