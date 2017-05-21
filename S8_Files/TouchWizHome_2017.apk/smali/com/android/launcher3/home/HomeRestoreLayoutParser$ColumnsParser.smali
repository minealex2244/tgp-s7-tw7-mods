.class Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;
.super Ljava/lang/Object;
.source "HomeRestoreLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnsParser"
.end annotation


# instance fields
.field private mIsHomeOnlyData:Z

.field final synthetic this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Z)V
    .locals 0
    .param p2, "isHomeOnlyData"    # Z

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->mIsHomeOnlyData:Z

    .line 386
    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mColumns:I
    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1302(Lcom/android/launcher3/home/HomeRestoreLayoutParser;I)I

    .line 393
    const-string v1, "Launcher.HomeRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore columns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mColumns:I
    invoke-static {v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1300(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 397
    .local v0, "restoreGridSize":[I
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .line 398
    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mColumns:I
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1300(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRows:I
    invoke-static {v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1200(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I

    move-result v3

    .line 397
    invoke-static {v1, v0, v2, v3}, Lcom/android/launcher3/util/ScreenGridUtilities;->findNearestGridSize(Landroid/content/Context;[III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1500(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-boolean v4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;->mIsHomeOnlyData:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    .line 404
    .end local v0    # "restoreGridSize":[I
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method
