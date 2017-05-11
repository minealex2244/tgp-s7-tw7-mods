.class Lcom/android/launcher3/util/logging/SALogging$12;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->setDefaultValueForAppStatusLog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 447
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->val$context:Landroid/content/Context;

    const-string v10, "SASettingPref"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 449
    .local v7, "saPrefs":Landroid/content/SharedPreferences;
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 450
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f080198

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 451
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/16 v10, -0x66

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/logging/SALogging;->getItemCountByContainer(IZ)I

    move-result v1

    .line 453
    .local v1, "folderCount":I
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f080198

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 455
    .end local v1    # "folderCount":I
    :cond_0
    const v9, 0x7f08019a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 456
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v9}, Lcom/android/launcher3/util/logging/SALogging;->getAppsPageCount()I

    move-result v4

    .line 457
    .local v4, "pageCount":I
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f08019a

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 459
    .end local v4    # "pageCount":I
    :cond_1
    const v9, 0x7f080195

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 460
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/16 v10, -0x66

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/logging/SALogging;->getItemCountByContainer(IZ)I

    move-result v3

    .line 462
    .local v3, "iconCount":I
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f080195

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 464
    .end local v3    # "iconCount":I
    :cond_2
    const v9, 0x7f080199

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 465
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f080199

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    const/4 v12, 0x0

    .line 466
    invoke-static {v11, v12}, Lcom/android/launcher3/util/logging/SALogUtils;->countFolderColorNotDefault(Landroid/content/Context;Z)I

    move-result v11

    .line 465
    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 468
    :cond_3
    const v9, 0x7f08019c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 469
    sget-object v9, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    .line 470
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 469
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 471
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "AppsController.ViewType"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 472
    .local v8, "viewType":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 473
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f08019c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "viewType":Ljava/lang/String;
    :cond_4
    const v9, 0x7f080197

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 477
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v10, 0x2

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/launcher3/util/logging/SALogging;->access$200(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "detail":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v10, 0x7f080197

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .end local v0    # "detail":Ljava/lang/String;
    :cond_5
    const v9, 0x7f08019b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 481
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 482
    .local v2, "gridXY":[I
    sget-object v9, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 483
    iget-object v9, p0, Lcom/android/launcher3/util/logging/SALogging$12;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/launcher3/util/logging/SALogging;->insertChangeGridLog(IIZZ)V

    .line 485
    .end local v2    # "gridXY":[I
    :cond_6
    return-void
.end method
