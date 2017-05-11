.class Lcom/android/launcher3/home/HomeRestoreLayoutParser;
.super Lcom/android/launcher3/home/HomeDefaultLayoutParser;
.source "HomeRestoreLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreHomeFolderParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutWithUriParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreShortcutParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$HomeScreenContentParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$AppsButtonParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$ZeroPageParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$ScreenIndexParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$PageCountParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$ColumnsParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$RowsParser;,
        Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;
    }
.end annotation


# static fields
.field private static final BNR_PERMISSION:Ljava/lang/String; = "com.sec.permission.BACKUP_RESTORE_HOMESCREEN"

.field private static final REQUEST_RESTORE_CONTACT_SHORTCUT:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_CONTACT_SHORTCUT"

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeRestore"

.field private static final VCF_RESTORE_PATH:Ljava/lang/String;


# instance fields
.field private mColumns:I

.field private mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field private mIsRestoreVcf:Z

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mRestoreAppWidgetId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRestoredTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/TempVcfForContact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->VCF_RESTORE_PATH:Ljava/lang/String;

    .line 73
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/model/FavoritesProvider;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favoritesProvider"    # Lcom/android/launcher3/common/model/FavoritesProvider;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/common/model/FavoritesProvider;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p4, "restoredTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoreAppWidgetId:Ljava/util/HashMap;

    .line 85
    iput-object p2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    .line 86
    iput-object p4, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoredTable:Ljava/util/ArrayList;

    .line 87
    iput-object p3, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 88
    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRows:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/launcher3/home/HomeRestoreLayoutParser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRows:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mColumns:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/launcher3/home/HomeRestoreLayoutParser;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mColumns:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoredTable:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Intent;
    .param p4, "x4"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->addShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->restoreContactShortcut(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoreAppWidgetId:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private restoreAppWidgetIds()V
    .locals 24

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoreAppWidgetId:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    if-gtz v20, :cond_0

    .line 232
    const-string v20, "Launcher.HomeRestore"

    const-string v21, "mRestoreAppWidgetId is empty"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 236
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 237
    .local v8, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v6, Landroid/appwidget/AppWidgetHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x400

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 242
    .local v6, "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v19, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoreAppWidgetId:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 244
    .local v10, "dbId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoreAppWidgetId:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 245
    .local v15, "pairInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;Ljava/lang/String;>;"
    iget-object v12, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/util/Pair;

    .line 247
    .local v12, "info":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 248
    .local v13, "oldWidgetId":I
    iget-object v9, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/content/ComponentName;

    .line 249
    .local v9, "componentName":Landroid/content/ComponentName;
    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 251
    .local v17, "tableName":Ljava/lang/String;
    if-eqz v9, :cond_1

    if-eqz v17, :cond_1

    .line 255
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v7

    .line 256
    .local v7, "appWidgetId":I
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v14, "options":Landroid/os/Bundle;
    const-string v20, "Old_WidgetId"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string v20, "New_WidgetId"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v20, "Launcher.HomeRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "restoreAppWidgetIds, Old_WidgetId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", New_WidgetId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v20, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v20, :pswitch_data_0

    .line 279
    invoke-static {v10, v11}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v18

    .line 283
    .local v18, "uri":Landroid/net/Uri;
    :goto_3
    invoke-virtual {v8, v7, v9, v14}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 284
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 285
    const-string v20, "appWidgetId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 288
    .local v16, "result":I
    const-string v20, "Launcher.HomeRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bind widget id result : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 265
    .end local v16    # "result":I
    .end local v18    # "uri":Landroid/net/Uri;
    :sswitch_0
    const-string v22, "favorites_standard"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v20, 0x0

    goto :goto_2

    :sswitch_1
    const-string v22, "favorites_easy"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v20, 0x1

    goto :goto_2

    :sswitch_2
    const-string v22, "favorites_homeOnly"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v20, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v22, "favorites_homeApps"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v20, 0x3

    goto/16 :goto_2

    .line 267
    :pswitch_0
    invoke-static {v10, v11}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Standard;->getContentUri(J)Landroid/net/Uri;

    move-result-object v18

    .line 268
    .restart local v18    # "uri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 270
    .end local v18    # "uri":Landroid/net/Uri;
    :pswitch_1
    invoke-static {v10, v11}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Easy;->getContentUri(J)Landroid/net/Uri;

    move-result-object v18

    .line 271
    .restart local v18    # "uri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 273
    .end local v18    # "uri":Landroid/net/Uri;
    :pswitch_2
    invoke-static {v10, v11}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->getContentUri(J)Landroid/net/Uri;

    move-result-object v18

    .line 274
    .restart local v18    # "uri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 276
    .end local v18    # "uri":Landroid/net/Uri;
    :pswitch_3
    invoke-static {v10, v11}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v18

    .line 277
    .restart local v18    # "uri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 290
    :cond_3
    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 291
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 292
    .restart local v16    # "result":I
    const-string v20, "Launcher.HomeRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bind widget id fail : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " result : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 296
    .end local v7    # "appWidgetId":I
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "dbId":J
    .end local v12    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    .end local v13    # "oldWidgetId":I
    .end local v14    # "options":Landroid/os/Bundle;
    .end local v15    # "pairInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;Ljava/lang/String;>;"
    .end local v16    # "result":I
    .end local v17    # "tableName":Ljava/lang/String;
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoreAppWidgetId:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a48685b -> :sswitch_0
        -0x33a56f16 -> :sswitch_1
        0x1a7724d9 -> :sswitch_3
        0x1a7d7a13 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private restoreContactShortcut(Ljava/lang/String;J)V
    .locals 12
    .param p1, "vcf"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 192
    if-eqz p1, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v7, p2, v8

    if-gez v7, :cond_2

    .line 193
    :cond_0
    const-string v7, "Launcher.HomeRestore"

    const-string v8, "vcf is null or id < 0"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    const/4 v5, 0x0

    .line 199
    .local v5, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->VCF_RESTORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 204
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .local v2, "filePath":Ljava/lang/StringBuffer;
    const-string v7, "file://"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->VCF_RESTORE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ".vcf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 207
    .local v4, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 208
    .local v3, "outputStream":Ljava/io/OutputStream;
    if-eqz v3, :cond_4

    .line 209
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v5    # "writer":Ljava/io/Writer;
    .local v6, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v6, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 212
    const-string v7, "Launcher.HomeRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreContactShortcut vcf file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mIsRestoreVcf:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v6

    .line 220
    .end local v6    # "writer":Ljava/io/Writer;
    .restart local v5    # "writer":Ljava/io/Writer;
    :cond_4
    if-eqz v5, :cond_1

    .line 222
    :try_start_2
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "Launcher.HomeRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreContactShortcut, IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "filePath":Ljava/lang/StringBuffer;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v7, "Launcher.HomeRestore"

    const-string v8, "restoreContactShortcut, FileNotFoundException : "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    if-eqz v5, :cond_1

    .line 222
    :try_start_4
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 223
    :catch_2
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "Launcher.HomeRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreContactShortcut, IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v7, "Launcher.HomeRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreContactShortcut, IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    if-eqz v5, :cond_1

    .line 222
    :try_start_6
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 223
    :catch_4
    move-exception v1

    .line 224
    const-string v7, "Launcher.HomeRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreContactShortcut, IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_5

    .line 222
    :try_start_7
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 225
    :cond_5
    :goto_4
    throw v7

    .line 223
    :catch_5
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "Launcher.HomeRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreContactShortcut, IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "filePath":Ljava/lang/StringBuffer;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v6    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "writer":Ljava/io/Writer;
    .restart local v5    # "writer":Ljava/io/Writer;
    goto :goto_3

    .line 217
    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v6    # "writer":Ljava/io/Writer;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6    # "writer":Ljava/io/Writer;
    .restart local v5    # "writer":Ljava/io/Writer;
    goto :goto_2

    .line 215
    .end local v5    # "writer":Ljava/io/Writer;
    .restart local v6    # "writer":Ljava/io/Writer;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "writer":Ljava/io/Writer;
    .restart local v5    # "writer":Ljava/io/Writer;
    goto/16 :goto_1
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
    const/4 v3, 0x0

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutWithUriParser;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutWithUriParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreShortcutParser;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreShortcutParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
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

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppShortcutParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "appwidget"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreUriShortcutParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreHomeFolderParser;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreHomeFolderParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "appsbutton"

    new-instance v2, Lcom/android/launcher3/home/HomeRestoreLayoutParser$AppsButtonParser;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$AppsButtonParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v0
.end method

.method protected parseLayout(Ljava/util/ArrayList;)I
    .locals 15
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
    .line 111
    .local p1, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mIsRestoreVcf:Z

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    const-string v1, "category"

    new-instance v4, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$CategoryParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mRestoreAppWidgetId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 117
    const/4 v8, 0x0

    .line 119
    .local v8, "count":I
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 121
    .local v9, "depth":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 123
    .local v3, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v0, 0x3

    if-ne v14, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 124
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v9, :cond_4

    :cond_1
    const/4 v0, 0x1

    if-eq v14, v0, :cond_4

    .line 125
    const/4 v0, 0x2

    if-ne v14, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 130
    .local v12, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 131
    .local v11, "existTag":Z
    if-eqz v11, :cond_0

    .line 135
    const-string v0, "Launcher.HomeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore tag : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {v12}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "tableName":Ljava/lang/String;
    const/4 v0, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mTagParserMap:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 159
    .local v13, "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    if-nez v13, :cond_3

    .line 160
    const-string v0, "Launcher.HomeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown element tag : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, -0x1

    .line 188
    .end local v2    # "tableName":Ljava/lang/String;
    .end local v3    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v9    # "depth":I
    .end local v11    # "existTag":Z
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    .end local v14    # "type":I
    :goto_2
    return v0

    .line 137
    .restart local v2    # "tableName":Ljava/lang/String;
    .restart local v3    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .restart local v9    # "depth":I
    .restart local v11    # "existTag":Z
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "type":I
    :sswitch_0
    const-string v1, "home"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "homeOnly"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "home_easy"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "hotseat"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "hotseat_homeOnly"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "hotseat_easy"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    .line 141
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/16 v5, -0x64

    move-object v0, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->defaultHomeParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)I

    move-result v0

    add-int/2addr v8, v0

    .line 143
    goto/16 :goto_0

    .line 146
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppState;->removeAppsButtonPref(Z)V

    .line 148
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    const/16 v5, -0x65

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->defaultHomeParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)I

    move-result v0

    add-int/2addr v8, v0

    .line 150
    goto/16 :goto_0

    .line 152
    :pswitch_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppState;->removeAppsButtonPref(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v4, 0x0

    const/16 v5, -0x65

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->defaultHomeParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)I

    move-result v0

    add-int/2addr v8, v0

    .line 155
    goto/16 :goto_0

    .line 164
    .restart local v13    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v13, v0, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 167
    .end local v2    # "tableName":Ljava/lang/String;
    .end local v3    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v9    # "depth":I
    .end local v11    # "existTag":Z
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    .end local v14    # "type":I
    :catch_0
    move-exception v10

    .line 168
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "Launcher.HomeRestore"

    const-string v1, "Got exception parsing restore favorites."

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->sIsEasyMode:Z

    if-nez v0, :cond_5

    .line 174
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 175
    .local v6, "cellXY":[I
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 176
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v4, 0x1

    aget v4, v6, v4

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    .line 179
    .end local v6    # "cellXY":[I
    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mIsRestoreVcf:Z

    if-eqz v0, :cond_6

    .line 180
    const-string v0, "Launcher.HomeRestore"

    const-string v1, "there is vcf file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.sec.android.intent.action.REQUEST_RESTORE_CONTACT_SHORTCUT"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v7, "contactIntent":Landroid/content/Intent;
    const-string v0, "FILE_PATH"

    sget-object v1, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->VCF_RESTORE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.permission.BACKUP_RESTORE_HOMESCREEN"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 186
    .end local v7    # "contactIntent":Landroid/content/Intent;
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->restoreAppWidgetIds()V

    move v0, v8

    .line 188
    goto/16 :goto_2

    .line 169
    :catch_1
    move-exception v10

    .line 170
    .local v10, "e":Ljava/io/IOException;
    const-string v0, "Launcher.HomeRestore"

    const-string v1, "Got exception parsing restore favorites."

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 137
    :sswitch_data_0
    .sparse-switch
        -0x3236c3b1 -> :sswitch_5
        -0x1cfcfed5 -> :sswitch_1
        0x30f4df -> :sswitch_0
        0x242deaf8 -> :sswitch_4
        0x418a73d2 -> :sswitch_3
        0x7e3a5b62 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
