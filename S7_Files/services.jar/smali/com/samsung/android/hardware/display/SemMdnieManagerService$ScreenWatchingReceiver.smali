.class final Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-get0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-set2(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 238
    return-void

    .line 240
    :cond_0
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-set0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    .line 242
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-get1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-get2(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    :cond_1
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-set1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    .line 243
    return-void

    .line 245
    :cond_2
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 246
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-set0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    .line 247
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-get1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-static {v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-get2(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z

    move-result v1

    :cond_3
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->-set1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z

    .line 248
    return-void

    .line 233
    :cond_4
    return-void
.end method