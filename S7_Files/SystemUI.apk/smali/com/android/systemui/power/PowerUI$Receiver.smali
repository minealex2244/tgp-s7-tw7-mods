.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string/jumbo v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v2, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .local v1, "permissionFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v2, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 346
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 321
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v17

    .line 354
    .local v17, "oldBatteryLevel":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "level"

    const/16 v8, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set2(Lcom/android/systemui/power/PowerUI;I)I

    .line 355
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v19

    .line 356
    .local v19, "oldBatteryStatus":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "status"

    .line 357
    const/4 v8, 0x1

    .line 356
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set5(Lcom/android/systemui/power/PowerUI;I)I

    .line 358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get15(Lcom/android/systemui/power/PowerUI;)I

    move-result v24

    .line 359
    .local v24, "oldPlugType":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "plugged"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set15(Lcom/android/systemui/power/PowerUI;I)I

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)I

    move-result v23

    .line 361
    .local v23, "oldInvalidCharger":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "invalid_charger"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set8(Lcom/android/systemui/power/PowerUI;I)I

    .line 363
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get15(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v29, 0x1

    .line 364
    .local v29, "plugged":Z
    :goto_0
    if-eqz v24, :cond_3

    const/16 v25, 0x1

    .line 366
    .local v25, "oldPlugged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v21

    .line 367
    .local v21, "oldBucket":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v7

    .line 369
    .local v7, "bucket":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v18

    .line 371
    .local v18, "oldBatteryOnline":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "online"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set3(Lcom/android/systemui/power/PowerUI;I)I

    .line 372
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v5, "charge_type"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-static {v6, v5}, Lcom/android/systemui/power/PowerUI;->-set4(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "hv_charger"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set1(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v16

    .line 378
    .local v16, "oldBatteryHealth":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "health"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set0(Lcom/android/systemui/power/PowerUI;I)I

    .line 380
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get7(Lcom/android/systemui/power/PowerUI;)Z

    move-result v22

    .line 381
    .local v22, "oldFullyConnected":Z
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v5, :cond_0

    .line 382
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v5, "misc_event"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_3
    invoke-static {v6, v5}, Lcom/android/systemui/power/PowerUI;->-set7(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 385
    :cond_0
    sget-boolean v5, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 386
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buckets   ....."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get13(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 387
    const-string/jumbo v8, " .. "

    .line 386
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 387
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get14(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    .line 386
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 388
    const-string/jumbo v8, " .. "

    .line 386
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 388
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get14(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 386
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "level          "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status         "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "plugType       "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get15(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalidCharger "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bucket         "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "plugged        "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get20(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v8

    .line 399
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    .line 397
    invoke-interface/range {v5 .. v11}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJII)V

    .line 400
    if-nez v23, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    if-eqz v5, :cond_6

    .line 401
    const-string/jumbo v5, "PowerUI"

    const-string/jumbo v6, "showing invalid charger warning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    .line 403
    return-void

    .line 363
    .end local v7    # "bucket":I
    .end local v16    # "oldBatteryHealth":I
    .end local v18    # "oldBatteryOnline":I
    .end local v21    # "oldBucket":I
    .end local v22    # "oldFullyConnected":Z
    .end local v25    # "oldPlugged":Z
    .end local v29    # "plugged":Z
    :cond_2
    const/16 v29, 0x0

    .restart local v29    # "plugged":Z
    goto/16 :goto_0

    .line 364
    :cond_3
    const/16 v25, 0x0

    .restart local v25    # "oldPlugged":Z
    goto/16 :goto_1

    .line 372
    .restart local v7    # "bucket":I
    .restart local v18    # "oldBatteryOnline":I
    .restart local v21    # "oldBucket":I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 382
    .restart local v16    # "oldBatteryHealth":I
    .restart local v22    # "oldFullyConnected":Z
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 404
    :cond_6
    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    if-nez v5, :cond_d

    .line 405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    .line 411
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get16(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v14

    .line 412
    .local v14, "isPowerSaver":Z
    if-nez v29, :cond_f

    .line 414
    move/from16 v0, v21

    if-lt v7, v0, :cond_8

    .line 412
    if-eqz v25, :cond_f

    .line 415
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_f

    .line 416
    if-gez v7, :cond_f

    .line 418
    move/from16 v0, v21

    if-ne v7, v0, :cond_e

    move/from16 v28, v25

    .line 419
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move/from16 v0, v28

    invoke-interface {v5, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    .line 429
    :cond_9
    :goto_5
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_FULL_BATTERY_CHECK:Z

    if-eqz v5, :cond_a

    .line 430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/systemui/power/PowerUI;->-wrap4(Lcom/android/systemui/power/PowerUI;I)V

    .line 433
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v5, v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap1(Lcom/android/systemui/power/PowerUI;II)V

    .line 436
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->-wrap8(Lcom/android/systemui/power/PowerUI;ZII)V

    .line 438
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Z

    if-eqz v5, :cond_b

    .line 439
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap7(Lcom/android/systemui/power/PowerUI;ZI)V

    .line 442
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v5, v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap2(Lcom/android/systemui/power/PowerUI;ZI)V

    .line 445
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap6(Lcom/android/systemui/power/PowerUI;II)V

    .line 447
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v5, :cond_c

    .line 448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/systemui/power/PowerUI;->-wrap5(Lcom/android/systemui/power/PowerUI;I)V

    .line 350
    .end local v7    # "bucket":I
    .end local v14    # "isPowerSaver":Z
    .end local v16    # "oldBatteryHealth":I
    .end local v17    # "oldBatteryLevel":I
    .end local v18    # "oldBatteryOnline":I
    .end local v19    # "oldBatteryStatus":I
    .end local v21    # "oldBucket":I
    .end local v22    # "oldFullyConnected":Z
    .end local v23    # "oldInvalidCharger":I
    .end local v24    # "oldPlugType":I
    .end local v25    # "oldPlugged":Z
    .end local v29    # "plugged":Z
    :cond_c
    :goto_6
    return-void

    .line 406
    .restart local v7    # "bucket":I
    .restart local v16    # "oldBatteryHealth":I
    .restart local v17    # "oldBatteryLevel":I
    .restart local v18    # "oldBatteryOnline":I
    .restart local v19    # "oldBatteryStatus":I
    .restart local v21    # "oldBucket":I
    .restart local v22    # "oldFullyConnected":Z
    .restart local v23    # "oldInvalidCharger":I
    .restart local v24    # "oldPlugType":I
    .restart local v25    # "oldPlugged":Z
    .restart local v29    # "plugged":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 408
    return-void

    .line 418
    .restart local v14    # "isPowerSaver":Z
    :cond_e
    const/16 v28, 0x1

    .local v28, "playSound":Z
    goto :goto_4

    .line 420
    .end local v28    # "playSound":Z
    :cond_f
    if-nez v29, :cond_10

    .line 421
    move/from16 v0, v21

    if-le v7, v0, :cond_11

    if-lez v7, :cond_11

    .line 422
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto :goto_5

    .line 425
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    move/from16 v0, v17

    if-eq v0, v5, :cond_9

    .line 426
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    goto/16 :goto_5

    .line 449
    .end local v7    # "bucket":I
    .end local v14    # "isPowerSaver":Z
    .end local v16    # "oldBatteryHealth":I
    .end local v17    # "oldBatteryLevel":I
    .end local v18    # "oldBatteryOnline":I
    .end local v19    # "oldBatteryStatus":I
    .end local v21    # "oldBucket":I
    .end local v22    # "oldFullyConnected":Z
    .end local v23    # "oldInvalidCharger":I
    .end local v24    # "oldPlugType":I
    .end local v25    # "oldPlugged":Z
    .end local v29    # "plugged":Z
    :cond_12
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 450
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/android/systemui/power/PowerUI;->-set17(Lcom/android/systemui/power/PowerUI;J)J

    goto :goto_6

    .line 451
    :cond_13
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 452
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v8, -0x1

    invoke-static {v5, v8, v9}, Lcom/android/systemui/power/PowerUI;->-set17(Lcom/android/systemui/power/PowerUI;J)J

    goto :goto_6

    .line 453
    :cond_14
    const-string/jumbo v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->userSwitched()V

    goto/16 :goto_6

    .line 455
    :cond_15
    const-string/jumbo v5, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v20

    .line 458
    .local v20, "oldBatteryWaterConnector":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v5, "misc_event"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    .line 459
    const/4 v8, 0x1

    .line 458
    if-ne v5, v8, :cond_16

    const/4 v5, 0x1

    :goto_7
    invoke-static {v6, v5}, Lcom/android/systemui/power/PowerUI;->-set6(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 461
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SUPPORT_WATER_PROTECTION_POPUP - oldBatteryWaterConnector : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 463
    const-string/jumbo v8, ", mBatteryWaterConnector : "

    .line 461
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 464
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v8

    .line 461
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    move/from16 v0, v20

    if-eq v0, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 466
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWaterProtectionAlertDialog()V

    .line 472
    :goto_8
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v5, :cond_c

    .line 473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get10(Lcom/android/systemui/power/PowerUI;)Z

    move-result v26

    .line 474
    .local v26, "oldPowerSupplyingActivated":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v5, "sec_plug_type"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 475
    const/high16 v8, 0x10000

    .line 474
    and-int/2addr v5, v8

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    :goto_9
    invoke-static {v6, v5}, Lcom/android/systemui/power/PowerUI;->-set10(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 477
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Power supply - oldPowerSupplyingActivated = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 478
    const-string/jumbo v8, " mIsPowerSupplyingActivated = "

    .line 477
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 478
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get10(Lcom/android/systemui/power/PowerUI;)Z

    move-result v8

    .line 477
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get10(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    move/from16 v0, v26

    if-eq v0, v5, :cond_c

    .line 481
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get10(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get14(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v8, 0x0

    aget v6, v6, v8

    if-gt v5, v6, :cond_19

    .line 482
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSupplyingInLowBatteryNotice(I)V

    goto/16 :goto_6

    .line 458
    .end local v26    # "oldPowerSupplyingActivated":Z
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 468
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWaterProtectionAlertDialog()V

    goto/16 :goto_8

    .line 474
    .restart local v26    # "oldPowerSupplyingActivated":Z
    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 484
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissPowerSupplyingInLowBatteryNotice()V

    goto/16 :goto_6

    .line 489
    .end local v20    # "oldBatteryWaterConnector":Z
    .end local v26    # "oldPowerSupplyingActivated":Z
    :cond_1a
    const-string/jumbo v5, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 490
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/systemui/power/PowerUI;->-wrap3(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 491
    :cond_1b
    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string/jumbo v5, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 492
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v5, v5, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 493
    const-string/jumbo v6, "com.android.systemui.power_overheat_shutdown_happened"

    const/4 v8, 0x0

    .line 492
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 494
    .local v27, "overheatShutdownHappenedSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v27, :cond_1d

    .line 495
    const-string/jumbo v5, "OverheatShutdownHappened"

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 496
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 497
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "OverheatShutdownHappened"

    const/4 v6, 0x0

    invoke-interface {v13, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v5, v5, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatShutdownHappenedNotice()V

    .line 506
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1d
    :try_start_0
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v15

    .line 507
    .local v15, "isSafeMode":Z
    if-eqz v15, :cond_c

    .line 508
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSafeModeNotice()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 509
    .end local v15    # "isSafeMode":Z
    :catch_0
    move-exception v12

    .line 510
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PowerUI"

    const-string/jumbo v6, "SAFEMODE Exception occurs!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 516
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v27    # "overheatShutdownHappenedSharedPrefs":Landroid/content/SharedPreferences;
    :cond_1e
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown intent: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method
