.class public Lcom/android/launcher3/allapps/AppsBnrHelper;
.super Ljava/lang/Object;
.source "AppsBnrHelper.java"

# interfaces
.implements Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;


# static fields
.field static final APPS_VIEW_TYPE_ALPHABETIC:Ljava/lang/String; = "ALPHABETIC"

.field static final APPS_VIEW_TYPE_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field private static final TAG:Ljava/lang/String; = "Launcher.AppsBnr"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLauncherPrefix:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mLauncherPrefix:Z

    return-void
.end method

.method private backupApps(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Ljava/lang/String;
    .param p3, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 159
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container=-102 and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "selection":Ljava/lang/String;
    const-string v14, "screen, rank"

    .line 164
    .local v14, "sortOrder":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 165
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "screen, rank"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 167
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 168
    const-string v3, "Launcher.AppsBnr"

    const-string v5, "backupApps, fail to open cursor"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v3, 0x1

    move-object/from16 v0, p5

    iput v3, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    const-string v3, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object v9, v1

    move-object/from16 v10, p3

    move-object v11, v2

    move-object/from16 v12, p5

    .line 176
    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 178
    :catch_0
    move-exception v13

    .line 179
    .local v13, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p5

    iput v3, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 180
    const-string v3, "Launcher.AppsBnr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupApps Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 182
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 183
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private backupAppsGrid(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    const/4 v5, 0x1

    .line 135
    const/4 v2, 0x2

    :try_start_0
    new-array v0, v2, [I

    .line 136
    .local v0, "cellXY":[I
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 137
    const-string v2, "Launcher.AppsBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupAppsGrid x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    const/4 v2, 0x0

    const-string v3, "Rows_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const/4 v2, 0x0

    const-string v3, "Rows_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const/4 v2, 0x0

    const-string v3, "Columns_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const/4 v2, 0x0

    const-string v3, "Columns_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "cellXY":[I
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    iput v5, p2, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 152
    const-string v2, "Launcher.AppsBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupAppsGrid Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private backupAppsViewType(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 114
    :try_start_0
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "viewType":Ljava/lang/String;
    const-string v2, "Launcher.AppsBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupAppsViewType viewType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const/4 v2, 0x0

    const-string v3, "viewType_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "ALPHABETIC"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    :goto_0
    const/4 v2, 0x0

    const-string v3, "viewType_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    .end local v1    # "viewType":Ljava/lang/String;
    :goto_1
    return-void

    .line 124
    .restart local v1    # "viewType":Ljava/lang/String;
    :cond_0
    const-string v2, "CUSTOM"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1    # "viewType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p2, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 129
    const-string v2, "Launcher.AppsBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupAppsViewType Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private backupFolderItemById(JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Z)V
    .locals 23
    .param p1, "folderId"    # J
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "cr"    # Landroid/content/ContentResolver;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p8, "isLCExtractor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    .line 301
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "selection":Ljava/lang/String;
    const-string v7, "rank"

    .line 303
    .local v7, "sortOrder":Ljava/lang/String;
    const-string v8, ""

    .line 304
    .local v8, "attrPrefix":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 306
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 307
    const/4 v2, 0x1

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 308
    const-string v2, "Launcher.AppsBnr"

    const-string v3, "backupFolderItemById, fail to open cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 312
    :cond_0
    if-eqz p8, :cond_1

    .line 313
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mLauncherPrefix:Z

    invoke-static {v3, v4}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 317
    :cond_1
    new-instance v12, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v12, v11}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 319
    .local v12, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 320
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 321
    .local v17, "itemType":I
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 322
    .local v19, "rank":I
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 323
    .local v16, "intent":Ljava/lang/String;
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 324
    .local v14, "hidden":I
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 326
    .local v20, "restore":I
    if-nez v14, :cond_2

    if-nez v20, :cond_2

    .line 331
    const-string v2, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    const/4 v10, 0x0

    .line 333
    .local v10, "componentName":Landroid/content/ComponentName;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 336
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 340
    .local v15, "in":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 343
    .end local v15    # "in":Landroid/content/Intent;
    :cond_3
    const/16 v18, 0x0

    .line 344
    .local v18, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 345
    .local v9, "className":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 346
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 347
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 350
    :cond_4
    packed-switch v17, :pswitch_data_0

    goto :goto_1

    .line 352
    :pswitch_0
    if-eqz v10, :cond_2

    .line 355
    if-eqz p8, :cond_5

    .line 356
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    :cond_5
    const/4 v2, 0x0

    const-string v3, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "screen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 361
    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 364
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 368
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "className"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    :cond_7
    const-string v2, "SCLOUD"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 373
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 374
    .local v21, "restored":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "restored"

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    .end local v21    # "restored":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    const-string v3, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 384
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v14    # "hidden":I
    .end local v16    # "intent":Ljava/lang/String;
    .end local v17    # "itemType":I
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "rank":I
    .end local v20    # "restore":I
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 385
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 337
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v14    # "hidden":I
    .restart local v16    # "intent":Ljava/lang/String;
    .restart local v17    # "itemType":I
    .restart local v19    # "rank":I
    .restart local v20    # "restore":I
    :catch_0
    move-exception v13

    .line 338
    .local v13, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_1

    .line 384
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "e":Ljava/net/URISyntaxException;
    .end local v14    # "hidden":I
    .end local v16    # "intent":Ljava/lang/String;
    .end local v17    # "itemType":I
    .end local v19    # "rank":I
    .end local v20    # "restore":I
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 385
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_b
    const-string v2, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 25
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cr"    # Landroid/content/ContentResolver;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const-string v3, "LCExtractorApps"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 193
    .local v11, "isLCExtractor":Z
    const-string v2, ""

    .line 195
    .local v2, "attrPrefix":Ljava/lang/String;
    if-nez v11, :cond_3

    .line 196
    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :goto_0
    new-instance v14, Lcom/android/launcher3/common/model/CursorInfo;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 205
    .local v14, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_0
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 206
    .local v4, "id":J
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 207
    .local v19, "itemType":I
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 209
    .local v23, "screen":I
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 210
    .local v24, "title":Ljava/lang/String;
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 211
    .local v18, "intent":Ljava/lang/String;
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 212
    .local v16, "hidden":I
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 214
    .local v21, "restore":I
    if-nez v16, :cond_1

    if-eqz v21, :cond_4

    .line 290
    :cond_1
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    if-nez v11, :cond_2

    .line 293
    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    :cond_2
    return-void

    .line 199
    .end local v4    # "id":J
    .end local v14    # "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    .end local v16    # "hidden":I
    .end local v18    # "intent":Ljava/lang/String;
    .end local v19    # "itemType":I
    .end local v21    # "restore":I
    .end local v23    # "screen":I
    .end local v24    # "title":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mLauncherPrefix:Z

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 219
    .restart local v4    # "id":J
    .restart local v14    # "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    .restart local v16    # "hidden":I
    .restart local v18    # "intent":Ljava/lang/String;
    .restart local v19    # "itemType":I
    .restart local v21    # "restore":I
    .restart local v23    # "screen":I
    .restart local v24    # "title":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    .line 220
    .local v13, "componentName":Landroid/content/ComponentName;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 223
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 227
    .local v17, "in":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 230
    .end local v17    # "in":Landroid/content/Intent;
    :cond_5
    const/16 v20, 0x0

    .line 231
    .local v20, "packageName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 232
    .local v12, "className":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 233
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 234
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 237
    :cond_6
    if-eqz v11, :cond_b

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    :goto_2
    packed-switch v19, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 245
    :pswitch_1
    if-eqz v13, :cond_1

    .line 248
    if-eqz v11, :cond_7

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    :cond_7
    const/4 v3, 0x0

    const-string v6, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "screen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 255
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "packageName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    :cond_8
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 258
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "className"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    :cond_9
    const-string v3, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 262
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 263
    .local v22, "restored":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v6, "restored"

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-interface {v0, v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    .end local v22    # "restored":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    const-string v6, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 224
    .end local v12    # "className":Ljava/lang/String;
    .end local v20    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 225
    .local v15, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_1

    .line 240
    .end local v15    # "e":Ljava/net/URISyntaxException;
    .restart local v12    # "className":Ljava/lang/String;
    .restart local v20    # "packageName":Ljava/lang/String;
    :cond_b
    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 270
    :pswitch_2
    if-eqz v11, :cond_c

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " folder : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    :cond_c
    const/4 v3, 0x0

    const-string v6, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "screen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 277
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-interface {v0, v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 280
    invoke-direct/range {v3 .. v11}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupFolderItemById(JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Z)V

    .line 281
    if-eqz v11, :cond_e

    .line 282
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    :cond_e
    const/4 v3, 0x0

    const-string v6, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public backupCategory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    const-string v2, "appOrder"

    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 66
    const-string v2, "appOrder"

    .line 68
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 74
    const-string v0, "Launcher.AppsBnr"

    const-string v1, "backupLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "LCExtractorHome"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v0, "LCExtractorApps"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const-string v2, "appOrder"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupApps(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupAppsViewType(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 86
    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupAppsGrid(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 87
    const-string v2, "appOrder"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupApps(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 88
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v0, :cond_0

    .line 90
    const-string v2, "appOrder_easy"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupApps(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_0
.end method

.method public restoreLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "restoredTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 97
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    .line 98
    .local v0, "favoritesProvider":Lcom/android/launcher3/common/model/FavoritesProvider;
    if-nez v0, :cond_1

    .line 99
    const-string v2, "Launcher.AppsBnr"

    const-string v3, "FavoritesProvider.getInstance() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput v4, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v2, "Launcher.AppsBnr"

    const-string v3, "restoreLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/FavoritesProvider;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 107
    .local v1, "layoutParser":Lcom/android/launcher3/common/model/DefaultLayoutParser;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->restoreAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    move-result v2

    if-gez v2, :cond_0

    .line 108
    iput v4, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    goto :goto_0
.end method
