.class Lcom/android/systemui/power/PowerUI$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/power/PowerUI;->-set17(Lcom/android/systemui/power/PowerUI;J)J

    .line 977
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->-set13(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 975
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/systemui/power/PowerUI;->-set17(Lcom/android/systemui/power/PowerUI;J)J

    .line 963
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->-set13(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 961
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/systemui/power/PowerUI;->-set17(Lcom/android/systemui/power/PowerUI;J)J

    .line 970
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$6;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->-set13(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 968
    return-void
.end method
