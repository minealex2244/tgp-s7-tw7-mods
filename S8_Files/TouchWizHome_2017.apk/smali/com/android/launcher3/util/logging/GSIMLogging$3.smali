.class Lcom/android/launcher3/util/logging/GSIMLogging$3;
.super Ljava/lang/Object;
.source "GSIMLogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/GSIMLogging;->runAllStatusLogging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/GSIMLogging;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/GSIMLogging;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/GSIMLogging;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 186
    .local v7, "weekofyear":I
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;->getWeekOfYearNumber()I

    move-result v1

    if-eq v1, v7, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    # invokes: Lcom/android/launcher3/util/logging/GSIMLogging;->homeWidgetListLogging()V
    invoke-static {v1}, Lcom/android/launcher3/util/logging/GSIMLogging;->access$100(Lcom/android/launcher3/util/logging/GSIMLogging;)V

    .line 188
    iget-object v1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    # invokes: Lcom/android/launcher3/util/logging/GSIMLogging;->homeDefaultPageIndexLogging()V
    invoke-static {v1}, Lcom/android/launcher3/util/logging/GSIMLogging;->access$200(Lcom/android/launcher3/util/logging/GSIMLogging;)V

    .line 189
    iget-object v1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    # invokes: Lcom/android/launcher3/util/logging/GSIMLogging;->homeItemCountLogging()V
    invoke-static {v1}, Lcom/android/launcher3/util/logging/GSIMLogging;->access$300(Lcom/android/launcher3/util/logging/GSIMLogging;)V

    .line 190
    iget-object v1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    # invokes: Lcom/android/launcher3/util/logging/GSIMLogging;->zeroPageStatusLogging()V
    invoke-static {v1}, Lcom/android/launcher3/util/logging/GSIMLogging;->access$400(Lcom/android/launcher3/util/logging/GSIMLogging;)V

    .line 191
    iget-object v1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    # invokes: Lcom/android/launcher3/util/logging/GSIMLogging;->homeScreenModeLogging()V
    invoke-static {v1}, Lcom/android/launcher3/util/logging/GSIMLogging;->access$500(Lcom/android/launcher3/util/logging/GSIMLogging;)V

    .line 192
    invoke-static {v7}, Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;->setWeekOfYearNumber(I)V

    .line 193
    iget-object v1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    iget-object v2, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    # invokes: Lcom/android/launcher3/util/logging/GSIMLogging;->hotseatListLogging()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher3/util/logging/GSIMLogging;->access$600(Lcom/android/launcher3/util/logging/GSIMLogging;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertMultiLogging(Ljava/util/ArrayList;)V

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    const-string v2, "HOME"

    iget-object v4, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-virtual {v4}, Lcom/android/launcher3/util/logging/GSIMLogging;->getHomePageCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 195
    iget-object v1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    const-string v2, "HEPC"

    iget-object v4, p0, Lcom/android/launcher3/util/logging/GSIMLogging$3;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    .line 196
    invoke-virtual {v4}, Lcom/android/launcher3/util/logging/GSIMLogging;->getHomeEmptyPageCount()I

    move-result v4

    int-to-long v4, v4

    .line 195
    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 198
    :cond_0
    return-void
.end method
