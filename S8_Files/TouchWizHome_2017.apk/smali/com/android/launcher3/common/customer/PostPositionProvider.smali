.class public Lcom/android/launcher3/common/customer/PostPositionProvider;
.super Landroid/content/ContentProvider;
.source "PostPositionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;,
        Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;
    }
.end annotation


# static fields
.field private static final CALL_GRID_SIZE:Ljava/lang/String; = "gridSize"

.field public static final COL_APPS_ADD:Ljava/lang/String; = "isAppsAdd"

.field private static final COL_APPS_CELL_ORDER:Ljava/lang/String; = "appsCellOrder"

.field public static final COL_APPS_FOLDER_NAME:Ljava/lang/String; = "appsFolderName"

.field private static final COL_APPS_FORCE_ATOZ:Ljava/lang/String; = "appsForceAtoZ"

.field private static final COL_APPS_INDEX:Ljava/lang/String; = "appsIndex"

.field public static final COL_APPS_PRELOADED_FOLDER:Ljava/lang/String; = "isAppsPreloadedFolder"

.field public static final COL_COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final COL_HOME_ADD:Ljava/lang/String; = "isHomeAdd"

.field public static final COL_HOME_CELL_X:Ljava/lang/String; = "homeCellX"

.field public static final COL_HOME_CELL_Y:Ljava/lang/String; = "homeCellY"

.field public static final COL_HOME_FOLDER_NAME:Ljava/lang/String; = "homeFolderName"

.field public static final COL_HOME_INDEX:Ljava/lang/String; = "homeIndex"

.field private static final COL_HOME_NEW_PAGE:Ljava/lang/String; = "isHomeNewPage"

.field public static final COL_HOME_PRELOADED_FOLDER:Ljava/lang/String; = "isHomePreloadedFolder"

.field private static final COL_HOME_REPLACE:Ljava/lang/String; = "isHomeReplace"

.field private static final COL_HOME_SHORTCUT_ICON:Ljava/lang/String; = "homeShortcutIcon"

.field private static final COL_HOME_SHORTCUT_TITLE:Ljava/lang/String; = "homeShortcutTitle"

.field public static final COL_HOME_WIDGET_SPAN_X:Ljava/lang/String; = "homeWidgetSpanX"

.field public static final COL_HOME_WIDGET_SPAN_Y:Ljava/lang/String; = "homeWidgetSpanY"

.field public static final COL_ITEM_TYPE:Ljava/lang/String; = "itemType"

.field private static final COL_REMOVE_AFTER_POSITION:Ljava/lang/String; = "removeAfterPosition"

.field private static final COL_RESULT:Ljava/lang/String; = "result"

.field static final CONTENT_URI:Landroid/net/Uri;

.field static final DATABASE_NAME:Ljava/lang/String; = "postposition.db"

.field static final DATABASE_VERSION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final IDX_APPS_ADD:B = 0xet

.field private static final IDX_APPS_CELL_ORDER:B = 0x12t

.field private static final IDX_APPS_FOLDER_NAME:B = 0x10t

.field private static final IDX_APPS_FORCE_ATOZ:B = 0x13t

.field private static final IDX_APPS_INDEX:B = 0x11t

.field private static final IDX_APPS_PRELOADED_FOLDER:B = 0xft

.field private static final IDX_COMPONENT_NAME:B = 0x0t

.field private static final IDX_HOME_ADD:B = 0x2t

.field private static final IDX_HOME_CELL_X:B = 0x8t

.field private static final IDX_HOME_CELL_Y:B = 0x9t

.field private static final IDX_HOME_FOLDER_NAME:B = 0x4t

.field private static final IDX_HOME_INDEX:B = 0x7t

.field private static final IDX_HOME_NEW_PAGE:B = 0x5t

.field private static final IDX_HOME_PRELOADED_FOLDER:B = 0x3t

.field private static final IDX_HOME_REPLACE:B = 0x6t

.field private static final IDX_ITEM_TYPE:B = 0x1t

.field private static final IDX_REMOVE_AFTER_POSITION:B = 0x14t

.field private static final IDX_SHORTCUT_ICON:B = 0xdt

.field private static final IDX_SHORTCUT_TITLE:B = 0xct

.field private static final IDX_WIDGET_SPAN_X:B = 0xat

.field private static final IDX_WIDGET_SPAN_Y:B = 0xbt

.field static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.launcher.provider.PostPosition"

.field static final TABLE_NAME:Ljava/lang/String; = "PositionInfo"

.field private static final TAG:Ljava/lang/String; = "PostPositionProvider"

