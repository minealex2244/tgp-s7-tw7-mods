.class public Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppsParser"
.end annotation


# instance fields
.field protected mIsRestore:Z

.field final synthetic this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser$1;)V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mIsRestore:Z

    return-void
.end method


# virtual methods
.method protected getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 408
    const-string v0, "DefaultLayoutParser"

    const-string v1, "Skipping invalid <favorite> with no component"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string v9, "packageName"

    invoke-static {p1, v9}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "packageName":Ljava/lang/String;
    const-string v9, "className"

    invoke-static {p1, v9}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "className":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 347
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 348
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 349
    const-wide/16 v10, -0x1

    .line 400
    .end local v1    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-wide v10

    .line 352
    .restart local v1    # "cn":Landroid/content/ComponentName;
    :cond_0
    const-string v5, ""

    .line 353
    .local v5, "title":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mIsRestore:Z

    if-nez v9, :cond_3

    invoke-static {v3, v0}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->isAutoInstallApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 354
    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v9, v9, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v10, "restored"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    :cond_1
    :goto_1
    const-string v9, "hidden"

    invoke-static {p1, v9}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 396
    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v9, v9, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v10, "hidden"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    const/4 v10, 0x0

    invoke-virtual {v9, p2, v5, v1, v10}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->addApps(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;I)J

    move-result-wide v10

    goto :goto_0

    .line 355
    :cond_3
    iget-boolean v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mIsRestore:Z

    if-nez v9, :cond_4

    # getter for: Lcom/android/launcher3/common/model/DefaultLayoutParser;->sOmcAutoInstallApp:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 356
    # getter for: Lcom/android/launcher3/common/model/DefaultLayoutParser;->sOmcAutoInstallApp:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 357
    # getter for: Lcom/android/launcher3/common/model/DefaultLayoutParser;->sOmcAutoInstallApp:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;

    .line 358
    .local v6, "update":Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;
    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v9, v9, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v10, "restored"

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v9, v9, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v10, "icon"

    iget-object v11, v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->icon:[B

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 360
    iget-object v5, v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->title:Ljava/lang/String;

    .line 361
    const-string v9, "DefaultLayoutParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update omc title and icon "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->iconPackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " title = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 364
    .end local v6    # "update":Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;
    :cond_4
    const-string v9, "true"

    const-string v10, "postPosition"

    invoke-static {p1, v10}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 366
    .local v8, "usePostPosition":Z
    if-eqz v8, :cond_1

    .line 367
    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v9, v9, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v9, v3}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v7, 0x1

    .line 368
    .local v7, "updateToSAPP":Z
    :goto_2
    if-nez v7, :cond_5

    .line 370
    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v10

    # invokes: Lcom/android/launcher3/common/model/DefaultLayoutParser;->getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-static {v9, v1, v10}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$200(Lcom/android/launcher3/common/model/DefaultLayoutParser;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v9

    if-nez v9, :cond_5

    .line 371
    const/4 v7, 0x1

    .line 375
    :cond_5
    if-eqz v7, :cond_1

    .line 377
    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mFolderTitle:Ljava/lang/String;

    if-eqz v9, :cond_1

    const-string v9, ""

    iget-object v10, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mFolderTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 378
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 379
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v9, "componentName"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v9, "itemType"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v9, "isAppsAdd"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 383
    const-string v9, "isAppsPreloadedFolder"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 384
    const-string v9, "appsFolderName"

    iget-object v10, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->mFolderTitle:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v9, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v9, v9, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v4

    .line 387
    .local v4, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-virtual {v4}, Lcom/android/launcher3/common/customer/PostPositionController;->getProvider()Lcom/android/launcher3/common/customer/PostPositionProvider;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/customer/PostPositionProvider;->dbInsertOrUpdate(Landroid/content/ContentValues;)J

    .line 389
    const-wide/16 v10, -0x1

    goto/16 :goto_0

    .line 367
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    .end local v7    # "updateToSAPP":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 400
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v5    # "title":Ljava/lang/String;
    .end local v8    # "usePostPosition":Z
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppsParser;->invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v10

    goto/16 :goto_0
.end method
