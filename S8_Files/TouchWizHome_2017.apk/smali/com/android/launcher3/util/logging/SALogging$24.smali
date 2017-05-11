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
    .line 1188
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1191
    const-string v11, "Launcher.SALogging"

    const-string v12, "mUpdateStatusLogValuesForHomeItem - run"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1194
    .local v7, "res":Landroid/content/res/Resources;
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher3/util/logging/SALogUtils;->getFolderCountInHome(Landroid/content/Context;)I

    move-result v6

    .line 1195
    .local v6, "numOfHomeFolders":I
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801ab

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1197
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher3/util/logging/SALogUtils;->getHotseatAppItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1198
    .local v4, "hotSeatAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 1199
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1200
    .local v3, "detail":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getHotSeatAppStatusID(I)Ljava/lang/String;
    invoke-static {v11, v5}, Lcom/android/launcher3/util/logging/SALogging;->access$300(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v8

    .line 1201
    .local v8, "statusID":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v11, v8, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1204
    .end local v3    # "detail":Ljava/lang/String;
    .end local v8    # "statusID":Ljava/lang/String;
    :cond_0
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v0

    .line 1205
    .local v0, "appShortcuts":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a8

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1210
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v9

    .line 1211
    .local v9, "widgets":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b1

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v9, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b0

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v9, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemcount:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1214
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f08019f

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    .line 1215
    invoke-static {v13}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v13

    .line 1214
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1217
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeApps(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v1

    .line 1218
    .local v1, "appShortcuts_d":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f08019e

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->getHomeWidgetList(Landroid/content/Context;Z)Lcom/android/launcher3/util/logging/SALogUtils$Items;

    move-result-object v10

    .line 1222
    .local v10, "widgets_d":Lcom/android/launcher3/util/logging/SALogUtils$Items;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a0

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v10, Lcom/android/launcher3/util/logging/SALogUtils$Items;->itemNames:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801ad

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v13}, Lcom/android/launcher3/util/logging/SALogging;->getHomePageCount()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1226
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a9

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    .line 1227
    invoke-virtual {v13}, Lcom/android/launcher3/util/logging/SALogging;->getHomeEmptyPageCount()I

    move-result v13

    .line 1226
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1229
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a9

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    .line 1230
    invoke-virtual {v13}, Lcom/android/launcher3/util/logging/SALogging;->getHomeEmptyPageCount()I

    move-result v13

    .line 1229
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1232
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801a6

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    .line 1233
    invoke-static {v13}, Lcom/android/launcher3/util/logging/SALogUtils;->getShortcutOnHomeCount(Landroid/content/Context;)I

    move-result v13

    .line 1232
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1235
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801ac

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v14, 0x1

    .line 1236
    invoke-static {v13, v14}, Lcom/android/launcher3/util/logging/SALogUtils;->countFolderColorNotDefault(Landroid/content/Context;Z)I

    move-result v13

    .line 1235
    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1238
    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/launcher3/util/logging/SALogUtils;->getGSWData(Landroid/content/Context;)Lcom/android/launcher3/util/logging/SALogUtils$GSW;

    move-result-object v2

    .line 1239
    .local v2, "data":Lcom/android/launcher3/util/logging/SALogUtils$GSW;
    if-eqz v2, :cond_1

    .line 1240
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b5

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->size:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b3

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->page:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1242
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801b2

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/android/launcher3/util/logging/SALogUtils$GSW;->location:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_1
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v12, 0x1

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v3

    .line 1246
    .restart local v3    # "detail":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/launcher3/util/logging/SALogging$24;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v12, 0x7f0801aa

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    return-void
.end method
