.class final Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 406
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v7, "mDNIe"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v6, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set9(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/SemMdnieManager;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 407
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v7, "DisplaySolution"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-static {v6, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set6(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 408
    const-string/jumbo v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 409
    .local v1, "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    .line 411
    :cond_0
    return-void

    .line 413
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_1
    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 414
    const-string/jumbo v4, "keyguard"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 415
    .restart local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 416
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    .line 417
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-wrap5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 418
    return-void

    .line 420
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_3
    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 421
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-wrap4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 422
    return-void

    .line 424
    :cond_4
    const-string/jumbo v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 425
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v5, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    .line 426
    return-void

    .line 433
    :cond_5
    const-string/jumbo v6, "com.sec.android.intent.action.SSRM_MDNIE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 434
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v6, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 436
    .local v2, "time":J
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 437
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 438
    return-void

    .line 402
    .end local v2    # "time":J
    :cond_7
    return-void
.end method
