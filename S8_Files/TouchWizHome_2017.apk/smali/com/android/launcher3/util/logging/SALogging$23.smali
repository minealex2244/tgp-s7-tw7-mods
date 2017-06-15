.class Lcom/android/launcher3/util/logging/SALogging$23;
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
    .line 1232
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x66

    .line 1235
    const-string v5, "Launcher.SALogging"

    const-string v6, "mUpdateStatusLogValuesForAppItem - run"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    sget-object v5, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1237
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v6, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/launcher3/util/logging/SALogging;->getItemCountByContainer(IZ)I

    move-result v2

    .line 1239
    .local v2, "folderCount":I
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v6, 0x7f080198

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1240
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v5}, Lcom/android/launcher3/util/logging/SALogging;->getAppsPageCount()I

    move-result v3

    .line 1241
    .local v3, "pageCount":I
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v6, 0x7f08019a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1242
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v5, v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->getItemCountByContainer(IZ)I

    move-result v0

    .line 1244
    .local v0, "ItemCount":I
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v6, 0x7f080195

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1245
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v6, 0x7f080199

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    .line 1246
    invoke-static {v7, v8}, Lcom/android/launcher3/util/logging/SALogUtils;->countFolderColorNotDefault(Landroid/content/Context;Z)I

    move-result v7

    .line 1245
    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1248
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const/4 v6, 0x2

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->access$400(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, "detail":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$23;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v6, 0x7f080197

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    return-void
.end method
