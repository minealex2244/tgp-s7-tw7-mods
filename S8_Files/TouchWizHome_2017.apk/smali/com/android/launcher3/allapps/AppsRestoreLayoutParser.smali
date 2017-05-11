.class Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;
.super Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
.source "AppsRestoreLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsFolderParser;,
        Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;,
        Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;,
        Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RowsParser;,
        Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ViewTypeParser;,
        Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.AppsRestore"


# instance fields
.field private mColumns:I

.field private mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mRows:I

.field private mTagParserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/model/FavoritesProvider;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoritesProvider"    # Lcom/android/launcher3/common/model/FavoritesProvider;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    .line 57
    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    .line 58
    iput-object p3, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 59
    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mColumns:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mColumns:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mRows:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mRows:I

    return p1
.end method


# virtual methods
.method protected getFolderElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method

.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsFolderParser;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RestoreAppsFolderParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object v0
.end method

.method protected parseLayout(Ljava/util/ArrayList;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mRank:I

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    const-string v1, "category"

    new-instance v4, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 86
    .local v3, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 88
    .local v6, "depth":I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v0, 0x3

    if-ne v13, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 89
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_3

    :cond_1
    const/4 v0, 0x1

    if-eq v13, v0, :cond_3

    .line 90
    const/4 v0, 0x2

    if-ne v13, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 96
    .local v8, "existTag":Z
    if-eqz v8, :cond_0

    .line 100
    const-string v0, "Launcher.AppsRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore tag : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v9}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "tableName":Ljava/lang/String;
    const-string v0, "appOrder"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "appOrder_easy"

    .line 103
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v10

    .line 105
    .local v10, "maxId":J
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    .line 106
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/16 v5, -0x66

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->defaultAppsParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 115
    .end local v2    # "tableName":Ljava/lang/String;
    .end local v3    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v6    # "depth":I
    .end local v8    # "existTag":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "maxId":J
    .end local v13    # "type":I
    :catch_0
    move-exception v7

    .line 116
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mRank:I

    .line 117
    const-string v0, "Launcher.AppsRestore"

    const-string v1, "Got exception parsing restore appOrder."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    iget v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mRank:I

    :goto_2
    return v0

    .line 109
    .restart local v2    # "tableName":Ljava/lang/String;
    .restart local v3    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .restart local v6    # "depth":I
    .restart local v8    # "existTag":Z
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 110
    .local v12, "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v12, v0, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 111
    const/4 v0, -0x1

    goto :goto_2

    .line 115
    .end local v2    # "tableName":Ljava/lang/String;
    .end local v3    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v6    # "depth":I
    .end local v8    # "existTag":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    .end local v13    # "type":I
    :catch_1
    move-exception v7

    goto :goto_1
.end method
