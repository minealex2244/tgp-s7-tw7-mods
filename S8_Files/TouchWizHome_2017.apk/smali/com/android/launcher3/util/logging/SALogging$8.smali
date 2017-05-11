.class Lcom/android/launcher3/util/logging/SALogging$8;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertMoveToAppLog(Lcom/android/launcher3/Launcher;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$isMultiSelect:Z

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-boolean p3, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$isMultiSelect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f080159

    .line 334
    sget-object v2, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 335
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v1

    .line 336
    .local v1, "stageMode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 337
    iget-boolean v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$isMultiSelect:Z

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f08018f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f080190

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800fd

    .line 342
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 345
    iget-boolean v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->val$isMultiSelect:Z

    if-eqz v2, :cond_3

    .line 346
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f080182

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$8;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f080183

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800e9

    .line 350
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
