.class Lcom/android/launcher3/util/logging/SALogging$9;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertAddToFolderLog(Lcom/android/launcher3/Launcher;Z)V
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
    .line 358
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$9;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$9;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-boolean p3, p0, Lcom/android/launcher3/util/logging/SALogging$9;->val$isMultiSelect:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f08015a

    .line 361
    sget-object v2, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 362
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$9;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v1

    .line 363
    .local v1, "stageMode":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 364
    iget-boolean v2, p0, Lcom/android/launcher3/util/logging/SALogging$9;->val$isMultiSelect:Z

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$9;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f08018f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$9;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f080190

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800c8

    .line 369
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 372
    iget-boolean v2, p0, Lcom/android/launcher3/util/logging/SALogging$9;->val$isMultiSelect:Z

    if-eqz v2, :cond_3

    .line 373
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$9;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f080182

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$9;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v3, 0x7f080183

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800e0

    .line 377
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
