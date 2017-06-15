.class Lcom/android/launcher3/util/logging/SALogging$11;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertMoveToPageLog(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$isHome:Z

.field final synthetic val$itemInfo:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;ZLjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-boolean p2, p0, Lcom/android/launcher3/util/logging/SALogging$11;->val$isHome:Z

    iput-object p3, p0, Lcom/android/launcher3/util/logging/SALogging$11;->val$itemInfo:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f080183

    const v2, 0x7f080190

    .line 505
    sget-object v1, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 506
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->val$isHome:Z

    if-eqz v1, :cond_3

    .line 507
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->val$itemInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013c

    .line 509
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->val$itemInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013d

    .line 512
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->val$itemInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08013e

    .line 515
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->val$itemInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_4

    .line 519
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800eb

    .line 520
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->val$itemInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/launcher3/util/logging/SALogging$11;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800ec

    .line 523
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
