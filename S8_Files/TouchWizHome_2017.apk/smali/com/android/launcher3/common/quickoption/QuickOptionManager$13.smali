.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionUnlock(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field final synthetic val$folderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field final synthetic val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/folder/folderlock/FolderLock;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->val$folderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 466
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->val$folderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 467
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->val$folderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 469
    const-string v0, ""

    .line 470
    .local v0, "screenID":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    .line 471
    .local v2, "stageMode":I
    if-ne v2, v4, :cond_2

    .line 472
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08018d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    :cond_0
    :goto_0
    const-string v3, ""

    .line 485
    .local v3, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 486
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .line 490
    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v6}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 491
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/ItemInfo;->isAppOrShortcutType()Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 488
    invoke-virtual {v5, v0, v6, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void

    .line 473
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    if-ne v2, v7, :cond_3

    .line 474
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08017f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_3
    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    .line 476
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v1

    .line 477
    .local v1, "secondTopStage":I
    if-ne v1, v4, :cond_4

    .line 478
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080185

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_4
    if-ne v1, v7, :cond_0

    .line 480
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$13;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    # getter for: Lcom/android/launcher3/common/quickoption/QuickOptionManager;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v5}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080179

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 491
    .end local v1    # "secondTopStage":I
    .restart local v3    # "title":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method
