.class public Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser;
.source "AppsDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;,
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;,
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppAutoInstallParser;,
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;
    }
.end annotation


# static fields
.field static final CSC_PATH:Ljava/lang/String; = "/system/csc"

.field private static final OMC_ETC_PATH:Ljava/lang/String; = "/etc"

.field private static final TAG:Ljava/lang/String; = "AppsDefaultLayoutParser"

.field static final XML_APPORDER:Ljava/lang/String; = "/default_application_order.xml"

.field static final XML_APPORDER_GUEST:Ljava/lang/String; = "/default_application_order_guest.xml"

.field static final XML_APPORDER_KNOX:Ljava/lang/String; = "/default_application_order_knox.xml"


# instance fields
.field private OMC_PATH:Ljava/lang/String;

.field private mAppOrderPath:Ljava/lang/String;

.field private mAppOrderPathGuest:Ljava/lang/String;

.field private mAppOrderPathKnox:Ljava/lang/String;

.field private mAppsParseContainer:J

.field private mIsCSC:Z

.field private mIsGuest:Z

.field private mIsKnoxMode:Z

.field protected mRank:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;
    .param p4, "sourceRes"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 70
    const-string v6, "appOrder"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 55
    iput-object v8, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    .line 56
    iput-object v8, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    .line 57
    iput-object v8, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    .line 59
    iput-boolean v7, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z

    .line 60
    iput-boolean v7, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    .line 61
    iput-boolean v7, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    .line 63
    const-wide/16 v0, -0x66

    iput-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    .line 72
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_application_order.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_application_order.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_application_order_guest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_application_order_guest.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_application_order_knox.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_application_order_knox.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;
    .param p4, "sourceRes"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I
    .param p6, "rootTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 55
    iput-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    .line 59
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    .line 63
    const-wide/16 v0, -0x66

    iput-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    .param p1, "x1"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method


# virtual methods
.method protected defaultAppsParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p5, "container"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    .local p3, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .local p4, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 185
    .local v9, "startDepth":I
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    .line 188
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v9, :cond_2

    .line 189
    :cond_1
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 243
    :cond_2
    :goto_1
    return-void

    .line 193
    :cond_3
    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 199
    const-string v12, "appsGridInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 200
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 201
    .local v10, "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    if-eqz v10, :cond_0

    .line 202
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    goto :goto_0

    .line 207
    .end local v10    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    :cond_4
    const-string v12, "screen"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "screenStr":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 212
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 214
    .local v6, "screenId":J
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 215
    .restart local v10    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    if-nez v10, :cond_5

    .line 216
    const-string v12, "AppsDefaultLayoutParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring unknown element tag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    :cond_5
    const-wide/16 v12, -0x66

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    .line 221
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    .line 222
    .local v2, "newElementId":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-ltz v12, :cond_0

    .line 224
    const/16 v12, -0x66

    move/from16 v0, p5

    if-ne v0, v12, :cond_6

    if-eqz p4, :cond_6

    .line 225
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 226
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    .line 229
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-lez v12, :cond_0

    .line 232
    const-string v12, "reservedFolder"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "reservedFolder":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mContext:Landroid/content/Context;

    .line 235
    invoke-static {v12}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v12

    const-wide/16 v14, -0x66

    invoke-virtual {v12, v14, v15}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v4

    .line 236
    .local v4, "ppPref":Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    if-eqz v4, :cond_0

    .line 237
    const/4 v12, 0x1

    invoke-virtual {v4, v5, v2, v3, v12}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    goto/16 :goto_0
.end method

.method protected getFolderElementsMap()Ljava/util/HashMap;
    .locals 3
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
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
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
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppAutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppAutoInstallParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "appsGridInfo"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v0
.end method

