.class Lcom/android/launcher3/util/logging/SALogging$31;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertQOEventLog(ILcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$activity:Lcom/android/launcher3/Launcher;

.field final synthetic val$option:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$31;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$31;->val$activity:Lcom/android/launcher3/Launcher;

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$31;->val$option:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const v14, 0x7f080135

    const v13, 0x7f080134

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1379
    sget-object v7, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1380
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$31;->val$activity:Lcom/android/launcher3/Launcher;

    iget v8, p0, Lcom/android/launcher3/util/logging/SALogging$31;->val$option:I

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1381
    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1380
    invoke-static {v7, v8, v9}, Lcom/android/launcher3/Utilities;->getStringByLocale(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1382
    .local v2, "optionName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/launcher3/util/logging/SALogging$31;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v8, v8, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    iget-object v8, v8, Lcom/android/launcher3/util/logging/SALogging$QOAction;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1383
    .local v0, "detail":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$31;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v6

    .line 1384
    .local v6, "stageMode":I
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$31;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v5

    .line 1385
    .local v5, "secondTopStageMode":I
    const/4 v4, 0x0

    .line 1386
    .local v4, "screenID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1387
    .local v1, "eventID":Ljava/lang/String;
    if-ne v6, v10, :cond_3

    .line 1388
    const v7, 0x7f08018e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1398
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$31;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v7, v7, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    iget v7, v7, Lcom/android/launcher3/util/logging/SALogging$QOAction;->mItemType:I

    sparse-switch v7, :sswitch_data_0

    .line 1421
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    if-nez v1, :cond_9

    .line 1429
    :cond_2
    :goto_2
    return-void

    .line 1389
    :cond_3
    if-ne v6, v11, :cond_4

    .line 1390
    const v7, 0x7f080181

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1391
    :cond_4
    if-ne v6, v12, :cond_0

    .line 1392
    if-ne v5, v10, :cond_5

    .line 1393
    const v7, 0x7f080186

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1394
    :cond_5
    if-ne v5, v11, :cond_0

    .line 1395
    const v7, 0x7f08017a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1400
    :sswitch_0
    if-ne v6, v10, :cond_6

    .line 1401
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1402
    :cond_6
    if-ne v6, v11, :cond_7

    .line 1403
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1404
    :cond_7
    if-ne v6, v12, :cond_1

    .line 1405
    const v7, 0x7f08010a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1409
    :sswitch_1
    if-ne v6, v10, :cond_8

    .line 1410
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1411
    :cond_8
    if-ne v6, v11, :cond_1

    .line 1412
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1416
    :sswitch_2
    if-ne v6, v10, :cond_1

    .line 1417
    const v7, 0x7f080136

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1424
    :cond_9
    if-eqz v0, :cond_a

    .line 1425
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$31;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v7, v4, v1, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1427
    :cond_a
    iget-object v7, p0, Lcom/android/launcher3/util/logging/SALogging$31;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v7, v4, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1398
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