.field static final URL:Ljava/lang/String; = "content://com.sec.android.launcher.provider.PostPosition/PositionInfo"


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDBHelper:Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;

.field private mItemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

.field private mWhiteListApps:[Ljava/lang/String;

.field private mWidgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "content://com.sec.android.launcher.provider.PostPosition/PositionInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/customer/PostPositionProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    return-void
.end method

.method private getItemRecordFromCusor(Landroid/database/Cursor;)Lcom/android/launcher3/common/customer/ItemRecord;
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 269
    new-instance v0, Lcom/android/launcher3/common/customer/ItemRecord;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/customer/ItemRecord;-><init>(Ljava/lang/String;I)V

    .line 271
    .local v0, "itemRecord":Lcom/android/launcher3/common/customer/ItemRecord;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    move v1, v6

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomeAdded(Z)V

    .line 272
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomePreloadFolder(Z)V

    .line 273
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomeFolderName(Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3

    move v1, v6

    :goto_2
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_4

    move v2, v6

    :goto_3
    const/4 v3, 0x7

    .line 276
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 275
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomePosition(ZZIII)V

    .line 277
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/customer/ItemRecord;->setWidgetSpanXY(II)V

    .line 279
    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v1, v2, :cond_0

    .line 280
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/customer/ItemRecord;->setShortcutInfo(Ljava/lang/String;[BLandroid/content/Context;)V

    .line 283
    :cond_0
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_5

    move v1, v6

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsAdded(Z)V

    .line 284
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_6

    move v1, v6

    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsPreloadFolder(Z)V

    .line 285
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsFolderName(Ljava/lang/String;)V

    .line 286
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsPosition(II)V

    .line 288
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_7

    move v1, v6

    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsForceAtoZ(Z)V

    .line 289
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_8

    :goto_7
    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/customer/ItemRecord;->setRemoveAfterPosition(Z)V

    .line 291
    return-object v0

    :cond_1
    move v1, v7

    .line 271
    goto/16 :goto_0

    :cond_2
    move v1, v7

    .line 272
    goto/16 :goto_1

    :cond_3
    move v1, v7

    .line 275
    goto/16 :goto_2

    :cond_4
    move v2, v7

    goto/16 :goto_3

    :cond_5
    move v1, v7

    .line 283
    goto :goto_4

    :cond_6
    move v1, v7

    .line 284
    goto :goto_5

    :cond_7
    move v1, v7

    .line 288
    goto :goto_6

    :cond_8
    move v6, v7

    .line 289
    goto :goto_7
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "res":Landroid/os/Bundle;
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_1

    move-object v2, v1

    .line 490
    .end local v1    # "res":Landroid/os/Bundle;
    .local v2, "res":Landroid/os/Bundle;
    :goto_1
    return-object v2

    .line 472
    .end local v2    # "res":Landroid/os/Bundle;
    .restart local v1    # "res":Landroid/os/Bundle;
    :pswitch_0
    const-string v6, "gridSize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 481
    :pswitch_1
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 482
    .local v3, "xy":[I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 483
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    aput v4, v3, v5

    .line 484
    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    aput v4, v3, v7

    .line 486
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "res":Landroid/os/Bundle;
    invoke-direct {v1, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 487
    .restart local v1    # "res":Landroid/os/Bundle;
    const-string v4, "gridSize"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    move-object v2, v1

    .line 488
    .end local v1    # "res":Landroid/os/Bundle;
    .restart local v2    # "res":Landroid/os/Bundle;
    goto :goto_1

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x12f4cc67
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public dbInsertOrUpdate(Landroid/content/ContentValues;)J
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 494
    if-eqz p1, :cond_0

    const-string v5, "componentName"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 495
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error : attempting to insert null values"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 498
    :cond_1
    const/4 v2, 0x0

    .line 499
    .local v2, "update":Z
    const-string v5, "componentName"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "cn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT componentName FROM PositionInfo WHERE componentName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 504
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 505
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    move v2, v3

    .line 507
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 508
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_2
    if-eqz v2, :cond_4

    .line 513
    const-string v5, "PostPositionProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dbInsertAndCheck : updated - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v5, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "PositionInfo"

    const-string v7, "componentName=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {v5, v6, p1, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    .line 517
    :goto_1
    return-wide v4

    :cond_3
    move v2, v4

    .line 505
    goto :goto_0

    .line 516
    :cond_4
    const-string v3, "PostPositionProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dbInsertAndCheck : inserted - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "PositionInfo"

    invoke-virtual {v3, v4, v8, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->isAllowedCallingApp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0

    .line 380
    :cond_0
    const/4 v0, 0x0

    .line 381
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PositionInfo"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 382
    const-string v1, "PostPositionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method deleteItem(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmpName"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM PositionInfo WHERE componentName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public disableHomeNewPage(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE PositionInfo SET isHomeNewPage=0  WHERE homeIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isHomeNewPage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method getDatabaseHelper()Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDBHelper:Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDBHelper:Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDBHelper:Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;

    return-object v0
.end method

.method getItemRecord(Ljava/lang/String;Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;)Lcom/android/launcher3/common/customer/ItemRecord;
    .locals 7
    .param p1, "cmpName"    # Ljava/lang/String;
    .param p2, "itemType"    # Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_1

    .line 136
    const-string v4, "PostPositionProvider"

    const-string v5, "getItemRecord(), database isn\'t ready state."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    :goto_0
    return-object v3

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT componentName FROM PositionInfo WHERE itemType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    .line 146
    invoke-virtual {v5}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_2
    if-eqz v0, :cond_3

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v2    # "sql":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 167
    .restart local v0    # "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 168
    .restart local v2    # "sql":Ljava/lang/String;
    :try_start_1
    sget-object v4, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne p2, v4, :cond_5

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM PositionInfo WHERE componentName LIKE \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "itemType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND result=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 179
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    .line 180
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 181
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-gtz v4, :cond_6

    const/16 v4, 0xe

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-gtz v4, :cond_6

    .line 182
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    .line 183
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 155
    .end local v2    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "PostPositionProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasItem widget : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 172
    .restart local v2    # "sql":Ljava/lang/String;
    :cond_5
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM PositionInfo WHERE componentName=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "itemType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    invoke-virtual {p2}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 189
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getItemRecordFromCusor(Landroid/database/Cursor;)Lcom/android/launcher3/common/customer/ItemRecord;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    .line 191
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    invoke-virtual {v4}, Lcom/android/launcher3/common/customer/ItemRecord;->isValid()Z

    move-result v4

    if-nez v4, :cond_7

    .line 192
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    .line 193
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 202
    :cond_7
    if-eqz v0, :cond_8

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    if-eqz v3, :cond_9

    const-string v3, "PostPositionProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItemRecord() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    invoke-virtual {v5}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_9
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mItemRecord:Lcom/android/launcher3/common/customer/ItemRecord;

    goto/16 :goto_0

    .line 199
    :catch_1
    move-exception v1

    .line 200
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "PostPositionProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    if-eqz v0, :cond_8

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_a

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3
.end method

.method getItemRecordsNeedToPosition(Ljava/lang/String;)[Lcom/android/launcher3/common/customer/ItemRecord;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 241
    .local v3, "items":[Lcom/android/launcher3/common/customer/ItemRecord;
    const/4 v0, 0x0

    .line 243
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "SELECT * FROM PositionInfo WHERE result=0"

    .line 244
    .local v4, "sql":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND componentName LIKE \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 250
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v3, v5, [Lcom/android/launcher3/common/customer/ItemRecord;

    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, "cnt":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getItemRecordFromCusor(Landroid/database/Cursor;)Lcom/android/launcher3/common/customer/ItemRecord;

    move-result-object v5

    aput-object v5, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "cnt":I
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 265
    .end local v4    # "sql":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v3

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "PostPositionProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getItemRecordsNeedToPosition : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 260
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method hasItemRecord()Z
    .locals 7

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 223
    .local v2, "ret":Z
    :try_start_0
    const-string v3, "SELECT * FROM PositionInfo WHERE result=0"

    .line 224
    .local v3, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lez v4, :cond_0

    .line 226
    const/4 v2, 0x1

    .line 231
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 236
    .end local v3    # "sql":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "PostPositionProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasItemRecord : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 232
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method hasWidgetToAdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->isAllowedCallingApp()Z

    move-result v7

    if-nez v7, :cond_0

    .line 390
    const/4 v7, 0x0

    .line 441
    :goto_0
    return-object v7

    .line 393
    :cond_0
    const-string v7, "componentName"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 394
    const-string v7, "PostPositionProvider"

    const-string v10, "componentName key isn\'t exist!"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v7, 0x0

    goto :goto_0

    .line 398
    :cond_1
    const-string v7, "componentName"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "componentName":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 400
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 401
    const-string v7, "PostPositionProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uncorrect component name is requested."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v7, 0x0

    goto :goto_0

    .line 405
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "PositionInfo"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 406
    .local v4, "rowID":J
    const-string v7, "PostPositionProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", insert : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "componentName"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-lez v7, :cond_9

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v3

    .line 410
    .local v3, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-virtual {v3}, Lcom/android/launcher3/common/customer/PostPositionController;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 411
    invoke-virtual {v3}, Lcom/android/launcher3/common/customer/PostPositionController;->checkAndEnablePositioner()V

    .line 414
    :cond_3
    const-wide/16 v8, 0x0

    .line 415
    .local v8, "typeCode":J
    const-string v7, "itemType"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 416
    const-string v7, "itemType"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 419
    :cond_4
    sget-object v7, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v7}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    .line 420
    iget-object v7, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    if-nez v7, :cond_5

    .line 421
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    .line 423
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWidgetList:Ljava/util/ArrayList;

    const-string v10, "componentName"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 427
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 426
    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 428
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v7, "EMPTY_DATABASE_CREATED"

    const/4 v10, 0x0

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 429
    sget-object v7, Lcom/android/launcher3/common/customer/PostPositionProvider;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 432
    :cond_7
    const-string v7, "componentName"

    .line 433
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->values()[Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v10

    long-to-int v11, v8

    aget-object v10, v10, v11

    invoke-virtual {p0, v7, v10}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getItemRecord(Ljava/lang/String;Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;)Lcom/android/launcher3/common/customer/ItemRecord;

    move-result-object v2

    .line 434
    .local v2, "itemRecord":Lcom/android/launcher3/common/customer/ItemRecord;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/launcher3/common/customer/ItemRecord;->isHomeAdd()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 435
    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Lcom/android/launcher3/common/customer/ItemRecord;)V

    .line 438
    :cond_8
    sget-object v7, Lcom/android/launcher3/common/customer/PostPositionProvider;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 441
    .end local v2    # "itemRecord":Lcom/android/launcher3/common/customer/ItemRecord;
    .end local v3    # "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .end local v8    # "typeCode":J
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method isAllowedCallingApp()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 321
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWhiteListApps:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWhiteListApps:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWhiteListApps:[Ljava/lang/String;

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "callingPackageName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 343
    .end local v0    # "callingPackageName":Ljava/lang/String;
    :goto_0
    return v3

    .line 330
    .restart local v0    # "callingPackageName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 331
    .local v2, "isAllowedApp":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWhiteListApps:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 332
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mWhiteListApps:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    const/4 v2, 0x1

    .line 338
    :cond_3
    if-nez v2, :cond_5

    .line 339
    const-string v4, "PostPositionProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAPP doesn\'t alllow to insert item for your app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    .end local v0    # "callingPackageName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "isAllowedApp":Z
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 348
    const-string v3, "PostPositionProvider"

    const-string v4, "Provider onCreated."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 352
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 355
    new-instance v1, Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 357
    .local v1, "dbHelper":Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;
    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/PostPositionProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 359
    invoke-static {v0}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v2

    .line 360
    .local v2, "ppController":Lcom/android/launcher3/common/customer/PostPositionController;
    invoke-virtual {v2, p0}, Lcom/android/launcher3/common/customer/PostPositionController;->setProvider(Lcom/android/launcher3/common/customer/PostPositionProvider;)V

    .line 361
    new-instance v3, Lcom/android/launcher3/home/PostHomePositioner;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/launcher3/home/PostHomePositioner;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/customer/PostPositionController;->registerPositioner(Lcom/android/launcher3/common/customer/PostPositionerBase;)V

    .line 362
    new-instance v3, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/launcher3/allapps/controller/PostAppsPositioner;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/customer/PostPositionProvider;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/customer/PostPositionController;->registerPositioner(Lcom/android/launcher3/common/customer/PostPositionerBase;)V

    .line 363
    invoke-virtual {v2}, Lcom/android/launcher3/common/customer/PostPositionController;->checkAndEnablePositioner()V

    .line 365
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # [Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 446
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 447
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "PositionInfo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 451
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 454
    :cond_0
    return-object v8
.end method

.method resetItem(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmpName"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE PositionInfo SET result=0 WHERE componentName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionProvider;->isAllowedCallingApp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 466
    :goto_0
    return v0

    .line 463
    :cond_0
    const/4 v0, 0x0

    .line 464
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PositionInfo"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 465
    const-string v1, "PostPositionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateItemRecordResult(ZLjava/lang/String;)V
    .locals 3
    .param p1, "result"    # Z
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE PositionInfo SET result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "componentName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    return-void

    .line 213
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method