.class public Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;
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
    name = "AppShortcutParser"
.end annotation


# instance fields
.field protected mIsRestore:Z

.field final synthetic this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$FolderTagInfo;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser$1;)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mIsRestore:Z

    return-void
.end method


# virtual methods
.method protected getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 331
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v0, "DefaultLayoutParser"

    const-string v1, "Skipping invalid <favorite> with no component"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v15, "packageName"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "packageName":Ljava/lang/String;
    const-string v15, "className"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "className":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v4}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->getComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 246
    .local v5, "cn":Landroid/content/ComponentName;
    if-nez v5, :cond_0

    .line 247
    const-wide/16 v16, -0x1

    .line 317
    .end local v5    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-wide v16

    .line 250
    .restart local v5    # "cn":Landroid/content/ComponentName;
    :cond_0
    const-string v11, ""

    .line 251
    .local v11, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mIsRestore:Z

    if-nez v15, :cond_3

    invoke-static {v8, v4}, Lcom/android/launcher3/common/model/AutoInstallsLayout;->isAutoInstallApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 252
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v15, v15, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v16, "restored"

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    :cond_1
    :goto_1
    const-string v15, "hidden"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v15, v15, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v16, "hidden"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v15, v15, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v16, "screen"

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    :cond_2
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v16, "android.intent.category.LAUNCHER"

    .line 312
    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 313
    invoke-virtual {v15, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v15

    const/high16 v16, 0x10200000

    .line 314
    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 315
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v15, v0, v11, v7, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->addShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v16

    goto :goto_0

    .line 253
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mIsRestore:Z

    if-nez v15, :cond_4

    # getter for: Lcom/android/launcher3/common/model/DefaultLayoutParser;->sOmcAutoInstallApp:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 254
    # getter for: Lcom/android/launcher3/common/model/DefaultLayoutParser;->sOmcAutoInstallApp:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 255
    # getter for: Lcom/android/launcher3/common/model/DefaultLayoutParser;->sOmcAutoInstallApp:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$100()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;

    .line 256
    .local v12, "update":Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v15, v15, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v16, "restored"

    const/16 v17, 0x20

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v15, v15, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v16, "icon"

    iget-object v0, v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->icon:[B

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 258
    iget-object v11, v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->title:Ljava/lang/String;

    .line 259
    const-string v15, "DefaultLayoutParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update omc title and icon "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->iconPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " title = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v12, Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 262
    .end local v12    # "update":Lcom/android/launcher3/common/model/DefaultLayoutParser$IconTitleValue;
    :cond_4
    const-string v15, "true"

    const-string v16, "postPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 264
    .local v14, "usePostPosition":Z
    if-eqz v14, :cond_1

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v15, v15, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v15, v8}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    const/4 v13, 0x1

    .line 266
    .local v13, "updateToSAPP":Z
    :goto_2
    if-nez v13, :cond_5

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/launcher3/common/model/DefaultLayoutParser;->getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-static {v15, v5, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->access$200(Lcom/android/launcher3/common/model/DefaultLayoutParser;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v15

    if-nez v15, :cond_5

    .line 269
    const/4 v13, 0x1

    .line 273
    :cond_5
    if-eqz v13, :cond_1

    .line 274
    const-string v15, "x"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "cellX":Ljava/lang/String;
    const-string v15, "y"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "cellY":Ljava/lang/String;
    const-string v15, "screen"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 278
    .local v10, "screen":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v15, "componentName"

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v15, "itemType"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v15, "isHomeAdd"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderTitle:Ljava/lang/String;

    if-eqz v15, :cond_8

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 284
    const-string v15, "isHomePreloadedFolder"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 285
    const-string v15, "homeFolderName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderScreen:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderCellX:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderCellY:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 288
    const-string v15, "homeIndex"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderScreen:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v15, "homeCellX"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderCellX:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v15, "homeCellY"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->mFolderCellY:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->this$0:Lcom/android/launcher3/common/model/DefaultLayoutParser;

    iget-object v15, v15, Lcom/android/launcher3/common/model/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v9

    .line 299
    .local v9, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-virtual {v9}, Lcom/android/launcher3/common/customer/PostPositionController;->getProvider()Lcom/android/launcher3/common/customer/PostPositionProvider;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/android/launcher3/common/customer/PostPositionProvider;->dbInsertOrUpdate(Landroid/content/ContentValues;)J

    .line 301
    const-wide/16 v16, -0x1

    goto/16 :goto_0

    .line 265
    .end local v2    # "cellX":Ljava/lang/String;
    .end local v3    # "cellY":Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v9    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    .end local v10    # "screen":Ljava/lang/String;
    .end local v13    # "updateToSAPP":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 292
    .restart local v2    # "cellX":Ljava/lang/String;
    .restart local v3    # "cellY":Ljava/lang/String;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "screen":Ljava/lang/String;
    .restart local v13    # "updateToSAPP":Z
    :cond_8
    if-eqz v10, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 293
    const-string v15, "homeIndex"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v15, "homeCellX"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    const-string v15, "homeCellY"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 317
    .end local v2    # "cellX":Ljava/lang/String;
    .end local v3    # "cellY":Ljava/lang/String;
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v10    # "screen":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    .end local v13    # "updateToSAPP":Z
    .end local v14    # "usePostPosition":Z
    :cond_9
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;->invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v16

    goto/16 :goto_0
.end method
