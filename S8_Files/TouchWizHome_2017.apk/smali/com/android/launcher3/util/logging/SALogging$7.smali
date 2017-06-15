.class Lcom/android/launcher3/util/logging/SALogging$7;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$7;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v8, 0x7f080143

    const v11, 0x7f080142

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 360
    sget-object v7, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 361
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v5

    .line 362
    .local v5, "stageMode":I
    const/4 v3, 0x0

    .line 363
    .local v3, "screenID":Ljava/lang/String;
    const/4 v0, 0x0

    .line 364
    .local v0, "eventID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 365
    .local v1, "itemType":I
    const-string v6, ""

    .line 366
    .local v6, "title":Ljava/lang/String;
    if-ne v5, v9, :cond_6

    .line 367
    const v7, 0x7f08018d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 368
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_3

    .line 369
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v8, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    const/4 v1, 0x1

    .line 406
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v7, :cond_1

    .line 408
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 410
    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    new-instance v8, Lcom/android/launcher3/util/logging/SALogging$QOAction;

    invoke-direct {v8, v6, v1}, Lcom/android/launcher3/util/logging/SALogging$QOAction;-><init>(Ljava/lang/String;I)V

    iput-object v8, v7, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    .line 411
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 412
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v7, v3, v0, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_2
    return-void

    .line 372
    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_4

    .line 373
    const-string v6, "FOLDER"

    .line 374
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    const/16 v1, 0x10

    goto :goto_0

    .line 376
    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_0

    .line 377
    const v7, 0x7f080144

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v7, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v7, :cond_5

    .line 379
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v7, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 380
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 381
    const v7, 0x7f08013a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    :cond_5
    const/16 v1, 0x11

    goto :goto_0

    .line 385
    :cond_6
    if-ne v5, v10, :cond_8

    .line 386
    const v7, 0x7f08017f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 387
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_7

    .line 388
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v8, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v6

    .line 389
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 391
    :cond_7
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v7, :cond_0

    .line 392
    const-string v6, "FOLDER"

    .line 393
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 396
    :cond_8
    const/4 v7, 0x5

    if-ne v5, v7, :cond_0

    .line 397
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v8, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v6

    .line 398
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$7;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v4

    .line 399
    .local v4, "secondTopStage":I
    if-ne v4, v9, :cond_a

    .line 400
    const v7, 0x7f080185

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 404
    :cond_9
    :goto_1
    const v7, 0x7f080108

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 401
    :cond_a
    if-ne v4, v10, :cond_9

    .line 402
    const v7, 0x7f08017a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
