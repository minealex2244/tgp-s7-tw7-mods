.class Lcom/android/launcher3/util/logging/SALogging$24;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/logging/SALogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1256
    const-string v11, "Launcher.SALogging"

    const-string v12, "mUpdateStatusLogValuesForHomeItem - run"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1259
    .local v7, "res":Landroid/content/res/Resources;
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher3/util/logging/SALogUtils;->getFolderCountInHome(Landroid/content/Context;)I

    move-result v6

    .line 1260
    .local v6, "numOfHomeFolders":I
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801ab

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1262
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher3/util/logging/SALogUtils;->getHotseatAppItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1263
    .local v4, "hotSeatAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 1264
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1265
    .local v3, "detail":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getHotSeatAppStatusID(I)Ljava/lang/String;
    invoke-static {v11, v5}, Lcom/android/launcher3/util/logging/SALogging;->access$700(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v8

    .line 1266
    .local v8, "statusID":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v11, v8, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1269
    .end local v3    # "detail":Ljava/lang/String;
    .end local v8    # "statusID":Ljava/lang/String;
    :cond_0
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v0

    .line 1270
    .local v0, "appShortcuts":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a8

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1275
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v9

    .line 1276
    .local v9, "widgets":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b1

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v9, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b0

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v9, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1279
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f08019f

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    .line 1280
    invoke-static {v13}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v13

    .line 1279
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1282
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v1

    .line 1283
    .local v1, "appShortcuts_d":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f08019e

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v10

    .line 1287
    .local v10, "widgets_d":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a0

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v10, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801ad

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v13}, Lcom/android/launcher3/util/logging/SALogging;->getHomePageCount()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1291
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a9

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    .line 1292
    invoke-virtual {v13}, Lcom/android/launcher3/util/logging/SALogging;->getHomeEmptyPageCount()I

    move-result v13

    .line 1291
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1294
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a9

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    .line 1295
    invoke-virtual {v13}, Lcom/android/launcher3/util/logging/SALogging;->getHomeEmptyPageCount()I

    move-result v13

    .line 1294
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1297
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a6

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    .line 1298
    invoke-static {v13}, Lcom/android/launcher3/util/logging/SALogUtils;->getShortcutOnHomeCount(Landroid/content/Context;)I

    move-result v13

    .line 1297
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1300
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801ac

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v14, 0x1

    .line 1301
    invoke-static {v13, v14}, Lcom/android/launcher3/util/logging/SALogUtils;->countFolderColorNotDefault(Landroid/content/Context;Z)I

    move-result v13

    .line 1300
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1303
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher3/util/logging/SALogUtils;->getGSWData(Landroid/content/Context;)Lcom/android/launcher3/util/logging/SALogUtils$GSW;

    move-result-object v2

    .line 1304
    .local v2, "data":Lcom/android/launcher3/util/logging/SALogUtils$GSW;
    if-eqz v2, :cond_1

    .line 1305
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b5

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->size:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b3

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->page:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1307
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b2

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->location:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_1
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v12, 0x1

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogging;->access$400(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v3

    .line 1311
    .restart local v3    # "detail":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801aa

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    return-void
.end method
