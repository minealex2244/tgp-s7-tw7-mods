.class Lcom/android/launcher3/util/logging/SALogging$6;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$6;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 321
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$launcher:Lcom/android/launcher3/Launcher;

    if-nez v6, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string v5, ""

    .line 324
    .local v5, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 325
    .local v2, "screenID":Ljava/lang/String;
    const/4 v0, 0x0

    .line 326
    .local v0, "eventID":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 327
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v4

    .line 328
    .local v4, "stageMode":I
    if-ne v4, v7, :cond_5

    .line 329
    const v6, 0x7f08018d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 340
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_8

    .line 341
    const-string v5, "Folder"

    .line 342
    const v6, 0x7f0800d2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 348
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 350
    :cond_4
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 351
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v6, v2, v0, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_5
    if-ne v4, v8, :cond_6

    .line 331
    const v6, 0x7f08017f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 332
    :cond_6
    const/4 v6, 0x5

    if-ne v4, v6, :cond_2

    .line 333
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v3

    .line 334
    .local v3, "secondTopStage":I
    if-ne v3, v7, :cond_7

    .line 335
    const v6, 0x7f080185

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 336
    :cond_7
    if-ne v3, v8, :cond_2

    .line 337
    const v6, 0x7f080179

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 343
    .end local v3    # "secondTopStage":I
    :cond_8
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$6;->val$info:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_3

    .line 344
    const-string v5, "APP"

    .line 345
    const v6, 0x7f0800d0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