.method protected parseLayout(Ljava/util/ArrayList;)I
    .locals 18
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
    const/4 v10, 0x0

    .line 112
    .local v10, "fileCheck":Ljava/io/File;
    const/4 v12, 0x0

    .line 114
    .local v12, "fileReader":Ljava/io/FileReader;
    invoke-static {}, Lcom/android/launcher3/Utilities;->isGuest()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    .line 115
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    .line 118
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    .line 119
    .local v9, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 120
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v2, :cond_2

    .line 121
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileCheck":Ljava/io/File;
    .local v11, "fileCheck":Ljava/io/File;
    move-object v10, v11

    .line 134
    .end local v11    # "fileCheck":Ljava/io/File;
    .restart local v10    # "fileCheck":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-lez v2, :cond_5

    .line 135
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v12    # "fileReader":Ljava/io/FileReader;
    .local v13, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 137
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 138
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v13

    .line 156
    .end local v13    # "fileReader":Ljava/io/FileReader;
    .restart local v12    # "fileReader":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRootTag:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v5

    .line 160
    .local v5, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v4, "favorites"

    const/16 v7, -0x66

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->defaultAppsParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    if-eqz v12, :cond_1

    .line 171
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 178
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    return v2

    .line 122
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mLayoutId:I

    if-nez v2, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    if-eqz v2, :cond_4

    .line 125
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    .end local v10    # "fileCheck":Ljava/io/File;
    .restart local v11    # "fileCheck":Ljava/io/File;
    if-eqz v11, :cond_3

    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-gtz v2, :cond_a

    .line 128
    :cond_3
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v11    # "fileCheck":Ljava/io/File;
    .restart local v10    # "fileCheck":Ljava/io/File;
    goto :goto_0

    .line 131
    :cond_4
    :try_start_6
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v10    # "fileCheck":Ljava/io/File;
    .restart local v11    # "fileCheck":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fileCheck":Ljava/io/File;
    .restart local v10    # "fileCheck":Ljava/io/File;
    goto :goto_0

    .line 142
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v2, :cond_6

    .line 143
    const v14, 0x7f070004

    .line 153
    .local v14, "resId":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_1

    .line 144
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "resId":I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mLayoutId:I

    if-eqz v2, :cond_7

    .line 146
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mLayoutId:I

    .restart local v14    # "resId":I
    goto :goto_3

    .line 147
    .end local v14    # "resId":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_8

    .line 148
    const v14, 0x7f070003

    .restart local v14    # "resId":I
    goto :goto_3

    .line 150
    .end local v14    # "resId":I
    :cond_8
    const v14, 0x7f070002

    .restart local v14    # "resId":I
    goto :goto_3

    .line 172
    .end local v14    # "resId":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    :catch_0
    move-exception v8

    .line 173
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 162
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v8

    .line 163
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_7
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 169
    if-eqz v12, :cond_1

    .line 171
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 172
    :catch_2
    move-exception v8

    .line 173
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 164
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 165
    .local v8, "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 169
    if-eqz v12, :cond_1

    .line 171
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    .line 172
    :catch_4
    move-exception v8

    .line 173
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 166
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    .line 167
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_6
    :try_start_b
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 169
    if-eqz v12, :cond_1

    .line 171
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_2

    .line 172
    :catch_6
    move-exception v8

    .line 173
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 169
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_7
    if-eqz v12, :cond_9

    .line 171
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 174
    :cond_9
    :goto_8
    throw v2

    .line 172
    :catch_7
    move-exception v8

    .line 173
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v4, "AppsDefaultLayoutParser"

    const-string v6, "Got exception parsing appOrder."

    invoke-static {v4, v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 169
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "fileCheck":Ljava/io/File;
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v11    # "fileCheck":Ljava/io/File;
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11    # "fileCheck":Ljava/io/File;
    .restart local v10    # "fileCheck":Ljava/io/File;
    goto :goto_7

    .end local v12    # "fileReader":Ljava/io/FileReader;
    .restart local v13    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v2

    move-object v12, v13

    .end local v13    # "fileReader":Ljava/io/FileReader;
    .restart local v12    # "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .line 166
    .end local v10    # "fileCheck":Ljava/io/File;
    .restart local v11    # "fileCheck":Ljava/io/File;
    :catch_8
    move-exception v8

    move-object v10, v11

    .end local v11    # "fileCheck":Ljava/io/File;
    .restart local v10    # "fileCheck":Ljava/io/File;
    goto :goto_6

    .end local v12    # "fileReader":Ljava/io/FileReader;
    .restart local v13    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v8

    move-object v12, v13

    .end local v13    # "fileReader":Ljava/io/FileReader;
    .restart local v12    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 164
    .end local v10    # "fileCheck":Ljava/io/File;
    .restart local v11    # "fileCheck":Ljava/io/File;
    :catch_a
    move-exception v8

    move-object v10, v11

    .end local v11    # "fileCheck":Ljava/io/File;
    .restart local v10    # "fileCheck":Ljava/io/File;
    goto :goto_5

    .end local v12    # "fileReader":Ljava/io/FileReader;
    .restart local v13    # "fileReader":Ljava/io/FileReader;
    :catch_b
    move-exception v8

    move-object v12, v13

    .end local v13    # "fileReader":Ljava/io/FileReader;
    .restart local v12    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 162
    .end local v10    # "fileCheck":Ljava/io/File;
    .restart local v11    # "fileCheck":Ljava/io/File;
    :catch_c
    move-exception v8

    move-object v10, v11

    .end local v11    # "fileCheck":Ljava/io/File;
    .restart local v10    # "fileCheck":Ljava/io/File;
    goto :goto_4

    .end local v12    # "fileReader":Ljava/io/FileReader;
    .restart local v13    # "fileReader":Ljava/io/FileReader;
    :catch_d
    move-exception v8

    move-object v12, v13

    .end local v13    # "fileReader":Ljava/io/FileReader;
    .restart local v12    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v10    # "fileCheck":Ljava/io/File;
    .restart local v11    # "fileCheck":Ljava/io/File;
    :cond_a
    move-object v10, v11

    .end local v11    # "fileCheck":Ljava/io/File;
    .restart local v10    # "fileCheck":Ljava/io/File;
    goto/16 :goto_0
.end method
