.class Lcom/android/server/lights/LightsService$4;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-set4(Lcom/android/server/lights/LightsService;I)I

    .line 606
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    const-string/jumbo v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN covertype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-get6(Lcom/android/server/lights/LightsService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-set2(Lcom/android/server/lights/LightsService;Z)Z

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    const-string/jumbo v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE covertype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-get6(Lcom/android/server/lights/LightsService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-set2(Lcom/android/server/lights/LightsService;Z)Z

    .line 612
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get6(Lcom/android/server/lights/LightsService;)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-wrap1(Lcom/android/server/lights/LightsService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 614
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    if-eqz v0, :cond_0

    .line 615
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-set0(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;

    .line 616
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-set1(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;

    .line 617
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-set3(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;

    .line 618
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get2(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 619
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get3(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 620
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get5(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0
.end method