.class Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;
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
    name = "PageCountParser"
.end annotation


# instance fields
.field private mContainer:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;)V
    .locals 0
    .param p2, "container"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->mContainer:Ljava/lang/String;

    .line 413
    return-void
.end method

.method private clearTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "screenTableName"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteWidgetIds(Ljava/lang/String;)V

    .line 430
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteTable(Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteTable(Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoredTable:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1700(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v0

    .line 434
    .local v0, "maxId":J
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    .line 436
    .end local v0    # "maxId":J
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v0

    .line 437
    .restart local v0    # "maxId":J
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxScreenId(J)V

    .line 438
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoredTable:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1700(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
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
    .line 418
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 419
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 420
    .local v0, "pageCount":I
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->mContainer:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "screenTableName":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->clearTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    # getter for: Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;
    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->restoreScreens(ILjava/lang/String;)V

    .line 423
    const-string v2, "Launcher.HomeRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore pageCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "pageCount":I
    .end local v1    # "screenTableName":Ljava/lang/String;
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method
